package com.zy.ems.service;

import com.zy.ems.entity.User;
import com.zy.ems.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDAO userDAO;//管理员类dao接口

    //管理员登陆
    @Override
    public User login(String name,String pwd){
        return userDAO.findByUsernameAndPwd(name,pwd);
    }

    //显示所有管理员
    @Override
    public List<User> findAllUsers() {
        return userDAO.findAllUsers();
    }
    //根据id查询管理员信息-修改页面
    @Override
    public User change_findUserById(String id) {
        return userDAO.change_findUserById(id);
    }

    //根据id查询管理员信息
    @Override
    public User findUserById(String id) {
        return userDAO.findUserById(id);
    }

    //更新管理员信息
    @Override
    public void updateUser(User change_user) {
        userDAO.updateUser(change_user);
    }

    //添加管理员
    @Override
    public void addUser(User add_user) {
        userDAO.addUser(add_user);
    }

    //删除管理员
    @Override
    public void deleteUserById(String id) {
        userDAO.deleteUserById(id);
    }

}
