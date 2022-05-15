package com.zy.ems.service;

import com.zy.ems.entity.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
//管理员实体方法接口类
public interface UserService {
    //管理员登陆类
    User login(String name,String pwd);

    //展示所有管理员列表
    List<User> findAllUsers();

    //根据id查询管理员-修改界面
    User change_findUserById(String id);

    //根据id查询管理员
    User findUserById(String id);

    //更新管理员信息
    void updateUser(User change_user);

    //添加管理员
    void addUser(User add_user);

    //删除一位管理员
    void deleteUserById(String id);
}
