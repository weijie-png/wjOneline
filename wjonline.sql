/*
 Navicat Premium Data Transfer

 Source Server         : wjmysql
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : wjonline

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 13/11/2020 09:05:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add Bookmark', 6, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (22, 'Can change Bookmark', 6, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (23, 'Can delete Bookmark', 6, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (24, 'Can view Bookmark', 6, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (25, 'Can add User Setting', 7, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (26, 'Can change User Setting', 7, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (27, 'Can delete User Setting', 7, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (28, 'Can view User Setting', 7, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (29, 'Can add User Widget', 8, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (30, 'Can change User Widget', 8, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (31, 'Can delete User Widget', 8, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (32, 'Can view User Widget', 8, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (33, 'Can add log entry', 9, 'add_log');
INSERT INTO `auth_permission` VALUES (34, 'Can change log entry', 9, 'change_log');
INSERT INTO `auth_permission` VALUES (35, 'Can delete log entry', 9, 'delete_log');
INSERT INTO `auth_permission` VALUES (36, 'Can view log entry', 9, 'view_log');
INSERT INTO `auth_permission` VALUES (37, 'Can add revision', 10, 'add_revision');
INSERT INTO `auth_permission` VALUES (38, 'Can change revision', 10, 'change_revision');
INSERT INTO `auth_permission` VALUES (39, 'Can delete revision', 10, 'delete_revision');
INSERT INTO `auth_permission` VALUES (40, 'Can view revision', 10, 'view_revision');
INSERT INTO `auth_permission` VALUES (41, 'Can add version', 11, 'add_version');
INSERT INTO `auth_permission` VALUES (42, 'Can change version', 11, 'change_version');
INSERT INTO `auth_permission` VALUES (43, 'Can delete version', 11, 'delete_version');
INSERT INTO `auth_permission` VALUES (44, 'Can view version', 11, 'view_version');
INSERT INTO `auth_permission` VALUES (45, 'Can add 轮播图', 12, 'add_banner');
INSERT INTO `auth_permission` VALUES (46, 'Can change 轮播图', 12, 'change_banner');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 轮播图', 12, 'delete_banner');
INSERT INTO `auth_permission` VALUES (48, 'Can view 轮播图', 12, 'view_banner');
INSERT INTO `auth_permission` VALUES (49, 'Can add 邮箱验证码', 13, 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (50, 'Can change 邮箱验证码', 13, 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 邮箱验证码', 13, 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (52, 'Can view 邮箱验证码', 13, 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (53, 'Can add 用户信息', 14, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (54, 'Can change 用户信息', 14, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 用户信息', 14, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (56, 'Can view 用户信息', 14, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (57, 'Can add 课程', 15, 'add_course');
INSERT INTO `auth_permission` VALUES (58, 'Can change 课程', 15, 'change_course');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 课程', 15, 'delete_course');
INSERT INTO `auth_permission` VALUES (60, 'Can view 课程', 15, 'view_course');
INSERT INTO `auth_permission` VALUES (61, 'Can add 章节', 16, 'add_lesson');
INSERT INTO `auth_permission` VALUES (62, 'Can change 章节', 16, 'change_lesson');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 章节', 16, 'delete_lesson');
INSERT INTO `auth_permission` VALUES (64, 'Can view 章节', 16, 'view_lesson');
INSERT INTO `auth_permission` VALUES (65, 'Can add 视频', 17, 'add_video');
INSERT INTO `auth_permission` VALUES (66, 'Can change 视频', 17, 'change_video');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 视频', 17, 'delete_video');
INSERT INTO `auth_permission` VALUES (68, 'Can view 视频', 17, 'view_video');
INSERT INTO `auth_permission` VALUES (69, 'Can add 课程资源', 18, 'add_courseresource');
INSERT INTO `auth_permission` VALUES (70, 'Can change 课程资源', 18, 'change_courseresource');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 课程资源', 18, 'delete_courseresource');
INSERT INTO `auth_permission` VALUES (72, 'Can view 课程资源', 18, 'view_courseresource');
INSERT INTO `auth_permission` VALUES (73, 'Can add 城市', 19, 'add_citydict');
INSERT INTO `auth_permission` VALUES (74, 'Can change 城市', 19, 'change_citydict');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 城市', 19, 'delete_citydict');
INSERT INTO `auth_permission` VALUES (76, 'Can view 城市', 19, 'view_citydict');
INSERT INTO `auth_permission` VALUES (77, 'Can add 课程机构', 20, 'add_courseorg');
INSERT INTO `auth_permission` VALUES (78, 'Can change 课程机构', 20, 'change_courseorg');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 课程机构', 20, 'delete_courseorg');
INSERT INTO `auth_permission` VALUES (80, 'Can view 课程机构', 20, 'view_courseorg');
INSERT INTO `auth_permission` VALUES (81, 'Can add 教师', 21, 'add_teacher');
INSERT INTO `auth_permission` VALUES (82, 'Can change 教师', 21, 'change_teacher');
INSERT INTO `auth_permission` VALUES (83, 'Can delete 教师', 21, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (84, 'Can view 教师', 21, 'view_teacher');
INSERT INTO `auth_permission` VALUES (85, 'Can add 用户咨询', 22, 'add_userask');
INSERT INTO `auth_permission` VALUES (86, 'Can change 用户咨询', 22, 'change_userask');
INSERT INTO `auth_permission` VALUES (87, 'Can delete 用户咨询', 22, 'delete_userask');
INSERT INTO `auth_permission` VALUES (88, 'Can view 用户咨询', 22, 'view_userask');
INSERT INTO `auth_permission` VALUES (89, 'Can add 用户消息', 23, 'add_usermessage');
INSERT INTO `auth_permission` VALUES (90, 'Can change 用户消息', 23, 'change_usermessage');
INSERT INTO `auth_permission` VALUES (91, 'Can delete 用户消息', 23, 'delete_usermessage');
INSERT INTO `auth_permission` VALUES (92, 'Can view 用户消息', 23, 'view_usermessage');
INSERT INTO `auth_permission` VALUES (93, 'Can add 用户收藏', 24, 'add_userfavorite');
INSERT INTO `auth_permission` VALUES (94, 'Can change 用户收藏', 24, 'change_userfavorite');
INSERT INTO `auth_permission` VALUES (95, 'Can delete 用户收藏', 24, 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES (96, 'Can view 用户收藏', 24, 'view_userfavorite');
INSERT INTO `auth_permission` VALUES (97, 'Can add 用户课程', 25, 'add_usercourse');
INSERT INTO `auth_permission` VALUES (98, 'Can change 用户课程', 25, 'change_usercourse');
INSERT INTO `auth_permission` VALUES (99, 'Can delete 用户课程', 25, 'delete_usercourse');
INSERT INTO `auth_permission` VALUES (100, 'Can view 用户课程', 25, 'view_usercourse');
INSERT INTO `auth_permission` VALUES (101, 'Can add 课程评论', 26, 'add_coursecomments');
INSERT INTO `auth_permission` VALUES (102, 'Can change 课程评论', 26, 'change_coursecomments');
INSERT INTO `auth_permission` VALUES (103, 'Can delete 课程评论', 26, 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES (104, 'Can view 课程评论', 26, 'view_coursecomments');
INSERT INTO `auth_permission` VALUES (105, 'Can add captcha store', 27, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (106, 'Can change captcha store', 27, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (107, 'Can delete captcha store', 27, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (108, 'Can view captcha store', 27, 'view_captchastore');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expiration` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for course_course
-- ----------------------------
DROP TABLE IF EXISTS `course_course`;
CREATE TABLE `course_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `desc` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `degree` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NULL,
  `course_org_id` int(11) NULL DEFAULT NULL,
  `category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `teacher_id` int(11) NULL DEFAULT NULL,
  `teacher_tell` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `youneed_know` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_course_course_org_id_6a10e205_fk_organizat`(`course_org_id`) USING BTREE,
  INDEX `course_course_teacher_id_f04a37b5_fk_organization_teacher_id`(`teacher_id`) USING BTREE,
  CONSTRAINT `course_course_course_org_id_6a10e205_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `course_course_teacher_id_f04a37b5_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_course
-- ----------------------------
INSERT INTO `course_course` VALUES (1, '《python》课程的章节 >>', 'Python 是一种解释型、面向对象、动态数据类型的高级程序设计语言。  Python 由 Guido van Rossum 于 1989 年底发明，第一个公开发行版发行于 1991 年。  像 Perl 语言一样, Python 源代码同样遵循 GPL(GNU General Public License) 协议。', '在继续本教程之前，你应该了解一些基本的计算机编程术语。如果你学习过 PHP，ASP 等编程语言，将有助于你更快的了解 Python 编程。', 'zj', 60, 155, 30, 'courses/2020/11/python_mMa0U2f.png', 202, '2020-11-08 10:04:00.000000', 1, 'python', '2', 2, '能学到python基础、函数，类和网络编程', '需要有一定的计算机基础知识');
INSERT INTO `course_course` VALUES (2, '《java》计算机编程语言', 'Java具有简单性、面向对象、分布式、健壮性、安全性、平台独立与可移植性、多线程、动态性等特点 [2]  。Java可以编写桌面应用程序、Web应用程序、分布式系统和嵌入式系统应用程序等', 'Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程', 'gj', 60, 71, 10, 'courses/2020/11/timg_1_xy9EtLg.jpg', 19, '2020-11-08 10:07:00.000000', 1, 'java', '1', 2, '能学到C+高级编程语言', '需要有一定的计算机基础知识');
INSERT INTO `course_course` VALUES (3, '《H5》全栈工程师前端开发', '前端页面全栈工程师是指掌握多种技能，胜任前端与后端，能利用多种技能独立完成产品的人', '现代项目的开发，需要掌握多种技术。互联网项目，需要用到后端开发、前端开发、界面设计、产品设计、数据库、各种移动客户端、三屏兼容、restFul API设计和OAuth等等，比较前卫的项目，还会用到Single Page Application、Web Socket、HTML5/CSS3这些技术以及像第三方开发像微信公众号web应用等等。\r\nWeb前端也远远不是从前的切个图用个jQuery上个AJAX兼容各种浏览器那么简单了。现代的Web前端，你需要用到模块化开发、多屏兼容、MVC，各种复杂的交互与优化，甚至你需要用到Node.js来协助前端的开发。\r\n所以说一个现代化的项目，是一个非常复杂的构成，我们需要一个人来掌控全局，他不需要是各种技术的资深专家，但他需要熟悉到各种技术。对于一个团队特别是互联网企业来说，有一个全局性思维的人非常非常重要。', 'zj', 60, 101, 10, 'courses/2020/11/u21990390512176809008fm26gp0_6cu3nMe.jpg', 35, '2020-11-11 20:54:00.000000', 1, 'H5', '3', 3, '能学到HTML、CSS、JS和前端样式', '需要有一定的计算机基础知识');

-- ----------------------------
-- Table structure for course_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `course_courseresource`;
CREATE TABLE `course_courseresource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `download` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_courseresource_course_id_d5504211_fk_course_course_id`(`course_id`) USING BTREE,
  CONSTRAINT `course_courseresource_course_id_d5504211_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_courseresource
-- ----------------------------
INSERT INTO `course_courseresource` VALUES (1, '数据分析', 'course/resource/2020/11/python.png', '2020-11-11 20:37:00.000000', 1);
INSERT INTO `course_courseresource` VALUES (2, '大数据C+语音', 'course/resource/2020/11/timg_1_Hi3XWg5.jpg', '2020-11-11 20:38:00.000000', 2);

-- ----------------------------
-- Table structure for course_lesson
-- ----------------------------
DROP TABLE IF EXISTS `course_lesson`;
CREATE TABLE `course_lesson`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_lesson_course_id_65df4a1c_fk_course_course_id`(`course_id`) USING BTREE,
  CONSTRAINT `course_lesson_course_id_65df4a1c_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_lesson
-- ----------------------------
INSERT INTO `course_lesson` VALUES (1, '第一章 初级编程语音', '2020-11-11 20:39:00.000000', 2);
INSERT INTO `course_lesson` VALUES (2, '第一章 基础', '2020-11-11 20:41:00.000000', 1);
INSERT INTO `course_lesson` VALUES (3, '第二章 数据类型', '2020-11-12 14:10:00.000000', 1);
INSERT INTO `course_lesson` VALUES (4, '第三章 函数', '2020-11-12 14:10:00.000000', 1);
INSERT INTO `course_lesson` VALUES (5, '第四章 类的介绍', '2020-11-12 14:10:00.000000', 1);
INSERT INTO `course_lesson` VALUES (6, '第二章 中级编程语音', '2020-11-12 14:11:00.000000', 2);
INSERT INTO `course_lesson` VALUES (7, '第三章 高级编程语音', '2020-11-12 14:11:00.000000', 2);
INSERT INTO `course_lesson` VALUES (8, '第一章 HTML的学习', '2020-11-12 14:12:00.000000', 3);
INSERT INTO `course_lesson` VALUES (9, '第二章 CSS和JS用法', '2020-11-12 14:12:00.000000', 3);
INSERT INTO `course_lesson` VALUES (10, '第三章 PS用法', '2020-11-12 14:13:00.000000', 3);

-- ----------------------------
-- Table structure for course_video
-- ----------------------------
DROP TABLE IF EXISTS `course_video`;
CREATE TABLE `course_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_video_lesson_id_0731e8a9_fk_course_lesson_id`(`lesson_id`) USING BTREE,
  CONSTRAINT `course_video_lesson_id_0731e8a9_fk_course_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `course_lesson` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_video
-- ----------------------------
INSERT INTO `course_video` VALUES (1, 'html的概述和基本结构', '2020-11-11 20:42:00.000000', 8, 'https://v-cdn.zjol.com.cn/277003.mp4', 1);
INSERT INTO `course_video` VALUES (2, 'java微服务和大数据', '2020-11-11 20:43:00.000000', 1, 'https://v-cdn.zjol.com.cn/277004.mp4', 3);
INSERT INTO `course_video` VALUES (3, 'python简介', '2020-11-12 11:42:00.000000', 2, 'https://media.w3.org/2010/05/sintel/trailer.mp4', 1);
INSERT INTO `course_video` VALUES (4, '列表，字典，元组和字符串的用法', '2020-11-12 14:17:00.000000', 3, 'http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4', 2);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (27, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (15, 'course', 'course');
INSERT INTO `django_content_type` VALUES (18, 'course', 'courseresource');
INSERT INTO `django_content_type` VALUES (16, 'course', 'lesson');
INSERT INTO `django_content_type` VALUES (17, 'course', 'video');
INSERT INTO `django_content_type` VALUES (26, 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES (22, 'operation', 'userask');
INSERT INTO `django_content_type` VALUES (25, 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES (24, 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES (23, 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES (19, 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES (20, 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES (21, 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES (10, 'reversion', 'revision');
INSERT INTO `django_content_type` VALUES (11, 'reversion', 'version');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (12, 'users', 'banner');
INSERT INTO `django_content_type` VALUES (13, 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (14, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (6, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (9, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (7, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (8, 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applied` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-11-05 08:56:30.372868');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2020-11-05 08:56:30.433924');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2020-11-05 08:56:30.490372');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2020-11-05 08:56:30.646470');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2020-11-05 08:56:30.652804');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2020-11-05 08:56:30.659716');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2020-11-05 08:56:30.665477');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2020-11-05 08:56:30.668356');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2020-11-05 08:56:30.675268');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2020-11-05 08:56:30.682180');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2020-11-05 08:56:30.688516');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2020-11-05 08:56:30.702340');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2020-11-05 08:56:30.709830');
INSERT INTO `django_migrations` VALUES (14, 'users', '0001_initial', '2020-11-05 08:56:30.811780');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0001_initial', '2020-11-05 08:56:31.001860');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0002_logentry_remove_auto_add', '2020-11-05 08:56:31.083076');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-05 08:56:31.092868');
INSERT INTO `django_migrations` VALUES (18, 'course', '0001_initial', '2020-11-05 08:56:31.168900');
INSERT INTO `django_migrations` VALUES (19, 'operation', '0001_initial', '2020-11-05 08:56:31.373380');
INSERT INTO `django_migrations` VALUES (20, 'organization', '0001_initial', '2020-11-05 08:56:31.606084');
INSERT INTO `django_migrations` VALUES (21, 'reversion', '0001_squashed_0004_auto_20160611_1202', '2020-11-05 08:56:31.743750');
INSERT INTO `django_migrations` VALUES (22, 'sessions', '0001_initial', '2020-11-05 08:56:31.876806');
INSERT INTO `django_migrations` VALUES (23, 'users', '0002_auto_20201103_1841', '2020-11-05 08:56:31.918276');
INSERT INTO `django_migrations` VALUES (24, 'users', '0003_auto_20201104_2045', '2020-11-05 08:56:31.982789');
INSERT INTO `django_migrations` VALUES (25, 'xadmin', '0001_initial', '2020-11-05 08:56:32.059396');
INSERT INTO `django_migrations` VALUES (26, 'xadmin', '0002_log', '2020-11-05 08:56:32.221253');
INSERT INTO `django_migrations` VALUES (27, 'xadmin', '0003_auto_20160715_0100', '2020-11-05 08:56:32.340486');
INSERT INTO `django_migrations` VALUES (28, 'captcha', '0001_initial', '2020-11-05 14:39:35.632194');
INSERT INTO `django_migrations` VALUES (29, 'organization', '0002_courseorg_category', '2020-11-06 21:09:42.293304');
INSERT INTO `django_migrations` VALUES (30, 'organization', '0003_auto_20201107_2158', '2020-11-07 21:58:21.887593');
INSERT INTO `django_migrations` VALUES (31, 'organization', '0004_teacher_image', '2020-11-08 09:37:02.587320');
INSERT INTO `django_migrations` VALUES (32, 'course', '0002_course_course_org', '2020-11-08 09:37:02.639397');
INSERT INTO `django_migrations` VALUES (33, 'course', '0003_course_category', '2020-11-11 14:32:46.754233');
INSERT INTO `django_migrations` VALUES (34, 'course', '0004_course_tag', '2020-11-11 14:45:40.236342');
INSERT INTO `django_migrations` VALUES (35, 'course', '0005_video_url', '2020-11-12 11:37:41.138522');
INSERT INTO `django_migrations` VALUES (36, 'course', '0006_video_learn_times', '2020-11-12 14:30:13.767718');
INSERT INTO `django_migrations` VALUES (37, 'course', '0007_auto_20201112_1439', '2020-11-12 14:39:56.831644');
INSERT INTO `django_migrations` VALUES (38, 'organization', '0005_teacher_teacher_age', '2020-11-12 15:27:33.888982');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expire_date` datetime(6) NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('3q3hwxe3xavroyikfvro9az3zoefy5gc', 'N2U1ZDJlMDczODEwNGE1NGFlNGRhYTQyODg4MjRjNzkyNzkyZjQ0Yjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy51c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzZkNDg5YzYyODAzYTI0MGQxM2Q3YTM0MDA0NjUzZGNhZDU1OTM0NCIsIkxJU1RfUVVFUlkiOltbInVzZXJzIiwidXNlcnByb2ZpbGUiXSwiIl19', '2020-11-26 19:29:14.609735');
INSERT INTO `django_session` VALUES ('at83acviff44xxo3q8yev9ak21opp2ps', 'MDEzMmI3YjI3NzM2Yzg3NjBlOTFhNTdjNDU2ZGVmNmM4ZjA3YjlhNzp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy51c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGRhMTM5ZDNiZjEzZmE4ZTU0MTgyYjZjMTEwMzc5ZWIzZDYzMTczYiJ9', '2020-11-20 15:28:36.186096');
INSERT INTO `django_session` VALUES ('dsxql2k8yiq0pm9131iiphr8bpa0p2pu', 'MzgwZGQzNWI0YjNjMTg3N2IxMGIzM2Q4YmVmNDc3OGQzY2NmNDJmZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy51c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzZkNDg5YzYyODAzYTI0MGQxM2Q3YTM0MDA0NjUzZGNhZDU1OTM0NCIsIkxJU1RfUVVFUlkiOltbImNvdXJzZSIsImNvdXJzZSJdLCIiXX0=', '2020-11-25 20:57:16.327418');
INSERT INTO `django_session` VALUES ('fjqz49gcevrpkk531kiult9w5b8nlui0', 'YWNhYmIxNjljMjYwOGNlNzJjMzVjNmQ4N2M3M2UwYWIyNWVjNjY5Zjp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMudXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhmNTdhY2ZmODY1OTlmZGRjM2U5ZDI4ODkxOTIwNjI4NDIzNjQ3MmUifQ==', '2020-11-26 19:32:48.940808');
INSERT INTO `django_session` VALUES ('mirj9tuymkoin83e7ol4pkuy11frw1uj', 'MzgwZGQzNWI0YjNjMTg3N2IxMGIzM2Q4YmVmNDc3OGQzY2NmNDJmZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy51c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzZkNDg5YzYyODAzYTI0MGQxM2Q3YTM0MDA0NjUzZGNhZDU1OTM0NCIsIkxJU1RfUVVFUlkiOltbImNvdXJzZSIsImNvdXJzZSJdLCIiXX0=', '2020-11-22 10:10:55.139359');

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_coursecomments_course_id_c88f1b6a_fk_course_course_id`(`course_id`) USING BTREE,
  INDEX `operation_coursecomm_user_id_f5ff70b3_fk_users_use`(`user_id`) USING BTREE,
  CONSTRAINT `operation_coursecomm_user_id_f5ff70b3_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
INSERT INTO `operation_coursecomments` VALUES (1, '建议反复观看', '2020-11-12 16:05:00.000000', 1, 11);
INSERT INTO `operation_coursecomments` VALUES (2, '难度有点高', '2020-11-12 16:05:00.000000', 2, 11);
INSERT INTO `operation_coursecomments` VALUES (3, '前面有点简单', '2020-11-12 16:06:00.000000', 3, 11);

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `add_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES (3, '01', '18210813524', '《java》计算机编程语言', '2020-11-12 15:32:00.000000');
INSERT INTO `operation_userask` VALUES (4, '02', '18210813563', '《H5》全栈工程师前端开发', '2020-11-12 15:33:00.000000');
INSERT INTO `operation_userask` VALUES (5, '03', '18210813563', '《python》课程的章节', '2020-11-12 16:04:00.000000');

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_usercourse_course_id_9f1eab2e_fk_course_course_id`(`course_id`) USING BTREE,
  INDEX `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES (1, '2020-11-12 15:09:54.092048', 1, 2);
INSERT INTO `operation_usercourse` VALUES (2, '2020-11-12 15:28:00.000000', 2, 2);
INSERT INTO `operation_usercourse` VALUES (4, '2020-11-12 15:31:00.000000', 3, 11);
INSERT INTO `operation_usercourse` VALUES (5, '2020-11-12 15:31:00.000000', 2, 11);
INSERT INTO `operation_usercourse` VALUES (6, '2020-11-12 15:52:13.893143', 3, 2);
INSERT INTO `operation_usercourse` VALUES (7, '2020-11-12 16:05:00.000000', 1, 11);

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `add_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES (3, '芝加哥', '芝加哥是美国最重要的文化科教中心之一，拥有世界顶级学府芝加哥大学（The University of Chicago）、西北大学（Northwestern University）和享誉世界的芝加哥学派。 [4-5]  截止至2019年10月，逾百位诺贝尔奖得主曾在芝加哥工作、求学过（芝加哥大学100位、西北大学19位）', '2020-11-06 21:00:00.000000');
INSERT INTO `organization_citydict` VALUES (4, '拉斯维加斯', '拉斯维加斯位居世界四大赌城之一，是一座以赌博业为中心的旅游、购物、度假的世界知名度假城市，拥有“世界娱乐之都”和“结婚之都”的美称。每年来拉斯维加斯旅游的3890万旅客中，来购物和享受美食的占了大多数，专程来赌博的只占少数。从一个不起眼的破落村庄，到一座巨大的国际城市，拉斯维加斯只用了十年。', '2020-11-06 21:01:00.000000');
INSERT INTO `organization_citydict` VALUES (5, '里约热内卢', '里约热内卢（葡萄牙语：Rio de Janeiro，意即“一月的河”），简称里约(Rio)，曾经是巴西首都（1763-1960年），位于巴西东南部沿海地区，东南濒临大西洋，海岸线长636公里。里约热内卢主要属于热带草原气候，终年高温，气温年、日较差都小，季节分配比较均匀。', '2020-11-06 21:02:00.000000');
INSERT INTO `organization_citydict` VALUES (6, '迈阿密', '迈阿密（Miami）是美国佛罗里达州第二大城市，位于佛罗里达半岛比斯坎湾。迈阿密还是南佛罗里达州都市圈中最大的城市，这个都市圈由迈阿密-戴德县、布劳沃德县和棕榈滩县组成，人口超过559万人，是美国人口最为稠密的城市之一，美国东南部最大的都市圈，也是全美第四大都市圈。', '2020-11-06 21:02:00.000000');
INSERT INTO `organization_citydict` VALUES (7, '吉普岛', '普吉岛位于印度洋安达曼海东南部，离泰国首都曼谷867公里，是泰国境内唯一受封为省级地位的岛屿。有深远的历史和文化，被誉为安达曼海的明珠，500多年前是锡矿基地，泰国主要的旅游胜地，人口175万（2004年）。', '2020-11-06 21:03:00.000000');
INSERT INTO `organization_citydict` VALUES (8, '孟买', '孟买，英文名称Mumbai, 1995年以前称Bombay, 是印度西部滨海城市，印度第一大港口，棉纺织业中心，马哈拉施特拉邦首府，孟买大区是印度整个国家人口第二密集的地区，2016年的人口统计显示，该地区人口大约2130万（仅次于人口2500万的印度首都新德里）。孟买也是印度最富裕的城市，这里的百万富翁和千万富翁冠绝印度所有城市，重要的贸易中心和港口城市。', '2020-11-06 21:04:00.000000');
INSERT INTO `organization_citydict` VALUES (9, '悉尼', '悉尼（Sydney），位于澳大利亚的东南沿岸，是澳大利亚新南威尔士州的首府，也是澳大利亚面积最大、人口最多的城市。城市中心坐标为南纬33°51\'、东经151°12′。大悉尼都会区面积约12368.193平方千米，悉尼市区面积约1687平方千米，人口约503万（2016年），大悉尼都会区由悉尼市区和33个郊区组成。', '2020-11-06 21:04:00.000000');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_courseo_city_id_4a842f85_fk_organizat`(`city_id`) USING BTREE,
  CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES (1, '新东方10', '新东方创办于1993年，定位于以学生全面成长为核心，打造了新东方中小学全科教育、新东方大学考试、新东方留学考试、新东方在线、新东方前途出国、新东方国际游学等诸多教育品牌。', 80, 20, 'org/2020/11/微信图片_20201107212508_NOpuwFT.png', '山东', '2020-11-06 21:34:00.000000', 3, 'pxjg', 1, 133);
INSERT INTO `organization_courseorg` VALUES (2, '新东方09', '新东方，全名北京新东方教育科技（集团）有限公司，总部位于中国北京市海淀区中关村，是综合性教育集团，同时也是教育培训集团。公司业务包括外语培训、中小学基础教育、学前教育、在线教育、出国咨询、图书出版等各个领域。', 1, 0, 'org/2020/11/微信图片_20201107212508_u1m8q3b.png', '辽宁', '2020-11-06 21:54:00.000000', 5, 'pxjg', 1, 68);
INSERT INTO `organization_courseorg` VALUES (3, '新东方08', '除新东方外，旗下还有优能中学教育、泡泡少儿教育、前途出国咨询、迅程在线教育、大愚文化出版、满天星亲子教育、同文高考复读等子品牌。公司于2006年在美国纽约证券交易所上市，是中国大陆第一家在美国上市的教育机构。2012年7月18日，新东方因调整VIE结构遭SEC调查股价暴跌。2016年2月1日， [1]  新东方教育集团发布公告，宣布腾讯将向迅程（即新东方在线）投资3.2亿人民币（5000万美元），并宣布新东方在线即将在国内IPO。这项投资预计于2016年第一季度完成，完成后迅程仍由新东方控股。', 5, 0, 'org/2020/11/微信图片_20201107212508_PxouXf2.png', '黑龙江', '2020-11-06 21:55:00.000000', 7, 'pxjg', 1, 44);
INSERT INTO `organization_courseorg` VALUES (4, '新东方07', '新东方一直致力于阐扬一种朝气蓬勃、奋发向上的精神，一种从绝望中义无反顾地寻找希望的精神。当世界上的一切都成为如烟往事，唯一能够珍藏心中的是我们在今天的奋斗中所得到的精神启事。在将来的岁月里，我们的心灵将指引我们，使我们能够潇洒地对待生活中的成功与失败，并在成功与失败时做出更奋发的努力，取得最终的辉煌。', 33, 0, 'org/2020/11/微信图片_20201107212508_9aUlLNK.png', '深圳', '2020-11-07 21:21:00.000000', 4, 'pxjg', 1, 190);
INSERT INTO `organization_courseorg` VALUES (5, '新东方06', '新东方教育科技集团由1993年11月16日成立的北京新东方学校发展壮大而来，集团以培训为核心，拥有满天星幼儿园、泡泡少儿教育、优能中学教育、基础英语培训、大学英语及考研培训、出国考试培训、多语种培训等多个培训体系，同时在基础教育、职业教育、教育研发、出国咨询、文化产业等方面取得了骄人的成绩。', 10, 0, 'org/2020/11/微信图片_20201107212508_gS5cWtN.png', '东北', '2020-11-07 21:25:00.000000', 7, 'pxjg', 1, 73);
INSERT INTO `organization_courseorg` VALUES (6, '新东方05', '作为中国著名私立教育机构，新东方教育科技集团于2006年9月7日在美国纽约证券交易所成功上市。', 1, 0, 'org/2020/11/微信图片_20201107212508_AAbpnaq.png', '吉林', '2020-11-07 21:26:00.000000', 8, 'pxjg', 1, 16);
INSERT INTO `organization_courseorg` VALUES (7, '新东方04', '截止2014年5月，新东方已经在全国50座城市设立了56所学校、31家书店以及703家学习中心。', 1, 0, 'org/2020/11/微信图片_20201107212508_FVbh1Zh.png', '山西', '2020-11-07 21:27:00.000000', 9, 'pxjg', 1, 66);
INSERT INTO `organization_courseorg` VALUES (8, '新东方03', '自成立以来，新东方累计面授学员2000万人次。新东方品牌在世界品牌价值实验室（World Brand ValueLab）编制的2010年度《中国品牌500强》排行榜中排名第94位，品牌价值已达64.23亿元。', 1, 0, 'org/2020/11/微信图片_20201107212508_VcqDScH.png', '上海', '2020-11-07 21:27:00.000000', 6, 'pxjg', 1, 38);
INSERT INTO `organization_courseorg` VALUES (9, '新东方02', '新东方一直致力于阐扬一种朝气蓬勃、奋发向上的精神，一种从绝望中义无反顾地寻找希望的精神。当世界上的一切都成为如烟往事，唯一能够珍藏心中的是我们在今天的奋斗中所得到的精神启事。', 1, 0, 'org/2020/11/微信图片_20201107212508_El18krC.png', '北京', '2020-11-07 21:28:00.000000', 7, 'pxjg', 1, 99);
INSERT INTO `organization_courseorg` VALUES (10, '新东方01', '在将来的岁月里，我们的心灵将指引我们，使我们能够潇洒地对待生活中的成功与失败，并在成功与失败时做出更奋发的努力，取得最终的辉煌。', 1, 0, 'org/2020/11/微信图片_20201107212508_XIjPxNn.png', '长春', '2020-11-07 21:28:00.000000', 9, 'pxjg', 1, 50);

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `work_position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `points` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `teacher_age` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_teacher_org_id_cd000a1a_fk_organizat`(`org_id`) USING BTREE,
  CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES (1, '二师兄', 0, 'python后端开发', 'java程序员', '讲的细', 1, 0, '2020-11-08 09:57:00.000000', 2, 'teacher/2020/11/微信图片_20200429112352_tXQptFf.jpg', 25);
INSERT INTO `organization_teacher` VALUES (2, '大师兄', 3, 'java开发教程', 'java程序员', '讲的快', 1, 0, '2020-11-08 09:59:00.000000', 5, 'teacher/2020/11/微信图片_20200429112405_GX4OLji.jpg', 25);
INSERT INTO `organization_teacher` VALUES (3, '三师兄', 5, '全栈教程', 'python前端教师', '讲得好', 1, 0, '2020-11-08 10:00:00.000000', 5, 'teacher/2020/11/微信图片_20200429112411_vNbbqjp.jpg', 25);

-- ----------------------------
-- Table structure for reversion_revision
-- ----------------------------
DROP TABLE IF EXISTS `reversion_revision`;
CREATE TABLE `reversion_revision`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reversion_revision_user_id_17095f45_fk_users_userprofile_id`(`user_id`) USING BTREE,
  INDEX `reversion_revision_date_created_96f7c20c`(`date_created`) USING BTREE,
  CONSTRAINT `reversion_revision_user_id_17095f45_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for reversion_version
-- ----------------------------
DROP TABLE IF EXISTS `reversion_version`;
CREATE TABLE `reversion_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `serialized_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `object_repr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL,
  `db` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `reversion_version_db_content_type_id_objec_b2c54f65_uniq`(`db`, `content_type_id`, `object_id`, `revision_id`) USING BTREE,
  INDEX `reversion_version_content_type_id_7d0ff25c_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id`(`revision_id`) USING BTREE,
  CONSTRAINT `reversion_version_content_type_id_7d0ff25c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `send_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `send_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES (1, 'ygm3AyEK0p3qc00E', 'wj18210813529@163.com', 'register', '2020-11-05 20:20:38.290891');
INSERT INTO `users_emailverifyrecord` VALUES (2, '8lFypqXoVNbIjnHt', 'wj18210813529@163.com', 'forget', '2020-11-06 10:33:30.435418');
INSERT INTO `users_emailverifyrecord` VALUES (3, 'akGE3odv8Vh7jG1Q', 'wj18210813529@163.com', 'forget', '2020-11-06 10:35:49.548558');
INSERT INTO `users_emailverifyrecord` VALUES (4, 'QQ5JCD5o7kB3aVZl', 'wj18210813529@163.com', 'register', '2020-11-06 11:36:34.279944');
INSERT INTO `users_emailverifyrecord` VALUES (5, 'ssXMhDZxnDr0xt6S', 'wj18210813529@163.com', 'register', '2020-11-06 15:24:29.207966');
INSERT INTO `users_emailverifyrecord` VALUES (6, 'LGZnyMmqEJebL7OC', 'wj18210813529@163.com', 'forget', '2020-11-06 15:27:31.418186');
INSERT INTO `users_emailverifyrecord` VALUES (7, 'MkDWa5h1vFLHps0B', '1669853607@qq.com', 'register', '2020-11-06 17:27:15.067370');
INSERT INTO `users_emailverifyrecord` VALUES (8, '798gTVag0nXV5L7C', '1669853607@qq.com', 'register', '2020-11-08 10:36:06.859693');
INSERT INTO `users_emailverifyrecord` VALUES (9, 'hrpMciw1tFVf0Coq', '1669853607@qq.com', 'forget', '2020-11-08 10:37:54.023162');
INSERT INTO `users_emailverifyrecord` VALUES (10, 'g02vxl3r2YF3Sqjx', '1669853607@qq.com', 'register', '2020-11-08 16:10:16.385698');
INSERT INTO `users_emailverifyrecord` VALUES (11, 'NiltKjrW6NzGvTm8', '1669853607@qq.com', 'register', '2020-11-08 16:39:54.246753');
INSERT INTO `users_emailverifyrecord` VALUES (12, 'Up4kY3KGAYKUGywy', '1669853607@qq.com', 'register', '2020-11-08 17:03:11.108734');
INSERT INTO `users_emailverifyrecord` VALUES (13, 'V1QNxIg9BKpOnD9T', '1669853607@qq.com', 'register', '2020-11-12 19:11:18.800115');
INSERT INTO `users_emailverifyrecord` VALUES (14, 'lpOlWPTWLKZTpFMk', '1669853607@qq.com', 'register', '2020-11-12 19:18:38.751496');
INSERT INTO `users_emailverifyrecord` VALUES (15, 'JAIlEdpuxJ78TbE4', '1669853607@qq.com', 'register', '2020-11-12 19:32:19.431855');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NULL,
  `nick_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `birthday` date NULL DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (2, 'pbkdf2_sha256$150000$90a6e03P6xAC$+bBmuFIFaGVXPZD/2DH9GWCRtmY1ynv/rhQJhzCfKmY=', '2020-11-12 11:26:00.000000', 1, 'user', '', '', '', 1, 1, '2020-11-05 09:17:00.000000', '', NULL, 'female', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0074.gif\"/></p>', '18210813528', 'image/202011/20200602110901.jpg');
INSERT INTO `users_userprofile` VALUES (11, '123456', NULL, 0, 'admin', '', '', '', 0, 1, '2020-11-12 15:31:00.000000', '', NULL, 'female', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0025.gif\"/></p>', '18210813529', 'image/202011/005vlDYtly1fhjqbe6nrqj30k20k2dgs_pEoC64a.jpg');
INSERT INTO `users_userprofile` VALUES (14, 'pbkdf2_sha256$150000$KGIOJDh4b1Et$3tz20a5II3cY3Ore/jiE2YYBpjGDYRunPMS0MHAA7S8=', '2020-11-12 19:32:48.929837', 0, '1669853607@qq.com', '', '', '1669853607@qq.com', 0, 1, '2020-11-12 19:32:19.190225', '', NULL, 'female', '', NULL, 'image/default.png');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_us_permission_id_393136b6_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookmark_content_type_id_60941679_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NULL,
  `ip_addr` char(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (2, '2020-11-06 14:22:00.805003', '127.0.0.1', '4', 'wj18210813529@163.com', 'delete', '', 14, 2);
INSERT INTO `xadmin_log` VALUES (3, '2020-11-06 14:22:29.837759', '127.0.0.1', '1', 'admin', 'delete', '', 14, 2);
INSERT INTO `xadmin_log` VALUES (4, '2020-11-06 20:57:38.947788', '127.0.0.1', '1', 'CityDict object (1)', 'create', '已添加。', 19, 2);
INSERT INTO `xadmin_log` VALUES (5, '2020-11-06 20:59:48.777910', '127.0.0.1', '2', 'CityDict object (2)', 'create', '已添加。', 19, 2);
INSERT INTO `xadmin_log` VALUES (6, '2020-11-06 21:00:27.310706', '127.0.0.1', NULL, '', 'delete', '批量删除 2 个 城市', NULL, 2);
INSERT INTO `xadmin_log` VALUES (7, '2020-11-06 21:01:26.717699', '127.0.0.1', '3', 'CityDict object (3)', 'create', '已添加。', 19, 2);
INSERT INTO `xadmin_log` VALUES (8, '2020-11-06 21:02:06.536844', '127.0.0.1', '4', 'CityDict object (4)', 'create', '已添加。', 19, 2);
INSERT INTO `xadmin_log` VALUES (9, '2020-11-06 21:02:48.591153', '127.0.0.1', '5', 'CityDict object (5)', 'create', '已添加。', 19, 2);
INSERT INTO `xadmin_log` VALUES (10, '2020-11-06 21:03:24.187235', '127.0.0.1', '6', 'CityDict object (6)', 'create', '已添加。', 19, 2);
INSERT INTO `xadmin_log` VALUES (11, '2020-11-06 21:04:03.314314', '127.0.0.1', '7', 'CityDict object (7)', 'create', '已添加。', 19, 2);
INSERT INTO `xadmin_log` VALUES (12, '2020-11-06 21:04:10.985490', '127.0.0.1', '8', 'CityDict object (8)', 'create', '已添加。', 19, 2);
INSERT INTO `xadmin_log` VALUES (13, '2020-11-06 21:04:20.683820', '127.0.0.1', '9', 'CityDict object (9)', 'create', '已添加。', 19, 2);
INSERT INTO `xadmin_log` VALUES (14, '2020-11-06 21:36:44.850835', '127.0.0.1', '1', '新东方111', 'create', '已添加。', 20, 2);
INSERT INTO `xadmin_log` VALUES (15, '2020-11-06 21:55:42.456039', '127.0.0.1', '2', '新东方222', 'create', '已添加。', 20, 2);
INSERT INTO `xadmin_log` VALUES (16, '2020-11-06 21:56:18.366740', '127.0.0.1', '3', '新东方333', 'create', '已添加。', 20, 2);
INSERT INTO `xadmin_log` VALUES (17, '2020-11-07 21:25:48.148658', '127.0.0.1', '4', '新东方444', 'create', '已添加。', 20, 2);
INSERT INTO `xadmin_log` VALUES (18, '2020-11-07 21:26:35.196333', '127.0.0.1', '5', '新东方555', 'create', '已添加。', 20, 2);
INSERT INTO `xadmin_log` VALUES (19, '2020-11-07 21:27:09.007871', '127.0.0.1', '6', '新东方666', 'create', '已添加。', 20, 2);
INSERT INTO `xadmin_log` VALUES (20, '2020-11-07 21:27:46.494341', '127.0.0.1', '7', '新东方777', 'create', '已添加。', 20, 2);
INSERT INTO `xadmin_log` VALUES (21, '2020-11-07 21:28:12.300975', '127.0.0.1', '8', '新东方888', 'create', '已添加。', 20, 2);
INSERT INTO `xadmin_log` VALUES (22, '2020-11-07 21:28:45.806460', '127.0.0.1', '9', '新东方999', 'create', '已添加。', 20, 2);
INSERT INTO `xadmin_log` VALUES (23, '2020-11-07 21:29:15.543215', '127.0.0.1', '10', '新东方000', 'create', '已添加。', 20, 2);
INSERT INTO `xadmin_log` VALUES (24, '2020-11-08 09:59:29.306091', '127.0.0.1', '1', '[新东方222]的教师：二师兄', 'create', '已添加。', 21, 2);
INSERT INTO `xadmin_log` VALUES (25, '2020-11-08 10:00:34.485004', '127.0.0.1', '2', '[新东方555]的教师：大师兄', 'create', '已添加。', 21, 2);
INSERT INTO `xadmin_log` VALUES (26, '2020-11-08 10:02:05.228471', '127.0.0.1', '3', '[新东方555]的教师：三师兄', 'create', '已添加。', 21, 2);
INSERT INTO `xadmin_log` VALUES (27, '2020-11-08 10:07:53.297985', '127.0.0.1', '1', 'python', 'create', '已添加。', 15, 2);
INSERT INTO `xadmin_log` VALUES (28, '2020-11-08 10:10:54.698762', '127.0.0.1', '2', 'java', 'create', '已添加。', 15, 2);
INSERT INTO `xadmin_log` VALUES (29, '2020-11-11 20:36:11.426505', '127.0.0.1', '2', 'java', 'change', '修改 image，tag，course_org 和 category', 15, 2);
INSERT INTO `xadmin_log` VALUES (30, '2020-11-11 20:36:48.241067', '127.0.0.1', '1', 'python', 'change', '修改 image，tag，course_org 和 category', 15, 2);
INSERT INTO `xadmin_log` VALUES (31, '2020-11-11 20:38:29.333351', '127.0.0.1', '1', 'CourseResource object (1)', 'create', '已添加。', 18, 2);
INSERT INTO `xadmin_log` VALUES (32, '2020-11-11 20:38:57.647732', '127.0.0.1', '2', 'CourseResource object (2)', 'create', '已添加。', 18, 2);
INSERT INTO `xadmin_log` VALUES (33, '2020-11-11 20:40:52.359378', '127.0.0.1', '1', '《python》课程的章节 >> 由于Python语言的简洁性、易读性以及可扩展性，在国外用Python做科学计算的研究机构日益增多，一些知名大学已经采用Python来教授程序设计课程。例如卡耐基梅隆大学的编程基础、麻省理工学院的计算', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (34, '2020-11-11 20:41:32.341953', '127.0.0.1', '2', '《java》课程的章节 >> 由于在开发Oak语言时，尚且不存在运行字节码的硬件平台，所以为了在开发时可以对这种语言进行实验研究，他们就在已有的硬件和软件平台基础上，按照自己所指定的规范，用软件建设了一个运行平台，整个系统除了比C', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (35, '2020-11-11 20:43:09.514958', '127.0.0.1', '1', 'Video object (1)', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (36, '2020-11-11 20:43:47.232453', '127.0.0.1', '1', 'Video object (1)', 'change', '修改 name', 17, 2);
INSERT INTO `xadmin_log` VALUES (37, '2020-11-11 20:43:54.727855', '127.0.0.1', '2', 'Video object (2)', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (38, '2020-11-11 20:56:31.772405', '127.0.0.1', '3', '全栈工程师', 'create', '已添加。', 15, 2);
INSERT INTO `xadmin_log` VALUES (39, '2020-11-11 20:57:16.151891', '127.0.0.1', '3', '全栈工程师', 'change', '修改 desc 和 image', 15, 2);
INSERT INTO `xadmin_log` VALUES (40, '2020-11-12 11:28:35.494003', '127.0.0.1', '10', '新东方01', 'change', '修改 name，click_nums，students，course_nums 和 image', 20, 2);
INSERT INTO `xadmin_log` VALUES (41, '2020-11-12 11:29:05.692296', '127.0.0.1', '9', '新东方02', 'change', '修改 name，click_nums，students，course_nums 和 image', 20, 2);
INSERT INTO `xadmin_log` VALUES (42, '2020-11-12 11:29:32.328133', '127.0.0.1', '8', '新东方03', 'change', '修改 name，click_nums，students，course_nums 和 image', 20, 2);
INSERT INTO `xadmin_log` VALUES (43, '2020-11-12 11:29:49.393708', '127.0.0.1', '7', '新东方04', 'change', '修改 name，click_nums，students，course_nums 和 image', 20, 2);
INSERT INTO `xadmin_log` VALUES (44, '2020-11-12 11:30:07.666753', '127.0.0.1', '6', '新东方05', 'change', '修改 name，click_nums，students，course_nums 和 image', 20, 2);
INSERT INTO `xadmin_log` VALUES (45, '2020-11-12 11:30:35.361309', '127.0.0.1', '5', '新东方06', 'change', '修改 name，click_nums，students，course_nums 和 image', 20, 2);
INSERT INTO `xadmin_log` VALUES (46, '2020-11-12 11:30:58.999990', '127.0.0.1', '4', '新东方07', 'change', '修改 name，click_nums，students，course_nums 和 image', 20, 2);
INSERT INTO `xadmin_log` VALUES (47, '2020-11-12 11:31:30.761130', '127.0.0.1', '3', '新东方08', 'change', '修改 name，click_nums，students，course_nums 和 image', 20, 2);
INSERT INTO `xadmin_log` VALUES (48, '2020-11-12 11:31:56.259998', '127.0.0.1', '2', '新东方09', 'change', '修改 name，click_nums，students，course_nums 和 image', 20, 2);
INSERT INTO `xadmin_log` VALUES (49, '2020-11-12 11:32:19.434593', '127.0.0.1', '1', '新东方10', 'change', '修改 name，click_nums，fav_nums，students，course_nums 和 image', 20, 2);
INSERT INTO `xadmin_log` VALUES (50, '2020-11-12 11:34:45.309123', '127.0.0.1', '2', '[新东方06]的教师：大师兄', 'change', '修改 click_nums 和 image', 21, 2);
INSERT INTO `xadmin_log` VALUES (51, '2020-11-12 11:35:03.105948', '127.0.0.1', '3', '[新东方06]的教师：三师兄', 'change', '修改 click_nums 和 image', 21, 2);
INSERT INTO `xadmin_log` VALUES (52, '2020-11-12 11:35:12.651101', '127.0.0.1', '1', '[新东方09]的教师：二师兄', 'change', '修改 click_nums 和 image', 21, 2);
INSERT INTO `xadmin_log` VALUES (53, '2020-11-12 11:41:13.028054', '127.0.0.1', '2', '《python》课程的章节 >> 第一章 基础', 'change', '修改 lesson，name 和 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (54, '2020-11-12 11:42:04.606476', '127.0.0.1', '1', '第二章 数据类型', 'change', '修改 name 和 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (55, '2020-11-12 11:42:31.875200', '127.0.0.1', '3', '第三章 函数', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (56, '2020-11-12 14:06:08.089731', '127.0.0.1', '2', '《python》课程的章节 >> 《python》课程的章节 >> 第一章 基础', 'change', '修改 course 和 name', 16, 2);
INSERT INTO `xadmin_log` VALUES (57, '2020-11-12 14:08:18.944461', '127.0.0.1', '1', '《python》课程的章节 >>', 'change', '修改 name 和 image', 15, 2);
INSERT INTO `xadmin_log` VALUES (58, '2020-11-12 14:09:14.301675', '127.0.0.1', '2', '《java》计算机编程语言', 'change', '修改 name 和 image', 15, 2);
INSERT INTO `xadmin_log` VALUES (59, '2020-11-12 14:09:38.165923', '127.0.0.1', '3', '《H5》全栈工程师前端开发', 'change', '修改 name 和 image', 15, 2);
INSERT INTO `xadmin_log` VALUES (60, '2020-11-12 14:10:00.975528', '127.0.0.1', '2', '《《python》课程的章节 >>》课程的章节 >> 第一章 基础', 'change', '修改 name', 16, 2);
INSERT INTO `xadmin_log` VALUES (61, '2020-11-12 14:10:16.208937', '127.0.0.1', '3', '《《python》课程的章节 >>》课程的章节 >> 第二章 数据类型', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (62, '2020-11-12 14:10:24.542155', '127.0.0.1', '4', '《《python》课程的章节 >>》课程的章节 >> 第三章 函数', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (63, '2020-11-12 14:10:36.850380', '127.0.0.1', '5', '《《python》课程的章节 >>》课程的章节 >> 第四章 类的介绍', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (64, '2020-11-12 14:11:36.086320', '127.0.0.1', '1', '《《java》计算机编程语言》课程的章节 >> 第一章 初级编程语音', 'change', '修改 course 和 name', 16, 2);
INSERT INTO `xadmin_log` VALUES (65, '2020-11-12 14:11:55.434229', '127.0.0.1', '6', '《《java》计算机编程语言》课程的章节 >> 第二章 中级编程语音', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (66, '2020-11-12 14:12:06.707804', '127.0.0.1', '7', '《《java》计算机编程语言》课程的章节 >> 第三章 高级编程语音', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (67, '2020-11-12 14:12:42.200601', '127.0.0.1', '8', '《《H5》全栈工程师前端开发》课程的章节 >> 第一章 HTML的学习', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (68, '2020-11-12 14:13:05.593928', '127.0.0.1', '9', '《《H5》全栈工程师前端开发》课程的章节 >> 第二章 CSS和JS用法', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (69, '2020-11-12 14:13:51.889596', '127.0.0.1', '10', '《《H5》全栈工程师前端开发》课程的章节 >> 第三章 PS用法', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (70, '2020-11-12 14:14:50.795519', '127.0.0.1', '3', 'python简介', 'change', '修改 lesson 和 name', 17, 2);
INSERT INTO `xadmin_log` VALUES (71, '2020-11-12 14:16:38.624789', '127.0.0.1', '2', 'java微服务和大数据', 'change', '修改 name', 17, 2);
INSERT INTO `xadmin_log` VALUES (72, '2020-11-12 14:17:34.748329', '127.0.0.1', '1', 'html的概述和基本结构', 'change', '修改 lesson 和 name', 17, 2);
INSERT INTO `xadmin_log` VALUES (73, '2020-11-12 14:18:58.145876', '127.0.0.1', '4', '列表，字典，元组和字符串的用法', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (74, '2020-11-12 14:19:49.752435', '127.0.0.1', '2', 'java微服务和大数据', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (75, '2020-11-12 14:20:08.541803', '127.0.0.1', '1', 'html的概述和基本结构', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (76, '2020-11-12 14:20:17.507780', '127.0.0.1', '4', '列表，字典，元组和字符串的用法', 'change', '没有字段被修改。', 17, 2);
INSERT INTO `xadmin_log` VALUES (77, '2020-11-12 14:20:26.296817', '127.0.0.1', '3', 'python简介', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (78, '2020-11-12 14:33:07.960876', '127.0.0.1', '2', 'CourseResource object (2)', 'change', '修改 download', 18, 2);
INSERT INTO `xadmin_log` VALUES (79, '2020-11-12 14:34:24.522858', '127.0.0.1', '2', 'java微服务和大数据', 'change', '修改 learn_times', 17, 2);
INSERT INTO `xadmin_log` VALUES (80, '2020-11-12 14:34:29.472689', '127.0.0.1', '3', 'python简介', 'change', '修改 learn_times', 17, 2);
INSERT INTO `xadmin_log` VALUES (81, '2020-11-12 14:34:35.393238', '127.0.0.1', '2', 'java微服务和大数据', 'change', '修改 learn_times', 17, 2);
INSERT INTO `xadmin_log` VALUES (82, '2020-11-12 14:34:40.158807', '127.0.0.1', '1', 'html的概述和基本结构', 'change', '修改 learn_times', 17, 2);
INSERT INTO `xadmin_log` VALUES (83, '2020-11-12 14:59:49.098244', '127.0.0.1', '3', '《H5》全栈工程师前端开发', 'change', '修改 image，youneed_know 和 teacher_tell', 15, 2);
INSERT INTO `xadmin_log` VALUES (84, '2020-11-12 15:00:02.402391', '127.0.0.1', '1', '《python》课程的章节 >>', 'change', '修改 image，youneed_know 和 teacher_tell', 15, 2);
INSERT INTO `xadmin_log` VALUES (85, '2020-11-12 15:01:03.934870', '127.0.0.1', '2', '《java》计算机编程语言', 'change', '修改 image，youneed_know 和 teacher_tell', 15, 2);
INSERT INTO `xadmin_log` VALUES (86, '2020-11-12 15:02:19.093286', '127.0.0.1', '3', '《H5》全栈工程师前端开发', 'change', '修改 image 和 teacher_tell', 15, 2);
INSERT INTO `xadmin_log` VALUES (87, '2020-11-12 15:28:58.703631', '127.0.0.1', '2', 'UserCourse object (2)', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (88, '2020-11-12 15:29:07.789875', '127.0.0.1', '3', 'UserCourse object (3)', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (89, '2020-11-12 15:31:01.692550', '127.0.0.1', '10', '1669853607@qq.com', 'delete', '', 14, 2);
INSERT INTO `xadmin_log` VALUES (90, '2020-11-12 15:31:30.360804', '127.0.0.1', '11', 'admin', 'create', '已添加。', 14, 2);
INSERT INTO `xadmin_log` VALUES (91, '2020-11-12 15:31:57.636750', '127.0.0.1', '4', 'UserCourse object (4)', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (92, '2020-11-12 15:32:03.314830', '127.0.0.1', '5', 'UserCourse object (5)', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (93, '2020-11-12 15:33:01.463964', '127.0.0.1', '3', '01', 'create', '已添加。', 22, 2);
INSERT INTO `xadmin_log` VALUES (94, '2020-11-12 15:33:52.114637', '127.0.0.1', '4', '02', 'create', '已添加。', 22, 2);
INSERT INTO `xadmin_log` VALUES (95, '2020-11-12 15:41:58.276456', '127.0.0.1', '2', '《java》计算机编程语言', 'change', '修改 image 和 teacher', 15, 2);
INSERT INTO `xadmin_log` VALUES (96, '2020-11-12 15:42:19.840481', '127.0.0.1', '3', '《H5》全栈工程师前端开发', 'change', '修改 fav_nums，image 和 teacher', 15, 2);
INSERT INTO `xadmin_log` VALUES (97, '2020-11-12 16:04:51.872154', '127.0.0.1', '5', '03', 'create', '已添加。', 22, 2);
INSERT INTO `xadmin_log` VALUES (98, '2020-11-12 16:05:20.466071', '127.0.0.1', '7', 'UserCourse object (7)', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (99, '2020-11-12 16:05:52.897728', '127.0.0.1', '1', 'CourseComments object (1)', 'create', '已添加。', 26, 2);
INSERT INTO `xadmin_log` VALUES (100, '2020-11-12 16:06:10.714162', '127.0.0.1', '2', 'CourseComments object (2)', 'create', '已添加。', 26, 2);
INSERT INTO `xadmin_log` VALUES (101, '2020-11-12 16:06:41.597782', '127.0.0.1', '3', 'CourseComments object (3)', 'create', '已添加。', 26, 2);
INSERT INTO `xadmin_log` VALUES (102, '2020-11-12 16:07:36.165693', '127.0.0.1', '2', 'user', 'change', '修改 last_login，address，mobile 和 image', 14, 2);
INSERT INTO `xadmin_log` VALUES (103, '2020-11-12 16:09:00.461771', '127.0.0.1', '3', 'python简介', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (104, '2020-11-12 16:09:26.926983', '127.0.0.1', '2', 'java微服务和大数据', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (105, '2020-11-12 16:09:50.889888', '127.0.0.1', '2', 'java微服务和大数据', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (106, '2020-11-12 16:10:31.109557', '127.0.0.1', '1', 'html的概述和基本结构', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (107, '2020-11-12 16:39:39.855958', '127.0.0.1', '1', '《python》课程的章节 >>', 'change', '修改 image 和 teacher', 15, 2);
INSERT INTO `xadmin_log` VALUES (108, '2020-11-12 16:42:42.814348', '127.0.0.1', '3', 'python简介', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (109, '2020-11-12 16:44:24.707615', '127.0.0.1', '3', 'python简介', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (110, '2020-11-12 16:56:02.346083', '127.0.0.1', '3', 'python简介', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (111, '2020-11-12 17:04:38.518444', '127.0.0.1', '3', 'python简介', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (112, '2020-11-12 17:05:59.648817', '127.0.0.1', '3', 'python简介', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (113, '2020-11-12 17:07:54.333796', '127.0.0.1', '3', 'python简介', 'change', '没有字段被修改。', 17, 2);
INSERT INTO `xadmin_log` VALUES (114, '2020-11-12 17:08:33.338076', '127.0.0.1', '4', '列表，字典，元组和字符串的用法', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (115, '2020-11-12 17:08:40.813230', '127.0.0.1', '4', '列表，字典，元组和字符串的用法', 'change', '修改 learn_times', 17, 2);
INSERT INTO `xadmin_log` VALUES (116, '2020-11-12 17:08:45.759751', '127.0.0.1', '3', 'python简介', 'change', '修改 learn_times', 17, 2);
INSERT INTO `xadmin_log` VALUES (117, '2020-11-12 17:10:39.177155', '127.0.0.1', '4', '列表，字典，元组和字符串的用法', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (118, '2020-11-12 17:11:08.443632', '127.0.0.1', '4', '列表，字典，元组和字符串的用法', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (119, '2020-11-12 17:15:57.769353', '127.0.0.1', '2', 'java微服务和大数据', 'change', '修改 url 和 learn_times', 17, 2);
INSERT INTO `xadmin_log` VALUES (120, '2020-11-12 17:16:06.978102', '127.0.0.1', '1', 'html的概述和基本结构', 'change', '修改 learn_times', 17, 2);
INSERT INTO `xadmin_log` VALUES (121, '2020-11-12 17:16:23.578026', '127.0.0.1', '1', 'html的概述和基本结构', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (122, '2020-11-12 17:17:57.443951', '127.0.0.1', '2', 'java微服务和大数据', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (123, '2020-11-12 17:18:49.441672', '127.0.0.1', '1', 'html的概述和基本结构', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (124, '2020-11-12 17:19:02.289042', '127.0.0.1', '2', 'java微服务和大数据', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (125, '2020-11-12 17:21:00.614498', '127.0.0.1', '2', 'java微服务和大数据', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (126, '2020-11-12 17:22:19.762291', '127.0.0.1', '1', 'html的概述和基本结构', 'change', '修改 url', 17, 2);
INSERT INTO `xadmin_log` VALUES (127, '2020-11-12 17:25:07.435469', '127.0.0.1', '2', '《java》计算机编程语言', 'change', '修改 image 和 course_org', 15, 2);
INSERT INTO `xadmin_log` VALUES (128, '2020-11-12 17:25:23.049366', '127.0.0.1', '3', '《H5》全栈工程师前端开发', 'change', '修改 image 和 course_org', 15, 2);
INSERT INTO `xadmin_log` VALUES (129, '2020-11-12 19:29:14.431308', '127.0.0.1', '13', '1669853607@qq.com', 'delete', '', 14, 2);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (2, 'dashboard:home:pos', '', 2);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
