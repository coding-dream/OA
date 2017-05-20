/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : wenjun

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-05-11 15:51:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `center_role_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `center_role_privilege`;
CREATE TABLE `center_role_privilege` (
  `privilege_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`role_id`,`privilege_id`),
  KEY `FK_3pm14vfyndiklpvcs2toq1qfe` (`privilege_id`),
  CONSTRAINT `FK_3pm14vfyndiklpvcs2toq1qfe` FOREIGN KEY (`privilege_id`) REFERENCES `wenjun_privilege` (`zj_privilege_id`),
  CONSTRAINT `FK_ojl0sih24ddjjxma6gasw7t4i` FOREIGN KEY (`role_id`) REFERENCES `wenjun_role` (`zj_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of center_role_privilege
-- ----------------------------
INSERT INTO `center_role_privilege` VALUES ('18', '2');
INSERT INTO `center_role_privilege` VALUES ('19', '2');
INSERT INTO `center_role_privilege` VALUES ('21', '2');

-- ----------------------------
-- Table structure for `center_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `center_user_role`;
CREATE TABLE `center_user_role` (
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`user_id`,`role_id`),
  KEY `FK_1th1im8d3i86ncgwvnm19yo0` (`role_id`),
  CONSTRAINT `FK_1th1im8d3i86ncgwvnm19yo0` FOREIGN KEY (`role_id`) REFERENCES `wenjun_role` (`zj_role_id`),
  CONSTRAINT `FK_tln86cl4mq3tmknujle1mujq5` FOREIGN KEY (`user_id`) REFERENCES `wenjun_user` (`zj_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of center_user_role
-- ----------------------------
INSERT INTO `center_user_role` VALUES ('1', '102');
INSERT INTO `center_user_role` VALUES ('2', '2');
INSERT INTO `center_user_role` VALUES ('2', '3');
INSERT INTO `center_user_role` VALUES ('2', '4');
INSERT INTO `center_user_role` VALUES ('2', '5');
INSERT INTO `center_user_role` VALUES ('2', '6');
INSERT INTO `center_user_role` VALUES ('2', '7');
INSERT INTO `center_user_role` VALUES ('2', '8');
INSERT INTO `center_user_role` VALUES ('2', '9');
INSERT INTO `center_user_role` VALUES ('2', '10');
INSERT INTO `center_user_role` VALUES ('2', '11');
INSERT INTO `center_user_role` VALUES ('2', '12');
INSERT INTO `center_user_role` VALUES ('2', '13');
INSERT INTO `center_user_role` VALUES ('2', '14');
INSERT INTO `center_user_role` VALUES ('2', '15');
INSERT INTO `center_user_role` VALUES ('2', '16');
INSERT INTO `center_user_role` VALUES ('2', '17');
INSERT INTO `center_user_role` VALUES ('2', '18');
INSERT INTO `center_user_role` VALUES ('2', '19');
INSERT INTO `center_user_role` VALUES ('2', '20');
INSERT INTO `center_user_role` VALUES ('2', '21');
INSERT INTO `center_user_role` VALUES ('2', '22');
INSERT INTO `center_user_role` VALUES ('2', '23');
INSERT INTO `center_user_role` VALUES ('2', '24');
INSERT INTO `center_user_role` VALUES ('2', '25');
INSERT INTO `center_user_role` VALUES ('2', '26');
INSERT INTO `center_user_role` VALUES ('2', '27');
INSERT INTO `center_user_role` VALUES ('2', '28');
INSERT INTO `center_user_role` VALUES ('2', '29');
INSERT INTO `center_user_role` VALUES ('2', '30');
INSERT INTO `center_user_role` VALUES ('2', '31');
INSERT INTO `center_user_role` VALUES ('2', '32');
INSERT INTO `center_user_role` VALUES ('2', '33');
INSERT INTO `center_user_role` VALUES ('2', '34');
INSERT INTO `center_user_role` VALUES ('2', '35');
INSERT INTO `center_user_role` VALUES ('2', '36');
INSERT INTO `center_user_role` VALUES ('2', '37');
INSERT INTO `center_user_role` VALUES ('2', '38');
INSERT INTO `center_user_role` VALUES ('2', '39');
INSERT INTO `center_user_role` VALUES ('2', '40');
INSERT INTO `center_user_role` VALUES ('2', '41');
INSERT INTO `center_user_role` VALUES ('2', '42');
INSERT INTO `center_user_role` VALUES ('2', '43');
INSERT INTO `center_user_role` VALUES ('2', '44');
INSERT INTO `center_user_role` VALUES ('2', '45');
INSERT INTO `center_user_role` VALUES ('2', '46');
INSERT INTO `center_user_role` VALUES ('2', '47');
INSERT INTO `center_user_role` VALUES ('2', '48');
INSERT INTO `center_user_role` VALUES ('2', '49');
INSERT INTO `center_user_role` VALUES ('2', '50');
INSERT INTO `center_user_role` VALUES ('2', '51');
INSERT INTO `center_user_role` VALUES ('2', '52');
INSERT INTO `center_user_role` VALUES ('2', '53');
INSERT INTO `center_user_role` VALUES ('2', '54');
INSERT INTO `center_user_role` VALUES ('2', '55');
INSERT INTO `center_user_role` VALUES ('2', '56');
INSERT INTO `center_user_role` VALUES ('2', '57');
INSERT INTO `center_user_role` VALUES ('2', '58');
INSERT INTO `center_user_role` VALUES ('2', '59');
INSERT INTO `center_user_role` VALUES ('2', '60');
INSERT INTO `center_user_role` VALUES ('2', '61');
INSERT INTO `center_user_role` VALUES ('2', '62');
INSERT INTO `center_user_role` VALUES ('2', '63');
INSERT INTO `center_user_role` VALUES ('2', '64');
INSERT INTO `center_user_role` VALUES ('2', '65');
INSERT INTO `center_user_role` VALUES ('2', '66');
INSERT INTO `center_user_role` VALUES ('2', '67');
INSERT INTO `center_user_role` VALUES ('2', '68');
INSERT INTO `center_user_role` VALUES ('2', '69');
INSERT INTO `center_user_role` VALUES ('2', '70');
INSERT INTO `center_user_role` VALUES ('2', '71');
INSERT INTO `center_user_role` VALUES ('2', '72');
INSERT INTO `center_user_role` VALUES ('2', '73');
INSERT INTO `center_user_role` VALUES ('2', '74');
INSERT INTO `center_user_role` VALUES ('2', '75');
INSERT INTO `center_user_role` VALUES ('2', '76');
INSERT INTO `center_user_role` VALUES ('2', '77');
INSERT INTO `center_user_role` VALUES ('2', '78');
INSERT INTO `center_user_role` VALUES ('2', '79');
INSERT INTO `center_user_role` VALUES ('2', '80');
INSERT INTO `center_user_role` VALUES ('2', '81');
INSERT INTO `center_user_role` VALUES ('2', '82');
INSERT INTO `center_user_role` VALUES ('2', '83');
INSERT INTO `center_user_role` VALUES ('2', '84');
INSERT INTO `center_user_role` VALUES ('2', '85');
INSERT INTO `center_user_role` VALUES ('2', '86');
INSERT INTO `center_user_role` VALUES ('2', '87');
INSERT INTO `center_user_role` VALUES ('2', '88');
INSERT INTO `center_user_role` VALUES ('2', '89');
INSERT INTO `center_user_role` VALUES ('2', '90');
INSERT INTO `center_user_role` VALUES ('2', '91');
INSERT INTO `center_user_role` VALUES ('2', '92');
INSERT INTO `center_user_role` VALUES ('2', '93');
INSERT INTO `center_user_role` VALUES ('2', '94');
INSERT INTO `center_user_role` VALUES ('2', '95');
INSERT INTO `center_user_role` VALUES ('2', '96');
INSERT INTO `center_user_role` VALUES ('2', '97');
INSERT INTO `center_user_role` VALUES ('2', '98');
INSERT INTO `center_user_role` VALUES ('2', '99');
INSERT INTO `center_user_role` VALUES ('2', '100');
INSERT INTO `center_user_role` VALUES ('2', '101');

-- ----------------------------
-- Table structure for `testuser`
-- ----------------------------
DROP TABLE IF EXISTS `testuser`;
CREATE TABLE `testuser` (
  `id` bigint(20) NOT NULL auto_increment,
  `age` int(11) NOT NULL,
  `email` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testuser
-- ----------------------------

-- ----------------------------
-- Table structure for `wenjun_department`
-- ----------------------------
DROP TABLE IF EXISTS `wenjun_department`;
CREATE TABLE `wenjun_department` (
  `zj_depart_id` bigint(20) NOT NULL auto_increment,
  `description` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `parent_id` bigint(20) default NULL,
  PRIMARY KEY  (`zj_depart_id`),
  KEY `FK_owxaanltx6svapab04duo0sf4` (`parent_id`),
  CONSTRAINT `FK_owxaanltx6svapab04duo0sf4` FOREIGN KEY (`parent_id`) REFERENCES `wenjun_department` (`zj_depart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wenjun_department
-- ----------------------------
INSERT INTO `wenjun_department` VALUES ('1', '前端销售，后端销售，商务组', '市场部', null);
INSERT INTO `wenjun_department` VALUES ('2', '研发部，GO组，PHP组，UI组', '研发部', null);
INSERT INTO `wenjun_department` VALUES ('3', '日常后勤，人事', '行政部', null);
INSERT INTO `wenjun_department` VALUES ('4', '掌管经济大权', '财务部', null);
INSERT INTO `wenjun_department` VALUES ('5', '微信运营组，PC运营组', '运营部', null);

-- ----------------------------
-- Table structure for `wenjun_leave`
-- ----------------------------
DROP TABLE IF EXISTS `wenjun_leave`;
CREATE TABLE `wenjun_leave` (
  `leave_id` bigint(20) NOT NULL auto_increment,
  `approverid` varchar(255) default NULL,
  `createTime` datetime default NULL,
  `days` float NOT NULL,
  `endTime` datetime default NULL,
  `picture` varchar(255) default NULL,
  `reason` varchar(255) default NULL,
  `result` int(11) NOT NULL,
  `startTime` datetime default NULL,
  `status` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `updateTime` datetime default NULL,
  `userId` bigint(20) default NULL,
  PRIMARY KEY  (`leave_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wenjun_leave
-- ----------------------------

-- ----------------------------
-- Table structure for `wenjun_leaveapprover`
-- ----------------------------
DROP TABLE IF EXISTS `wenjun_leaveapprover`;
CREATE TABLE `wenjun_leaveapprover` (
  `approver_id` bigint(20) NOT NULL auto_increment,
  `createTime` datetime default NULL,
  `leaveId` bigint(20) default NULL,
  `status` int(11) NOT NULL,
  `summary` varchar(255) default NULL,
  `updateTime` datetime default NULL,
  `userId` bigint(20) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`approver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wenjun_leaveapprover
-- ----------------------------

-- ----------------------------
-- Table structure for `wenjun_message`
-- ----------------------------
DROP TABLE IF EXISTS `wenjun_message`;
CREATE TABLE `wenjun_message` (
  `message_id` bigint(20) NOT NULL auto_increment,
  `createTime` datetime default NULL,
  `disable` bit(1) NOT NULL,
  `leaveId` bigint(20) default NULL,
  `ringsId` int(11) NOT NULL,
  `title` varchar(255) default NULL,
  `type` int(11) NOT NULL,
  `userId` bigint(20) default NULL,
  `watch` int(11) NOT NULL,
  PRIMARY KEY  (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wenjun_message
-- ----------------------------

-- ----------------------------
-- Table structure for `wenjun_notice`
-- ----------------------------
DROP TABLE IF EXISTS `wenjun_notice`;
CREATE TABLE `wenjun_notice` (
  `notice_id` bigint(20) NOT NULL auto_increment,
  `content` longtext,
  `createTime` datetime default NULL,
  PRIMARY KEY  (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wenjun_notice
-- ----------------------------
INSERT INTO `wenjun_notice` VALUES ('1', '各部门:\n        依国务院办公厅通知，2017年清明节放假时间为4月2日至4月4日共3天，\n4月1号(星期六)正常上班。\n        为保障假后工作的正常运行，请各位同事离开工作岗位的同时检查好各项设备的运行情况，并关闭所有的电子设备，包括电脑，电视，空调，饮水机等。节假出行注意安全。\n           特此通知！​\n                                                                                                                                文珺信息科技有限公司\n                                                                                                                                2017年5月15日', '2017-05-11 15:33:11');

-- ----------------------------
-- Table structure for `wenjun_photo`
-- ----------------------------
DROP TABLE IF EXISTS `wenjun_photo`;
CREATE TABLE `wenjun_photo` (
  `photo_id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `userId` bigint(20) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wenjun_photo
-- ----------------------------

-- ----------------------------
-- Table structure for `wenjun_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `wenjun_privilege`;
CREATE TABLE `wenjun_privilege` (
  `zj_privilege_id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `parent_id` bigint(20) default NULL,
  PRIMARY KEY  (`zj_privilege_id`),
  KEY `FK_4c87uo21v8giurqt2qf1sbjxl` (`parent_id`),
  CONSTRAINT `FK_4c87uo21v8giurqt2qf1sbjxl` FOREIGN KEY (`parent_id`) REFERENCES `wenjun_privilege` (`zj_privilege_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wenjun_privilege
-- ----------------------------
INSERT INTO `wenjun_privilege` VALUES ('1', '系统管理', null, null);
INSERT INTO `wenjun_privilege` VALUES ('2', '岗位管理', '/role_list', '1');
INSERT INTO `wenjun_privilege` VALUES ('3', '部门管理', '/department_list', '1');
INSERT INTO `wenjun_privilege` VALUES ('4', '用户管理', '/user_list', '1');
INSERT INTO `wenjun_privilege` VALUES ('5', '岗位列表', '/role_list', '2');
INSERT INTO `wenjun_privilege` VALUES ('6', '岗位删除', '/role_delete', '2');
INSERT INTO `wenjun_privilege` VALUES ('7', '岗位添加', '/role_add', '2');
INSERT INTO `wenjun_privilege` VALUES ('8', '岗位修改', '/role_edit', '2');
INSERT INTO `wenjun_privilege` VALUES ('9', '部门列表', '/department_list', '3');
INSERT INTO `wenjun_privilege` VALUES ('10', '部门删除', '/department_delete', '3');
INSERT INTO `wenjun_privilege` VALUES ('11', '部门添加', '/department_add', '3');
INSERT INTO `wenjun_privilege` VALUES ('12', '部门修改', '/department_edit', '3');
INSERT INTO `wenjun_privilege` VALUES ('13', '用户列表', '/user_list', '4');
INSERT INTO `wenjun_privilege` VALUES ('14', '用户删除', '/user_delete', '4');
INSERT INTO `wenjun_privilege` VALUES ('15', '用户添加', '/user_add', '4');
INSERT INTO `wenjun_privilege` VALUES ('16', '用户修改', '/user_edit', '4');
INSERT INTO `wenjun_privilege` VALUES ('17', '初始化密码', '/user_initPassword', '4');
INSERT INTO `wenjun_privilege` VALUES ('18', '审批管理', null, null);
INSERT INTO `wenjun_privilege` VALUES ('19', '起草申请', '/flow_applyTypeListUI', '18');
INSERT INTO `wenjun_privilege` VALUES ('20', '待我审批', '/flow_myMessageList', '18');
INSERT INTO `wenjun_privilege` VALUES ('21', '我的申请查询', '/flow_leaveList', '18');

-- ----------------------------
-- Table structure for `wenjun_role`
-- ----------------------------
DROP TABLE IF EXISTS `wenjun_role`;
CREATE TABLE `wenjun_role` (
  `zj_role_id` bigint(20) NOT NULL auto_increment,
  `description` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`zj_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wenjun_role
-- ----------------------------
INSERT INTO `wenjun_role` VALUES ('1', '管理公司日常事务', '经理');
INSERT INTO `wenjun_role` VALUES ('2', '公司员工', '员工');

-- ----------------------------
-- Table structure for `wenjun_user`
-- ----------------------------
DROP TABLE IF EXISTS `wenjun_user`;
CREATE TABLE `wenjun_user` (
  `zj_user_id` bigint(20) NOT NULL auto_increment,
  `createTime` datetime default NULL,
  `description` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `gender` varchar(255) default NULL,
  `loginName` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `phoneNumber` varchar(255) default NULL,
  `depart_id` bigint(20) default NULL,
  PRIMARY KEY  (`zj_user_id`),
  UNIQUE KEY `UK_8oo0shuom69ed1w3pjnsmwna8` (`loginName`),
  KEY `FK_14m4495gpcgau9i3kfj1q76o2` (`depart_id`),
  CONSTRAINT `FK_14m4495gpcgau9i3kfj1q76o2` FOREIGN KEY (`depart_id`) REFERENCES `wenjun_department` (`zj_depart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wenjun_user
-- ----------------------------
INSERT INTO `wenjun_user` VALUES ('1', null, null, null, null, 'admin', '超级管理员', '21232f297a57a5a743894a0e4a801fc3', null, null);
INSERT INTO `wenjun_user` VALUES ('2', '2017-05-11 15:33:11', null, null, null, 'wangli0', '王立0', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('3', '2017-05-11 15:33:11', null, null, null, 'wangli1', '王立1', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('4', '2017-05-11 15:33:11', null, null, null, 'wangli2', '王立2', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('5', '2017-05-11 15:33:11', null, null, null, 'wangli3', '王立3', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('6', '2017-05-11 15:33:11', null, null, null, 'wangli4', '王立4', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('7', '2017-05-11 15:33:11', null, null, null, 'wangli5', '王立5', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('8', '2017-05-11 15:33:11', null, null, null, 'wangli6', '王立6', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('9', '2017-05-11 15:33:11', null, null, null, 'wangli7', '王立7', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('10', '2017-05-11 15:33:11', null, null, null, 'wangli8', '王立8', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('11', '2017-05-11 15:33:11', null, null, null, 'wangli9', '王立9', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('12', '2017-05-11 15:33:11', null, null, null, 'wangli10', '王立10', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('13', '2017-05-11 15:33:11', null, null, null, 'wangli11', '王立11', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('14', '2017-05-11 15:33:11', null, null, null, 'wangli12', '王立12', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('15', '2017-05-11 15:33:11', null, null, null, 'wangli13', '王立13', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('16', '2017-05-11 15:33:11', null, null, null, 'wangli14', '王立14', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('17', '2017-05-11 15:33:11', null, null, null, 'wangli15', '王立15', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('18', '2017-05-11 15:33:11', null, null, null, 'wangli16', '王立16', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('19', '2017-05-11 15:33:11', null, null, null, 'wangli17', '王立17', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('20', '2017-05-11 15:33:11', null, null, null, 'wangli18', '王立18', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('21', '2017-05-11 15:33:11', null, null, null, 'wangli19', '王立19', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('22', '2017-05-11 15:33:11', null, null, null, 'wangli20', '王立20', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('23', '2017-05-11 15:33:11', null, null, null, 'wangli21', '王立21', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('24', '2017-05-11 15:33:11', null, null, null, 'wangli22', '王立22', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('25', '2017-05-11 15:33:11', null, null, null, 'wangli23', '王立23', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('26', '2017-05-11 15:33:11', null, null, null, 'wangli24', '王立24', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('27', '2017-05-11 15:33:11', null, null, null, 'wangli25', '王立25', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('28', '2017-05-11 15:33:11', null, null, null, 'wangli26', '王立26', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('29', '2017-05-11 15:33:11', null, null, null, 'wangli27', '王立27', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('30', '2017-05-11 15:33:11', null, null, null, 'wangli28', '王立28', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('31', '2017-05-11 15:33:11', null, null, null, 'wangli29', '王立29', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('32', '2017-05-11 15:33:11', null, null, null, 'wangli30', '王立30', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('33', '2017-05-11 15:33:11', null, null, null, 'wangli31', '王立31', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('34', '2017-05-11 15:33:11', null, null, null, 'wangli32', '王立32', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('35', '2017-05-11 15:33:11', null, null, null, 'wangli33', '王立33', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('36', '2017-05-11 15:33:11', null, null, null, 'wangli34', '王立34', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('37', '2017-05-11 15:33:11', null, null, null, 'wangli35', '王立35', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('38', '2017-05-11 15:33:11', null, null, null, 'wangli36', '王立36', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('39', '2017-05-11 15:33:11', null, null, null, 'wangli37', '王立37', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('40', '2017-05-11 15:33:11', null, null, null, 'wangli38', '王立38', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('41', '2017-05-11 15:33:11', null, null, null, 'wangli39', '王立39', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('42', '2017-05-11 15:33:11', null, null, null, 'wangli40', '王立40', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('43', '2017-05-11 15:33:11', null, null, null, 'wangli41', '王立41', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('44', '2017-05-11 15:33:11', null, null, null, 'wangli42', '王立42', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('45', '2017-05-11 15:33:11', null, null, null, 'wangli43', '王立43', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('46', '2017-05-11 15:33:11', null, null, null, 'wangli44', '王立44', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('47', '2017-05-11 15:33:11', null, null, null, 'wangli45', '王立45', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('48', '2017-05-11 15:33:11', null, null, null, 'wangli46', '王立46', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('49', '2017-05-11 15:33:11', null, null, null, 'wangli47', '王立47', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('50', '2017-05-11 15:33:11', null, null, null, 'wangli48', '王立48', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('51', '2017-05-11 15:33:11', null, null, null, 'wangli49', '王立49', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('52', '2017-05-11 15:33:11', null, null, null, 'wangli50', '王立50', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('53', '2017-05-11 15:33:11', null, null, null, 'wangli51', '王立51', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('54', '2017-05-11 15:33:11', null, null, null, 'wangli52', '王立52', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('55', '2017-05-11 15:33:11', null, null, null, 'wangli53', '王立53', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('56', '2017-05-11 15:33:11', null, null, null, 'wangli54', '王立54', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('57', '2017-05-11 15:33:11', null, null, null, 'wangli55', '王立55', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('58', '2017-05-11 15:33:11', null, null, null, 'wangli56', '王立56', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('59', '2017-05-11 15:33:11', null, null, null, 'wangli57', '王立57', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('60', '2017-05-11 15:33:11', null, null, null, 'wangli58', '王立58', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('61', '2017-05-11 15:33:11', null, null, null, 'wangli59', '王立59', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('62', '2017-05-11 15:33:11', null, null, null, 'wangli60', '王立60', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('63', '2017-05-11 15:33:11', null, null, null, 'wangli61', '王立61', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('64', '2017-05-11 15:33:11', null, null, null, 'wangli62', '王立62', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('65', '2017-05-11 15:33:11', null, null, null, 'wangli63', '王立63', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('66', '2017-05-11 15:33:11', null, null, null, 'wangli64', '王立64', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('67', '2017-05-11 15:33:11', null, null, null, 'wangli65', '王立65', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('68', '2017-05-11 15:33:11', null, null, null, 'wangli66', '王立66', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('69', '2017-05-11 15:33:11', null, null, null, 'wangli67', '王立67', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('70', '2017-05-11 15:33:11', null, null, null, 'wangli68', '王立68', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('71', '2017-05-11 15:33:11', null, null, null, 'wangli69', '王立69', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('72', '2017-05-11 15:33:11', null, null, null, 'wangli70', '王立70', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('73', '2017-05-11 15:33:11', null, null, null, 'wangli71', '王立71', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('74', '2017-05-11 15:33:11', null, null, null, 'wangli72', '王立72', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('75', '2017-05-11 15:33:11', null, null, null, 'wangli73', '王立73', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('76', '2017-05-11 15:33:11', null, null, null, 'wangli74', '王立74', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('77', '2017-05-11 15:33:11', null, null, null, 'wangli75', '王立75', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('78', '2017-05-11 15:33:11', null, null, null, 'wangli76', '王立76', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('79', '2017-05-11 15:33:11', null, null, null, 'wangli77', '王立77', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('80', '2017-05-11 15:33:11', null, null, null, 'wangli78', '王立78', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('81', '2017-05-11 15:33:11', null, null, null, 'wangli79', '王立79', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('82', '2017-05-11 15:33:11', null, null, null, 'wangli80', '王立80', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('83', '2017-05-11 15:33:11', null, null, null, 'wangli81', '王立81', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('84', '2017-05-11 15:33:11', null, null, null, 'wangli82', '王立82', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('85', '2017-05-11 15:33:11', null, null, null, 'wangli83', '王立83', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('86', '2017-05-11 15:33:11', null, null, null, 'wangli84', '王立84', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('87', '2017-05-11 15:33:11', null, null, null, 'wangli85', '王立85', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('88', '2017-05-11 15:33:11', null, null, null, 'wangli86', '王立86', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('89', '2017-05-11 15:33:11', null, null, null, 'wangli87', '王立87', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('90', '2017-05-11 15:33:11', null, null, null, 'wangli88', '王立88', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('91', '2017-05-11 15:33:11', null, null, null, 'wangli89', '王立89', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('92', '2017-05-11 15:33:11', null, null, null, 'wangli90', '王立90', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('93', '2017-05-11 15:33:11', null, null, null, 'wangli91', '王立91', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('94', '2017-05-11 15:33:11', null, null, null, 'wangli92', '王立92', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('95', '2017-05-11 15:33:11', null, null, null, 'wangli93', '王立93', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('96', '2017-05-11 15:33:11', null, null, null, 'wangli94', '王立94', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('97', '2017-05-11 15:33:11', null, null, null, 'wangli95', '王立95', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('98', '2017-05-11 15:33:11', null, null, null, 'wangli96', '王立96', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('99', '2017-05-11 15:33:11', null, null, null, 'wangli97', '王立97', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('100', '2017-05-11 15:33:11', null, null, null, 'wangli98', '王立98', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('101', '2017-05-11 15:33:11', null, null, null, 'wangli99', '王立99', '81dc9bdb52d04dc20036dbd8313ed055', null, null);
INSERT INTO `wenjun_user` VALUES ('102', '2017-05-11 15:43:21', '财务总管', '625325325@qq.com', '', 'xiangdinghao', '项鼎皓', '81dc9bdb52d04dc20036dbd8313ed055', '15083393252', '4');
