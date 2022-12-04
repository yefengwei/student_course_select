package com.yfw.student_server.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

/**
 * @Auther: yfw
 * @Date: 2022/11/11 11:14
 * @Description: SCTInfo
 * @Version 1.0.0
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@Alias("SCTInfo")
public class SCTInfo {
    //id
    private Integer sid;
    //教师id
    private Integer tid;
    //课程id
    private Integer cid;
    //学生名称
    private String sname;
    //教师名称
    private String tname;
    //教师名称
    private String cname;
    //学分
    private Float grade;
    //学期
    private String term;
}
