package com.zy.ems.service;

import com.zy.ems.dao.booksDAO;
import com.zy.ems.entity.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
//书籍接口实现类
public class booksServiceImpl implements booksService{

    @Autowired
    private booksDAO booksdao;//书籍类dao接口

    //查询所有书籍
    @Override
    public List<Books> findAllbooks(){
        //返回dao中的查询所有书籍方法
        return booksdao.findAllbooks();
    }

    //显示书籍详情(根据id查找)
    @Override
    public Books findById(String id){
        //返回dao中的查询所有显示书籍详情方法
        return booksdao.findById(id);
    }

    //查询单个书籍方法-修改页面-仅显示
    @Override
    public Books changeById(String id) {
        return booksdao.changeById(id);
    }

    //修改单个书籍信息
    @Override
    public void updateBook(Books change_book){
        //调用dao中的查询所有显示书籍详情方法
        booksdao.updateBook(change_book);
    }

    //添加书籍
    @Override
    public void addBook(Books add_book){
        booksdao.addBook(add_book);
    }

    //删除书籍
    @Override
    public void deleteById(String id) {
        booksdao.deleteById(id);
    }

    //模糊查询
    @Override
    public List <Books> fuzzyQuery(String find) {
       return booksdao.fuzzyQuery(find);
    }

    //读者界面-模糊查询
    @Override
    public List<Books> reader_fuzzyQuery(String find) {
        return booksdao.reader_fuzzyQuery(find);
    }

    //借书页面显示
    @Override
    public Books rent_findById(String id){
        return booksdao.rent_findById(id);
    }

    //借书方法中的库存-1
    @Override
    public void rent_Book(String id) {
        booksdao.rent_Book(id);
    }

    //还书方法中的库存+1
    @Override
    public void return_Book(String bookName) {
        booksdao.return_Book(bookName);
    }

    //借阅者页面中的显示所有书籍方法
    @Override
    public List<Books> readers_findAllbooks() {
            return booksdao.readers_findAllbooks();
    }

}
