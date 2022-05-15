package com.zy.ems.controller;

import com.zy.ems.entity.Books;
import com.zy.ems.entity.Readers;
import com.zy.ems.service.booksService;
import com.zy.ems.service.readersService;
import com.zy.ems.service.recordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.awt.print.Book;
import java.util.List;

@Controller
@RequestMapping({"books", "readers"})
//@Service
//@Transactional
public class Bookscontroller {

    @Autowired
    private booksService booksService;//书籍接口

    @Autowired
    private readersService readersService;//借阅者接口

    @Autowired
    private recordService recordService;//借阅/归还记录接口

    //查询所有书籍-读者
    @GetMapping("/readers_findAllbooks")//客户端与服务端之间是读取操作
    public String readers_findAllbooks(Model model){
        //返回书籍列表
        List <Books> books= booksService.readers_findAllbooks();
        //向前台传送数据，使其跳转到jsp后可直接通过<td>#{books}</td>获取数据
        model.addAttribute("books",books);
        //返回书籍显示jsp
        return "reader-book_list";
    }

    //查询所有书籍-管理员
    @GetMapping("/findAllbooks")//客户端与服务端之间是读取操作
    public String findAllbooks(Model model){
        //返回书籍列表，用list存储
        List <Books> books= booksService.findAllbooks();
        //向前台传送数据，使其跳转到jsp后可直接通过<td>#{books}</td>获取数据
        model.addAttribute("books",books);
        //返回书籍显示jsp
        return "book_list";
    }

    //根据id查询书籍信息
    @GetMapping("/findById")//客户端与服务端之间是读取操作
    public String findById(String id,Model model){
        //返回单本书籍，通过id查找对应书籍
        Books one_book=booksService.findById(id);
        //向前台传送数据
        model.addAttribute("one_book",one_book);
        //返回书籍详情jsp
        return "book_details";
    }

    //根据id查询-修改页面-修改前的列出数据
    @GetMapping("/changeById")//客户端与服务端之间是读取操作
    public String changeById(String id,Model model){
        //返回单本书籍，通过id查找对应书籍，调用booksService中的changeById(id)方法
        Books change_one_book=booksService.changeById(id);
        //向前台传送数据
        model.addAttribute("change_one_book",change_one_book);
        //返回修改书籍jsp
        return "book_modify";
    }

    //更新书籍信息
    @PostMapping("/updateBook")//处理post请求，Post请求到达服务器后会修改服务器上的数据
    public String updateBook(Books change_book){
        //更新书籍信息方法，需要传入书籍类实体作为参数。
        booksService.updateBook(change_book);
        //重定向到显示所有书籍列表方法
        return "redirect:/books/findAllbooks";
    }

    //添加新书籍
    @PostMapping("/addBook")//处理post请求，Post请求到达服务器后会修改服务器上的数据
    public String addBook(Books add_book){
        //添加书籍信息方法，需要传入书籍类实体作为参数。
        booksService.addBook(add_book);
        //重定向到显示所有书籍列表方法
        return "redirect:/books/findAllbooks";
    }

    //删除一本书籍
    @GetMapping("/deleteById")//通过传入单独id的方式删除书籍，相当于查
    public String deleteById(String id){
        //删除书籍方法，参数是书籍编号
        booksService.deleteById(id);
        //重定向到显示所有书籍列表方法
        return "redirect:/books/findAllbooks";
    }

    //模糊查询
    @RequestMapping("/fuzzyQuery")
    public String fuzzyQuery(String find,Model model){
        //因为需要在整个表中搜索，所以返回的是数据列表，参数是输入的模糊字段，用list存储
        List <Books> find_fuzzy_book=booksService.fuzzyQuery(find);
        //向前台传送数据，使其跳转到jsp后可直接通过<td>#{find_fuzzy_book.属性}</td>获取数据
        model.addAttribute("find_fuzzy_book",find_fuzzy_book);
        //返回到显示书籍列表的jsp
        return "book_list";
    }

    //读者界面-模糊查询
    @RequestMapping("/reader_fuzzyQuery")
    public String reader_fuzzyQuery(String find,Model model){
        //因为需要在整个表中搜索，所以返回的是数据列表，参数是输入的模糊字段，用list存储
        List <Books> find_fuzzy_book=booksService.fuzzyQuery(find);
        //向前台传送数据，使其跳转到jsp后可直接通过<td>#{find_fuzzy_book.属性}</td>获取数据
        model.addAttribute("find_fuzzy_book",find_fuzzy_book);
        //返回到显示书籍列表的jsp
        return "reader-book_list";
    }

    //借书显示页面：需要书籍id
    //书籍id先用于页面显示书籍信息（与book_detail.jsp）一样
    @GetMapping("/rent_findById")
    public String rent_findById(String id,Model model){
        //返回单本书籍，通过id查找对应书籍
        Books rent_one_book=booksService.rent_findById(id);
        //向前台传送数据
        model.addAttribute("rent_one_book",rent_one_book);
        //返回书籍借阅jsp
        return "book_rent";
    }

    //图书借阅方法
    @RequestMapping("/rent_Book")
    @PostMapping("/addRecord_rent")
//    @GetMapping({"/findAllrecords", "/rentBook_mem"})
    @GetMapping("/rentBook_mem")
    public String rent_Book(String idNumber_find,String id,Model model){
        //查找借阅者是否存在，返回借阅者类
        Readers readers= readersService.rentBook_mem(idNumber_find);
        //向前台传送数据
        model.addAttribute("readers",readers);
        if(readers!=null){
            //书的库存-1
            booksService.rent_Book(id);
            //添加记录方法，参数为获取到的借阅者编号和书籍编号，状态为‘在借’
            recordService.addRecord_rent(readers.getIdNumber(),id);
        }else{
            //借阅失败，返回提示借阅失败的jsp
            return "rent_failed";
        }
        //借阅成功，返回借阅成功的jsp
        return "rent_ok";
    }
}
