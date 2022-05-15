package com.zy.ems.controller;

import com.zy.ems.entity.Books;
import com.zy.ems.entity.Readers;
import com.zy.ems.service.booksService;
import com.zy.ems.service.readersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("readers")

public class Readerscontroller {

    @Autowired
    private readersService readersServide;//借阅者接口

//    //借书方法时的
//    @RequestMapping("/rentBook_mem")
//    @ResponseBody
//    public boolean rent_findUser(String idNumber_find, Model model){
//        Readers readers=readersServide.rentBook_mem(idNumber_find);
//        model.addAttribute("readers",readers);
//        if(readers!=null){
////            System.out.println(true);
//            return true;
//        }else {
//            return false;
//        }
//    }

    //添加借阅者
    @PostMapping("/readersAdd")
    public String readersAdd(Readers add_readers){
        //添加借阅者方法，参数为借阅者实体类
        readersServide.readersAdd(add_readers);
        //返回查询借阅者列表方法
        return "redirect:/readers/findAllreaders";
    }

    //查询所有借阅者方法
    @GetMapping("/findAllreaders")
    public String findAllreaders(Model model){
        //返回借阅者列表，用list存储
       List<Readers> find_all_readers=readersServide.findAllreaders();
       //向前台传送数据，使其跳转到jsp后可直接通过<td>#{find_all_readers}</td>获取数据
        model.addAttribute("find_all_readers",find_all_readers);
        //返回显示借阅者列表的jsp
       return "readers_list";
    }

    //查询单个借阅者信息-修改-仅显示
    @GetMapping("/changeReadersById")
    public String changeReadersById(String id,Model model){
        //返回单个借阅者信息，通过id查询
        Readers change_one_reader=readersServide.changeReadersById(id);
        //向前台传送数据
        model.addAttribute("change_one_reader",change_one_reader);
        //返回显示单个借阅者资料的jsp
        return "readers_modify";
    }

    //更新借阅者信息
    @PostMapping("/updateReader")
    public String updateReader(Readers reader){
        //调用接口中的更新借阅者方法
        readersServide.updateReader(reader);
        //返回显示所有借阅者的方法
        return "redirect:/readers/findAllreaders";
    }

    //删除一位借阅者
    @GetMapping("/deleteReaderById")
    public String deleteReaderById(String id){
        //调用删除方法，通过id作为条件删除
        readersServide.deleteReaderById(id);
        //返回显示所有借阅者的方法
        return "redirect:/readers/findAllreaders";
    }

}
