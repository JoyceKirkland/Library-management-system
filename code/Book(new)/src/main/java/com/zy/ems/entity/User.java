package com.zy.ems.entity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class User {
    private Integer id;//管理员id
    private String name;//管理员用户名
    private String pwd;//管理员用户密码
    private String state;//管理员权限
}