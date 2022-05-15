package com.zy.ems.service;

import java.io.Reader;
import java.util.List;
import com.zy.ems.entity.Readers;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
//借阅者实体方法接口类
public interface readersService {
    //借书方法中的查询借阅者
    Readers rentBook_mem(String idNumber_find);

    //添加借阅者
    void readersAdd(Readers add_readers);

    //查询所有借阅者
    List<Readers> findAllreaders();

    //更新借阅者信息
    void updateReader(Readers reader);

    //更新借阅者-通过id显示原信息
    Readers changeReadersById(String id);

    //删除借阅者
    void deleteReaderById(String id);

    //借阅者登陆
    Readers readerLogin(String name, String pwd);

}
