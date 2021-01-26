CREATE DATABASE  `book-order`;
USE `book-order`;
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
 `id` INT(10) NOT NULL AUTO_INCREMENT,
 `product_id` INT(10) NOT NULL DEFAULT '0' COMMENT '��Ʒ ID',
 `price` INT(10) DEFAULT '0' COMMENT '�۸�',
 `user_id` INT(10) DEFAULT '0' COMMENT '�û��˺� ID',
 `trade_id` INT(10) DEFAULT '0' COMMENT '���׺� ID',
 `trade_status` TINYINT(1) DEFAULT '0' COMMENT '֧��״̬ 0=δ֧�� 1=��֧��',
 `deleted` TINYINT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ɾ����־��Ĭ�� 0 ��ɾ����1 ɾ��',
 `create_time` datetime NOT NULL  COMMENT '����ʱ��',
 `update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;