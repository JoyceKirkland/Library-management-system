package com.zy.ems.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Accessors(chain = true)
public class Readers {

    private Integer id;//借阅者在数据库中的序号
    private String name;//借阅者名字
    private String pwd;//密码
    private String regdate;//添加日期
    private String tel;//电话
    private String idNumber;//编号（身份证号）

}
