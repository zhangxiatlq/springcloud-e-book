CREATE DATABASE;
USE `book-user`;
/*Table structure for table `user` */
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
 `id` INT(10) NOT NULL AUTO_INCREMENT COMMENT '��������',
 `user_name` VARCHAR(50) DEFAULT NULL COMMENT '�û���',
 `password` VARCHAR(50) NOT NULL COMMENT '����',
 `email` VARCHAR(50) NOT NULL COMMENT 'email',
 `deleted` TINYINT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ɾ����־��Ĭ�� 0 ��ɾ����1 ɾ��',
 `create_time` datetime NOT NULL  COMMENT '����ʱ��',
 `update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
 PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 
COMMENT='�û���';
INSERT INTO 
`user`(`id`,`user_name`,`password`,`email`,`deleted`,`create_time`,`update_time`) 
VALUES (1,'admin','admin','dengpbs@163.com',0,'2019-06-16 12:56:31','2019-06-16 14:47:25');