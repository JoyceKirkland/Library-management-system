package com.zy.ems.service;

import com.zy.ems.dao.recordsDAO;
import com.zy.ems.entity.Record;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class recordServiceImpl implements recordService{

    @Autowired
    private recordsDAO recordsDAO;//记录类dao接口

    //添加借书记录
    @Override
    public void addRecord_rent(String idNumber_result, String id) {
        recordsDAO.addRecord_rent(idNumber_result,id);
    }

    //查询所有记录
    @Override
    public List<Record> findAllrecords() {
        return recordsDAO.findAllrecords();
    }

    //显示所有记录
    @Override
    public List<Record> findRentRecord() {
        return recordsDAO.findRentRecord();
    }

    //还书
    @Override
    public void returnBook(String reader_idNumber, String bookName) {
        recordsDAO.returnBook(reader_idNumber,bookName);
    }

    //续借
    @Override
    public void renew_Book(String reader_idNumber, String bookName) {
        recordsDAO.renew_Book(reader_idNumber,bookName);
    }

    @Override
    public List<Record> findReadersRent(String idNumber) {
        return recordsDAO.findReadersRent(idNumber);
    }

//    @Override
//    public void returnBook(String bookName) {
//        recordsDAO.returnBook(bookName);
//        System.out.println("return");
//    }
}
