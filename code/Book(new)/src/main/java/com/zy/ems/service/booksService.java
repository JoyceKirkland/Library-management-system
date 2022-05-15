package com.zy.ems.service;

import com.zy.ems.entity.Books;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
//书籍实体方法接口类
public interface booksService {
    //查询所有书籍方法
    List<Books> findAllbooks();

    //查询单个书籍方法
    Books findById(String id);

    //查询单个书籍方法-修改页面-仅显示
    Books changeById(String id);

    //修改单个书籍信息
    void updateBook(Books change_book);

    //添加新书籍
    void addBook(Books add_book);

    //删除书籍
    void deleteById(String id);

    //模糊查询
    List <Books> fuzzyQuery(String find);

    //读者界面-模糊查询
    List <Books> reader_fuzzyQuery(String find);

    //借书页面显示
    Books rent_findById(String id);

    //库存-1
    void rent_Book(String id);

    //库存+1
    void return_Book(String bookName);

    //读者查看图书列表
    List<Books> readers_findAllbooks();
}
