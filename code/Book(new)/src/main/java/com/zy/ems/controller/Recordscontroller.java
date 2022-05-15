package com.zy.ems.controller;

import com.zy.ems.entity.Books;
import com.zy.ems.entity.Record;
import com.zy.ems.service.booksService;
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
import org.w3c.dom.css.Rect;

import java.util.List;

@Controller
@RequestMapping("record")
//@Service
//@Transactional
public class Recordscontroller {
    @Autowired
    private recordService recordService;//记录类接口

    @Autowired
    private booksService booksService;//书籍类接口


    //查询所有记录
    @GetMapping("/findAllrecords")
    public String findAllrecords(Model model){
        //返回记录列表，用list存储
        List<Record> records= recordService.findAllrecords();
        //向前台传送数据，使其跳转到jsp后可直接通过<td>#{records}</td>获取数据
        model.addAttribute("records",records);
//        System.out.println(records.get(3));
//        if(records!=null){
//            System.out.println("rent_list_ok");
//        }
        //返回显示所有记录的jsp
        return "rent_list";
    }

    //显示所有未还记录，用于归还方法
    @GetMapping("/findRentRecord")
    public String findRentRecord(Model model){
        //返回记录列表，用list存储
        List<Record> rent_records=recordService.findRentRecord();
        //向前台传送数据，使其跳转到jsp后可直接通过<td>#{rent_records}</td>获取数据
        model.addAttribute("rent_records",rent_records);
        //返回显示未还记录列表的jsp
        return "book_return";
    }

    //还书方法
    @RequestMapping({"/return_Book", "/returnBook"})
    public String return_Book(String reader_idNumber,String bookName){
        //先通过借阅者编号和书籍名称查询未还记录，将归还日期中的’未还‘改为还书日期（当天），同时将状态改为‘归还’
        recordService.returnBook(reader_idNumber,bookName);
        //同时书的库存+1
        booksService.return_Book(bookName);
        //返回显示未还记录的方法
        return "redirect:/record/findRentRecord";
    }

    //续借方法
    @RequestMapping("/renew_Book")
    public String renew_Book(String reader_idNumber,String bookName){
        //先通过借阅者编号和书籍名称查询未还记录，将应还日期延长一个月，同时将状态改为‘续借’
        recordService.renew_Book(reader_idNumber,bookName);
        //返回显示未还记录的方法
        return "redirect:/record/findRentRecord";
    }



}
