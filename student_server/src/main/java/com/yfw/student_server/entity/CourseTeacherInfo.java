package com.yfw.student_server.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

/**
 * @Auther: yfw
 * @Date: 2022/11/10 18:45
 * @Description: CourseTeacherInfo
 * @Version 1.0.0
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@Alias("CourseTeacherInfo")
public class CourseTeacherInfo {
    //课程id
    private Integer cid;
    //教师id
    private Integer tid;
    //课程名称
    private String cname;
    //教师名称
    private String tname;
    //课程学分
    private Integer ccredit;
    //成绩
    private Float grade;
}
