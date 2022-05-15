package com.zy.ems.controller;
import com.zy.ems.BookApplication;
import com.zy.ems.entity.Books;
import com.zy.ems.entity.Readers;
import com.zy.ems.entity.Record;
import com.zy.ems.entity.User;
import com.zy.ems.service.UserService;
import com.zy.ems.service.readersService;
import com.zy.ems.service.recordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.Reader;
import java.util.List;

@Controller
@RequestMapping("user")

public class Usercontroller{

    @Autowired
    private UserService userService;//管理员接口

    @Autowired
    private readersService readersService;//借阅者接口

    @Autowired
    private recordService recordService;//借阅者接口

//    @Autowired
//    private HttpSession session_set;

    //管理员登陆方法
    @RequestMapping("login")
    public String lonin(String name, String pwd, HttpSession session){
        //通过用户名密码查询用户是否存在，返回管理员实体类
        User user=userService.login(name,pwd);
        //登陆判断
        if(user!=null){
            //将user保存到session中
            session.setAttribute("user",user);
            //进入管理员管理界面
            //若权限为1，即用户为系统管理员，进入系统管理员界面
            if(user.getState().equals("系统管理员"))
            {
                return "redirect:../admin-index.jsp";
            }else{
                //若为普通图书管理员，则进入普通图书管理员界面
                return "redirect:../index.jsp";
            }
        }else{
            //判断user为空，用户名密码错误，则返回登陆失败的jsp
            return "redirect:../login_failed.jsp";
        }
    }

    //借阅者登陆方法
    @RequestMapping("/readerLogin")
    public String readerLogin(String name, String pwd,HttpSession session){
        //通过用户名密码查询用户是否存在，返回借阅者实体类
        Readers reader_user=readersService.readerLogin(name,pwd);
        //登陆判断
        if(reader_user!=null){
            //将reader_user保存到session中
            session.setAttribute("reader_user",reader_user);
//            session_set.setAttribute("reader_user",reader_user);
            //进入借阅者界面中的显示书籍列表方法
//            return "redirect:/books/readers_findAllbooks";
            return "redirect:../reader-index.jsp";
        }else{
            //判断reader为空，用户名密码错误，则返回登陆失败的jsp
            return "redirect:../login_failed.jsp";
        }
    }

    //展示所有管理员列表
    @GetMapping("/findAllUsers")//客户端与服务端之间是读取操作
    public String findAllUsers(Model model){
        //返回管理员列表，用list存储
        List<User> users= userService.findAllUsers();
        //向前台传送数据，使其跳转到jsp后可直接通过<td>#{users}</td>获取数据
        model.addAttribute("users",users);
        //返回管理员列表显示jsp
        return "librarian-list";
    }

    //根据id查询管理员信息-修改页面
    @GetMapping("/change_findUserById")//客户端与服务端之间是读取操作
    public String change_findUserById(String id,Model model){
        //返回一个管理员类，通过id查找对应书籍
        User change_one_user=userService.change_findUserById(id);
        //向前台传送数据
        model.addAttribute("change_one_user",change_one_user);
        //返回修改管理员jsp
        return "librarian-modify";
    }

    //根据id查询管理员信息
    @GetMapping("/findUserById")//客户端与服务端之间是读取操作
    public String findUserById(String id,Model model){
        //返回一个管理员类，通过id查找对应书籍
        User one_user=userService.findUserById(id);
        //向前台传送数据
        model.addAttribute("one_user",one_user);
        //返回修改管理员jsp
        return "librarian-details";
    }

    //更新管理员信息
    @PostMapping("/updateUser")//处理post请求，Post请求到达服务器后会修改服务器上的数据
    public String updateUser(User change_user){
        //更新管理员信息方法，需要传入管理员实体类作为参数。
        userService.updateUser(change_user);
        //重定向到显示所有管理员列表方法
        return "redirect:/user/findAllUsers";
    }

    //添加新管理员
    @PostMapping("/addUser")//处理post请求，Post请求到达服务器后会修改服务器上的数据
    public String addUser(User add_user){
        //添加管理员信息方法，需要传入书籍类实体作为参数。
        userService.addUser(add_user);
        //重定向到显示所有管理员列表方法
        return "redirect:/user/findAllUsers";
    }

    //删除一位管理员
    @GetMapping("/deleteUserById")
    public String deleteUserById(String id){
        //调用删除方法，通过id作为条件删除
        userService.deleteUserById(id);
        //返回显示所有借阅者的方法
        return "redirect:/user/findAllUsers";
    }

    //显示借阅者所有借阅记录
    @GetMapping("/findReadersRent")
    public String findReadersRent(HttpSession session,Model model){
        //调用session.getAttribute方法获取登陆借阅者信息
        Readers myself_readers=(Readers) session.getAttribute("reader_user");
        //若获取信息不为空
        if(myself_readers!=null)
        {
            //从借阅历史记录查询借阅列表
            List<Record> myself_rents=recordService.findReadersRent(myself_readers.getIdNumber());
            //向前台传送数据
            model.addAttribute("myself_rents",myself_rents);
            //返回借阅列表显示jsp
            return "readers_myself-rent_list";
        }else{
            //若获取信息为空，则返回到查找失败界面
            return "find-failed";
        }

    }
}
