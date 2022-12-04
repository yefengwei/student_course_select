package com.yfw.student_server.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

/**
 * @Auther: yfw
 * @Date: 2022/11/8 16:11
 * @Description: Student
 * @Version 1.0.0
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@Alias("Student")
public class Student {
    //学生id
    private Integer sid;
    //学生名称
    private String sname;
    //账户密码
    private String password;
}
