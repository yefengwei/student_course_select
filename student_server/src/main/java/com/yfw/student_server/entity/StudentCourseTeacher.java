package com.yfw.student_server.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

/**
 * @Auther: yfw
 * @Date: 2022/11/10 19:57
 * @Description: StudentCourseTeacher
 * @Version 1.0.0
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@Alias("StudentCourseTeacher")
public class StudentCourseTeacher {
    //id
    private Integer sctid;
    //学生id
    private Integer sid;
    //课程id
    private Integer cid;
    //教师id
    private Integer tid;
    //学分
    private Float grade;
    //学期
    private String term;
}
