package com.zy.ems.service;

import com.zy.ems.dao.booksDAO;
import com.zy.ems.dao.readersDAO;
import com.zy.ems.entity.Books;
import com.zy.ems.entity.Readers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Reader;
import java.util.List;

@Service
@Transactional
public class readersServiceImpl implements readersService{
    @Autowired
    private readersDAO readersDAO;//借阅者类dao接口

    //借书方法中的查询借阅者
    @Override
    public Readers rentBook_mem(String idNumber_find) {
        //返回dao中的查询借阅者方法
        return readersDAO.rentBook_mem(idNumber_find);
    }

    //添加借阅者
    @Override
    public void readersAdd(Readers add_readers) {
        readersDAO.readersAdd(add_readers);
    }

    //查询所有借阅者
    @Override
    public List<Readers> findAllreaders() {
        return readersDAO.findAllreaders();
    }

    //更新借阅者信息
    @Override
    public void updateReader(Readers reader) {
        readersDAO.updateReader(reader);
    }

    //更新借阅者-通过id显示原信息
    @Override
    public Readers changeReadersById(String id) {
        return readersDAO.changeReadersById(id);
    }

    //删除借阅者
    @Override
    public void deleteReaderById(String id) {
        readersDAO.deleteReaderById(id);
    }

    //借阅者登陆
    @Override
    public Readers readerLogin(String name, String pwd) {
        return readersDAO.readerLogin(name,pwd);
    }

}
