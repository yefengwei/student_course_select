package com.yfw.student_server.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

/**
 * @Auther: yfw
 * @Date: 2022/11/10 16:55
 * @Description: CourseTeacher
 * @Version 1.0.0
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@Alias("CourseTeacher")
public class CourseTeacher {
    //表id
    private Integer ctid;
    //课程id
    private Integer cid;
    //教师名称
    private Integer tid;
    //学期
    private String term;
}
