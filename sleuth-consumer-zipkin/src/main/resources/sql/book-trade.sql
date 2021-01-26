CREATE DATABASE;
USE `book-trade`;
DROP TABLE IF EXISTS `trade`;
CREATE TABLE `trade` (
 `id` INT(10) NOT NULL AUTO_INCREMENT COMMENT 'IID',
 `order_id` INT(10) NOT NULL COMMENT '���� ID',
 `user_id` INT(10) NOT NULL COMMENT '�û� ID',
 `price` INT(10) NOT NULL COMMENT '֧����',
 `pay_status` TINYINT(4) NOT NULL COMMENT '1 δ���� 2 ������ 3 ����ʧ�� 4 �������',
 `pay_type` TINYINT(4) NOT NULL COMMENT '֧������:1-֧����֧����2-�������ߣ�3-������4-΢��֧��',
 `gateway_pay_num` VARCHAR(30) DEFAULT NULL COMMENT '����֧����ˮ��',
 `gateway_pay_time` DATETIME DEFAULT NULL COMMENT '����֧��ʱ��',
 `gateway_pay_price` INT(10) NOT NULL DEFAULT '0' COMMENT '����ʵ��֧�����',
 `deleted` TINYINT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ɾ����־��Ĭ�� 0 ��ɾ����1 ɾ��',
 `create_time` datetime NOT NULL  COMMENT '����ʱ��',
 `update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
 PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='����';