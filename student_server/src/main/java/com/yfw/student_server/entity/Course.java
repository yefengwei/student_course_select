package com.yfw.student_server.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

/**
 * @Auther: yfw
 * @Date: 2022/11/9 13:29
 * @Description: Course
 * @Version 1.0.0
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@Alias("Course")
public class Course {
    //课程id
    private Integer cid;
    //课程名称
    private String cname;
    //课程学分
    private Integer ccredit;
}
