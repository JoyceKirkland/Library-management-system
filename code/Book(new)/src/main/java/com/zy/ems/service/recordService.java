package com.zy.ems.service;

import com.zy.ems.entity.Books;
import com.zy.ems.entity.Record;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
//记录实体方法接口类
public interface recordService {
    //添加借书记录
    void addRecord_rent(String idNumber_result, String id);

    //查询所有记录方法
    List<Record> findAllrecords();

    //查询所有未归还记录
    List<Record> findRentRecord();

    //还书
    void returnBook(String reader_idNumber, String bookName);

    //续借
    void renew_Book(String reader_idNumber, String bookName);

    List<Record> findReadersRent(String idNumber);

//    void returnBook(String bookName);

}
