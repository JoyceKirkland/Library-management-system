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
public class Books {
    private Integer id;//书籍编号
    private String typeId;//书籍类型
    private String name;//书籍名称
    private float price;//书籍价格
    private String desc;//书籍简介
    private String pic;//书籍图片存放路径
    private String publish;//书籍出版社
    private String author;//书籍作者
    private Integer stock;//书籍数量
    private String address;//存放地址
}
