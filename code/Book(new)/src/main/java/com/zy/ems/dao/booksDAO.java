package com.zy.ems.dao;

import com.zy.ems.entity.Books;

import java.util.List;

//书籍实体类dao接口，用于绑定Mapper
public interface booksDAO {

    //查询所有书籍
    List<Books> findAllbooks();

    //显示书籍详情(根据id查找)
    Books findById(String id);

    //修改书籍页面-仅显示
    Books changeById(String id);

    //修改书籍
    void updateBook(Books change_book);

    //添加书籍
    void addBook(Books add_book);

    //删除书籍
    void deleteById(String id);

    //模糊查询
    List <Books> fuzzyQuery(String find);

    //用于借阅方法-通过id查找被借阅书籍
    Books rent_findById(String id);

    //库存-1
    void rent_Book(String id);

    //库存+1
    void return_Book(String bookName);

    //读者界面-查询所有书籍
    List<Books> readers_findAllbooks();

    //读者界面-模糊查询
    List<Books> reader_fuzzyQuery(String find);
}
