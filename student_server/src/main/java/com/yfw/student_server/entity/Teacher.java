package com.yfw.student_server.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

/**
 * @Auther: yfw
 * @Date: 2022/11/9 10:50
 * @Description: Teacher
 * @Version 1.0.0
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@Alias("Teacher")
public class Teacher {
    //教师id
    private Integer tid;
    //教师名称
    private String tname;
    //教师密码
    private String password;
}
