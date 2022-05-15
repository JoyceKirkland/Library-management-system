package com.zy.ems.dao;

import java.util.List;
import com.zy.ems.entity.Record;
import org.springframework.data.repository.query.Param;

//记录实体类dao接口，用于绑定Mapper
public interface recordsDAO {
    //添加借阅记录
    void addRecord_rent(String idNumber_result, String id);

    //显示所有记录
    List<Record> findAllrecords();

    //更新归还记录
//    void addRecord_return(String idNumber_result);

    //查询所有借阅记录
    List<Record> findRentRecord();

    //还书记录更新
    void returnBook(String reader_idNumber,String bookName);

    //续借书籍记录更新
    void renew_Book(String reader_idNumber, String bookName);

    List<Record> findReadersRent(String idNumber);
//    void returnBook(String bookName);

}
