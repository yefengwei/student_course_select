-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        10.11.0-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 studentms 的数据库结构
CREATE DATABASE IF NOT EXISTS `studentms` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `studentms`;

-- 导出  表 studentms.course 结构
CREATE TABLE IF NOT EXISTS `course` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) NOT NULL,
  `ccredit` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='课程表';

-- 正在导出表  studentms.course 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`cid`, `cname`, `ccredit`) VALUES
	(7, '数据结构', 6),
	(8, '组合数学', 3),
	(9, '计算机网络', 5),
	(10, '计算机组成原理', 5),
	(11, 'RJC教你做选课系统', 10),
	(12, 'test说', 22);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;

-- 导出  表 studentms.course_teacher 结构
CREATE TABLE IF NOT EXISTS `course_teacher` (
  `ctid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `term` varchar(30) NOT NULL,
  PRIMARY KEY (`ctid`),
  KEY `cid` (`cid`),
  KEY `tid` (`tid`),
  CONSTRAINT `course_teacher_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `course` (`cid`),
  CONSTRAINT `course_teacher_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='课程-教师关系表';

-- 正在导出表  studentms.course_teacher 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `course_teacher` DISABLE KEYS */;
INSERT INTO `course_teacher` (`ctid`, `cid`, `tid`, `term`) VALUES
	(5, 8, 4, '22-春季学期'),
	(6, 7, 4, '22-春季学期'),
	(7, 10, 13, '22-春季学期'),
	(8, 9, 13, '22-春季学期'),
	(9, 11, 4, '22-春季学期'),
	(10, 9, 4, '22-春季学期');
/*!40000 ALTER TABLE `course_teacher` ENABLE KEYS */;

-- 导出  表 studentms.student 结构
CREATE TABLE IF NOT EXISTS `student` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COMMENT='学生表';

-- 正在导出表  studentms.student 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`sid`, `sname`, `password`) VALUES
	(1, 'yfw', '1234567'),
	(2, 'ltt', '123'),
	(3, 'zsk', '1234'),
	(4, 'ljx', '123456'),
	(6, 'ly', '123'),
	(7, 'czp', '12345'),
	(8, 'yyj', '123'),
	(9, 'llq', '10086'),
	(10, 'lyx', '10085'),
	(14, 'zsk', '123'),
	(21, 'zwb', '123'),
	(22, 'mgn', '1234'),
	(23, 'cjp', '123');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- 导出  表 studentms.student_course_teacher 结构
CREATE TABLE IF NOT EXISTS `student_course_teacher` (
  `sctid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `grade` float DEFAULT NULL,
  `term` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sctid`),
  KEY `sid` (`sid`),
  KEY `tid` (`tid`),
  KEY `cid` (`cid`),
  CONSTRAINT `student_course_teacher_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`),
  CONSTRAINT `student_course_teacher_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `course_teacher` (`tid`),
  CONSTRAINT `student_course_teacher_ibfk_3` FOREIGN KEY (`cid`) REFERENCES `course_teacher` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='课程成绩表';

-- 正在导出表  studentms.student_course_teacher 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `student_course_teacher` DISABLE KEYS */;
INSERT INTO `student_course_teacher` (`sctid`, `sid`, `cid`, `tid`, `grade`, `term`) VALUES
	(10, 2, 8, 4, 2, '22-春季学期'),
	(11, 2, 10, 13, NULL, '22-春季学期'),
	(12, 2, 7, 4, 5, '22-春季学期'),
	(13, 4, 8, 4, 10, '22-春季学期'),
	(14, 4, 7, 4, NULL, '22-春季学期'),
	(15, 4, 10, 13, NULL, '22-春季学期'),
	(16, 1, 8, 4, NULL, '22-春季学期'),
	(17, 1, 10, 13, NULL, '22-春季学期');
/*!40000 ALTER TABLE `student_course_teacher` ENABLE KEYS */;

-- 导出  表 studentms.teacher 结构
CREATE TABLE IF NOT EXISTS `teacher` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COMMENT='教师表';

-- 正在导出表  studentms.teacher 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` (`tid`, `tname`, `password`) VALUES
	(4, '莫教', '1234'),
	(6, 'admin', '123'),
	(13, '张三', '123'),
	(14, '李四', '12334');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
