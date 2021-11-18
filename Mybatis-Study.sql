create database mybatis;
use mybatis;

create table t_user
(
	user_id integer(20) not null primary key,
	user_name varchar(30) default null,
	user_pwd varchar(30) default null
)engine=innodb default charset=utf8;

insert into t_user (user_id, user_name, user_pwd) values
(1,'张三','123456'),
(2,'李四','123456'),
(3,'王五','123456');

CREATE TABLE teacher (
  id INT(10) NOT NULL,
  name VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8

INSERT INTO teacher (id, name) VALUES (1, '秦老师'); 

CREATE TABLE student (
  id INT(10) NOT NULL,
  name VARCHAR(30) DEFAULT NULL,
  tid INT(10) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fktid (tid),
  CONSTRAINT fktid FOREIGN KEY (tid) REFERENCES teacher (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8

INSERT INTO student (id, name, tid) VALUES (1, '小明', '1'); 
INSERT INTO student (id, name, tid) VALUES (2, '小红', '1'); 
INSERT INTO student (id, name, tid) VALUES (3, '小张', '1'); 
INSERT INTO student (id, name, tid) VALUES (4, '小李', '1'); 
INSERT INTO student (id, name, tid) VALUES (5, '小王', '1'); 



CREATE TABLE blog(
id VARCHAR(50) NOT NULL COMMENT '博客id',
title VARCHAR(100) NOT NULL COMMENT '博客标题',
author VARCHAR(30) NOT NULL COMMENT '博客作者',
create_time DATETIME NOT NULL COMMENT '创建时间',
views INT(30) NOT NULL COMMENT '浏览量'
)ENGINE=INNODB DEFAULT CHARSET=utf8


CREATE DATABASE smbms CHARACTER SET utf8 COLLATE utf8_general_ci;

use smbms;

CREATE TABLE address (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  contact VARCHAR(15) DEFAULT NULL COMMENT '联系人姓名',
  addressDesc VARCHAR(50) DEFAULT NULL COMMENT '收货地址',
  postCode VARCHAR(15) DEFAULT NULL COMMENT '邮编',
  tel INT(20) DEFAULT NULL COMMENT '联系人电话',
  createdBy VARCHAR(20) DEFAULT NULL COMMENT '创建者',
  creationDate DATETIME DEFAULT NULL COMMENT '创建时间',
  modifyBy BIGINT(20) DEFAULT NULL COMMENT '修改者',
  modifyDate DATETIME DEFAULT NULL COMMENT '修改时间',
  userId BIGINT(20) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE bill (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  billCode VARCHAR(30) DEFAULT NULL COMMENT '账单编码',
  productName VARCHAR(20) DEFAULT NULL COMMENT '商品名称',
  productDesc VARCHAR(50) DEFAULT NULL COMMENT '商品描述',
  productUnit VARCHAR(60) DEFAULT NULL COMMENT '商品数量',
  productCount DECIMAL(20,2) DEFAULT NULL COMMENT '总金额',
  totalPrice DECIMAL(20,2) DEFAULT NULL COMMENT '是否支付',
  isPayment INT(10) DEFAULT NULL COMMENT '供应商ID',
  createdBy BIGINT(20) DEFAULT NULL COMMENT '创建者',
  creationDate DATETIME DEFAULT NULL COMMENT '创建时间',
  modifyBy BIGINT(20) DEFAULT NULL COMMENT '更新者',
  modifyDate DATETIME DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE provider (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  proCode VARCHAR(15) DEFAULT NULL COMMENT '供应商编码',
  proName VARCHAR(15) DEFAULT NULL COMMENT '供应商名称',
  proDesc VARCHAR(50) DEFAULT NULL COMMENT '供应商描述',
  proContact VARCHAR(15) DEFAULT NULL COMMENT '供应商联系人',
  proPhone VARCHAR(20) DEFAULT NULL COMMENT '供应商电话',
  proAddress VARCHAR(30) DEFAULT NULL COMMENT '供应商地址',
  proFax VARCHAR(20) DEFAULT NULL COMMENT '供应商传真',
  createdBy BIGINT(20) DEFAULT NULL COMMENT '创建者',
  creationDate DATETIME DEFAULT NULL COMMENT '创建时间',
  modifyBy BIGINT(20) DEFAULT NULL COMMENT '更新者',
  modifyDate DATETIME DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE role (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  roleCode VARCHAR(30) DEFAULT NULL COMMENT '角色编码',
  roleName VARCHAR(15) DEFAULT NULL COMMENT '角色名称',
  createdBy BIGINT(20) DEFAULT NULL COMMENT '创建者',
  creationDate DATETIME DEFAULT NULL COMMENT '创建时间',
  modifyBy BIGINT(20) DEFAULT NULL COMMENT '更新者',
  modifyDate DATETIME DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE user (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  userCode VARCHAR(15) DEFAULT NULL COMMENT '用户编码',
  userName VARCHAR(15) DEFAULT NULL COMMENT '用户名字',
  userPassword VARCHAR(20) DEFAULT NULL COMMENT '用户密码',
  gender INT(10) DEFAULT NULL COMMENT '性别',
  birthday DATE DEFAULT NULL COMMENT '出生日期',
  phone VARCHAR(20) DEFAULT NULL COMMENT '电话',
  address VARCHAR(30) DEFAULT NULL COMMENT '地址',
  userRole BIGINT(20) DEFAULT NULL COMMENT '用户角色',
  createdBy BIGINT(20) DEFAULT NULL COMMENT '创建者',
  creationDate DATETIME DEFAULT NULL COMMENT '创建时间',
  modifyBy BIGINT(20) DEFAULT NULL COMMENT '更新者',
  modifyDate DATETIME DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8;











