/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : tpfd3.0

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-03-13 22:13:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wf_sfdp_design
-- ----------------------------
DROP TABLE IF EXISTS `wf_sfdp_design`;
CREATE TABLE `wf_sfdp_design` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_bill` varchar(255) DEFAULT NULL COMMENT '表单名称',
  `s_title` varchar(255) DEFAULT NULL COMMENT '表名',
  `s_db` varchar(255) DEFAULT NULL COMMENT '数据库表名',
  `s_search` longtext,
  `s_list` longtext,
  `s_design` int(1) unsigned zerofill NOT NULL DEFAULT '0' COMMENT '设计状态0：设计中|1：开始设计|2：启用部署',
  `s_look` int(1) unsigned zerofill NOT NULL DEFAULT '0' COMMENT '是否锁定',
  `s_field` longtext,
  `add_user` varchar(255) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `s_db_bak` int(1) NOT NULL DEFAULT '0' COMMENT '0：不存在备份表 1：存在',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_sfdp_design
-- ----------------------------
INSERT INTO `wf_sfdp_design` VALUES ('2', 'J310101692216325', '员工请假单', 'userqj', '[]', '[{\"tpfd_id\":\"text_4440264\",\"tr_id\":\"Tr113041285\",\"tpfd_db\":\"user\",\"tpfd_dbcd\":\"255\",\"tpfd_dblx\":\"int\",\"tpfd_name\":\"\\u59d3\\u540d\",\"tpfd_list\":\"yes\",\"tpfd_chaxun\":\"no\",\"tpfd_show\":\"no\",\"td\":\"1\",\"td_type\":\"text\"},{\"tpfd_id\":\"checkboxes_4441747\",\"tr_id\":\"Tr113041285\",\"tpfd_db\":\"sex\",\"tpfd_dbcd\":\"10\",\"tpfd_dblx\":\"int\",\"tpfd_name\":\"\\u6027\\u522b\",\"tpfd_list\":\"yes\",\"tpfd_chaxun\":\"no\",\"tpfd_show\":\"no\",\"tpfd_data\":[\"\\u7537\",\"\\u5973\"],\"tpfd_check\":\"1\",\"xx_type\":\"1\",\"checkboxes_func\":\"func_aaaa\",\"td\":\"2\",\"td_type\":\"checkboxes\"},{\"tpfd_id\":\"text_4443411\",\"tr_id\":\"Tr113041924\",\"tpfd_db\":\"days\",\"tpfd_dbcd\":\"1\",\"tpfd_dblx\":\"int\",\"tpfd_name\":\"\\u8bf7\\u5047\\u65f6\\u95f4\",\"tpfd_list\":\"yes\",\"tpfd_chaxun\":\"no\",\"tpfd_show\":\"no\",\"td\":\"1\",\"td_type\":\"text\"},{\"tpfd_id\":\"text_4444636\",\"tr_id\":\"Tr113041924\",\"tpfd_db\":\"qjly\",\"tpfd_dbcd\":\"255\",\"tpfd_dblx\":\"varchar\",\"tpfd_name\":\"\\u8bf7\\u5047\\u4e8b\\u7531\",\"tpfd_list\":\"yes\",\"tpfd_chaxun\":\"no\",\"tpfd_show\":\"no\",\"td\":\"2\",\"td_type\":\"text\"},{\"tpfd_id\":\"text_444644\",\"tr_id\":\"Tr113041924\",\"tpfd_db\":\"bz\",\"tpfd_dbcd\":\"255\",\"tpfd_dblx\":\"varchar\",\"tpfd_name\":\"\\u5907\\u6ce8\",\"tpfd_list\":\"yes\",\"tpfd_chaxun\":\"no\",\"tpfd_show\":\"no\",\"td\":\"3\",\"td_type\":\"text\"}]', '2', '1', '{\"name\":\"员工请假单\",\"name_db\":\"userqj\",\"tpfd_id\":\"SFDP1647895\",\"tpfd_class\":\"\",\"tpfd_fun\":\"\",\"tpfd_script\":\"\",\"list\":{\"Tr11304016\":{\"tr\":\"Tr11304016\",\"data\":{},\"type\":1},\"Tr113041285\":{\"tr\":\"Tr113041285\",\"data\":{\"text_4440264\":{\"tpfd_id\":\"text_4440264\",\"tr_id\":\"Tr113041285\",\"tpfd_db\":\"user\",\"tpfd_dbcd\":\"255\",\"tpfd_dblx\":\"int\",\"tpfd_name\":\"姓名\",\"tpfd_list\":\"yes\",\"tpfd_chaxun\":\"no\",\"tpfd_show\":\"no\",\"td\":\"1\",\"td_type\":\"text\"},\"checkboxes_4441747\":{\"tpfd_id\":\"checkboxes_4441747\",\"tr_id\":\"Tr113041285\",\"tpfd_db\":\"sex\",\"tpfd_dbcd\":\"10\",\"tpfd_dblx\":\"int\",\"tpfd_name\":\"性别\",\"tpfd_list\":\"yes\",\"tpfd_chaxun\":\"no\",\"tpfd_show\":\"no\",\"tpfd_data\":[\"男\",\"女\"],\"tpfd_check\":\"1\",\"xx_type\":\"1\",\"checkboxes_func\":\"func_aaaa\",\"td\":\"2\",\"td_type\":\"checkboxes\"}},\"type\":2},\"Tr113041924\":{\"tr\":\"Tr113041924\",\"data\":{\"text_4443411\":{\"tpfd_id\":\"text_4443411\",\"tr_id\":\"Tr113041924\",\"tpfd_db\":\"days\",\"tpfd_dbcd\":\"1\",\"tpfd_dblx\":\"int\",\"tpfd_name\":\"请假时间\",\"tpfd_list\":\"yes\",\"tpfd_chaxun\":\"no\",\"tpfd_show\":\"no\",\"td\":\"1\",\"td_type\":\"text\"},\"text_4444636\":{\"tpfd_id\":\"text_4444636\",\"tr_id\":\"Tr113041924\",\"tpfd_db\":\"qjly\",\"tpfd_dbcd\":\"255\",\"tpfd_dblx\":\"varchar\",\"tpfd_name\":\"请假事由\",\"tpfd_list\":\"yes\",\"tpfd_chaxun\":\"no\",\"tpfd_show\":\"no\",\"td\":\"2\",\"td_type\":\"text\"},\"text_444644\":{\"tpfd_id\":\"text_444644\",\"tr_id\":\"Tr113041924\",\"tpfd_db\":\"bz\",\"tpfd_dbcd\":\"255\",\"tpfd_dblx\":\"varchar\",\"tpfd_name\":\"备注\",\"tpfd_list\":\"yes\",\"tpfd_chaxun\":\"no\",\"tpfd_show\":\"no\",\"td\":\"3\",\"td_type\":\"text\"}},\"type\":3}},\"tpfd_time\":\"2020-03-10 11:16:47\",\"tpfd_ver\":\"v3.0\"}', 'Sys', '1583810544', '0');

-- ----------------------------
-- Table structure for wf_sfdp_design_ver
-- ----------------------------
DROP TABLE IF EXISTS `wf_sfdp_design_ver`;
CREATE TABLE `wf_sfdp_design_ver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL COMMENT '关联ID',
  `s_bill` varchar(255) DEFAULT NULL COMMENT '业务编号',
  `s_name` varchar(255) NOT NULL COMMENT '业务名称',
  `s_db` varchar(255) NOT NULL COMMENT '数据表名',
  `s_list` longtext COMMENT '列表字段',
  `s_search` longtext COMMENT '查询字段',
  `s_fun_id` int(11) DEFAULT NULL,
  `s_fun_ver` longtext COMMENT '脚本版本',
  `s_field` longtext COMMENT '字段JSON',
  `add_user` int(2) DEFAULT NULL COMMENT '用户id',
  `add_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `status` int(1) unsigned zerofill NOT NULL DEFAULT '0' COMMENT '版本状态0:停用|1:启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_sfdp_design_ver
-- ----------------------------

-- ----------------------------
-- Table structure for wf_sfdp_function
-- ----------------------------
DROP TABLE IF EXISTS `wf_sfdp_function`;
CREATE TABLE `wf_sfdp_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL COMMENT '关联ID',
  `s_bill` varchar(255) DEFAULT NULL COMMENT '脚本编号',
  `s_fun` longtext COMMENT '脚本代码',
  `add_user` varchar(255) DEFAULT NULL COMMENT '添加用户',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_sfdp_function
-- ----------------------------
INSERT INTO `wf_sfdp_function` VALUES ('6', '2', 'J311254832944848', '', 'Sys', '1583925483');

-- ----------------------------
-- Table structure for wf_userqj
-- ----------------------------
DROP TABLE IF EXISTS `wf_userqj`;
CREATE TABLE `wf_userqj` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user` int(255) DEFAULT NULL COMMENT '姓名',
  `sex` int(10) DEFAULT NULL COMMENT '性别',
  `days` int(1) DEFAULT NULL COMMENT '请假时间',
  `qjly` varchar(255) DEFAULT NULL COMMENT '请假事由',
  `bz` varchar(255) DEFAULT NULL COMMENT '备注',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '审核状态',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '新增时间',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='userqj';

-- ----------------------------
-- Records of wf_userqj
-- ----------------------------
