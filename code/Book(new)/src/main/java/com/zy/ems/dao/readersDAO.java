package com.zy.ems.dao;

import java.io.Reader;
import java.util.List;
import com.zy.ems.entity.Readers;
import org.springframework.data.repository.query.Param;

//借阅者实体类dao接口，用于绑定Mapper
public interface readersDAO {

    //通过借阅者编号查询借阅者
    Readers rentBook_mem(String idNumber_find);

    //添加借阅者
    void readersAdd(Readers add_readers);

    //查询所有借阅者
    List<Readers> findAllreaders();

    //更新借阅者信息
    void updateReader(Readers reader);

    //用于更新借阅者方法-通过id显示被更新借阅者信息的查询显示
    Readers changeReadersById(String id);

    //删除借阅者
    void deleteReaderById(String id);

    //借阅者登陆方法
    Readers readerLogin(@Param("name")String name, @Param("pwd")String pwd);

}
