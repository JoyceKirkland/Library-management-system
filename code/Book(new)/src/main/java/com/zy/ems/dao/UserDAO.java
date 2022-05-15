package com.zy.ems.dao;

import com.zy.ems.entity.User;
import org.springframework.data.repository.query.Param;

import java.util.List;

//管理员实体类dao接口，用于绑定Mapper
public interface UserDAO {

    //管理员登陆方法
    User findByUsernameAndPwd(@Param("name") String name, @Param("pwd") String pwd);

    //展示所有管理员
    List<User> findAllUsers();

    //根据id查询管理员信息-修改页面
    User change_findUserById(String id);

    //根据id查询管理员信息
    User findUserById(String id);

    //更新管理员信息
    void updateUser(User change_user);

    //添加管理员
    void addUser(User add_user);

    //删除管理员
    void deleteUserById(String id);
}
