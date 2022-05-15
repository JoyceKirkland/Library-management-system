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
public class Record {
    private String id;//记录编号
    private String reader_idNumber;//借阅者编号
    private String bookName;//书籍名称
    private String rentDate;//借书日期
    private String backDate;//应还日期
    private String state;//状态：在借、续借、归还
    private String real_back_Date;//真实还书日期
}
