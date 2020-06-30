
CREATE TABLE `login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `username` varchar(64) DEFAULT NULL COMMENT '登录用户名',
  `login_type` tinyint(1) DEFAULT NULL COMMENT '登录类型（0登录失败 1登录成功）',
  `ip` varchar(50) DEFAULT NULL COMMENT 'ip',
  `remark` varchar(150) DEFAULT NULL COMMENT '备注',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6480 DEFAULT CHARSET=utf8mb4 COMMENT='用户登录日志';


CREATE TABLE `menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parent_id` bigint(11) DEFAULT NULL COMMENT '父菜单id',
  `type` tinyint(1) DEFAULT NULL COMMENT '菜单类型',
  `url` varchar(200) DEFAULT NULL COMMENT '接口路径',
  `icon` varchar(200) DEFAULT NULL COMMENT '菜单图标',
  `name` varchar(200) DEFAULT NULL COMMENT '菜单名称',
  `route` varchar(200) DEFAULT NULL COMMENT '路由-菜单路径',
  `route_name` varchar(50) DEFAULT NULL COMMENT '路由名称',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `level` tinyint(1) DEFAULT NULL COMMENT '层级',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `component_url` varchar(200) DEFAULT NULL COMMENT '组件包路径',
  `enabled` tinyint(1) DEFAULT NULL COMMENT '是否有效1：启用，0：禁用（是否展示）',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_id` bigint(11) DEFAULT NULL COMMENT '创建人id',
  `updated_id` bigint(11) DEFAULT NULL COMMENT '更新人id',
  `created_name` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `updated_name` varchar(100) DEFAULT NULL COMMENT '更新人姓名',
  `last_modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间戳(系统字段)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=513 DEFAULT CHARSET=utf8mb4 COMMENT='菜单表';


CREATE TABLE `role_menu_relation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `menu_id` bigint(11) DEFAULT NULL COMMENT '菜单id',
  `role_id` bigint(11) DEFAULT NULL COMMENT '角色id',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `created_id` bigint(11) DEFAULT NULL COMMENT '创建人id',
  `created_name` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  PRIMARY KEY (`id`),
  KEY `idx_roleid` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65258 DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关系表';


CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `code` varchar(100) DEFAULT NULL COMMENT '角色code',
  `name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `description` varchar(500) DEFAULT NULL COMMENT '简介',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '是否有效用户1：启用，0：禁用',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_id` bigint(11) DEFAULT NULL COMMENT '创建人id',
  `updated_id` bigint(11) DEFAULT NULL COMMENT '更新人id',
  `created_name` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `updated_name` varchar(100) DEFAULT NULL COMMENT '更新人姓名',
  `last_modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间戳(系统字段)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';


CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名（昵称）',
  `password` varchar(100) DEFAULT NULL COMMENT '用户密码密文',
  `name` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sex` tinyint(1) DEFAULT '1' COMMENT '性别1男0女2保密',
  `mobile` varchar(20) DEFAULT NULL COMMENT '用户手机',
  `mail` varchar(100) DEFAULT NULL COMMENT '用户邮箱',
  `description` varchar(500) DEFAULT NULL COMMENT '简介',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '是否已删除1：已删除，0：未删除',
  `enabled` tinyint(1) DEFAULT NULL COMMENT '是否有效用户1：启用，0：禁用',
  `account_non_locked` tinyint(1) DEFAULT '1' COMMENT '是否未锁定',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_id` bigint(11) DEFAULT NULL COMMENT '创建人id',
  `updated_id` bigint(11) DEFAULT NULL COMMENT '更新人id',
  `created_name` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `updated_name` varchar(100) DEFAULT NULL COMMENT '更新人姓名',
  `last_modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间戳(系统字段)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `ux_users_username` (`user_name`),
  UNIQUE KEY `ux_users_mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';


CREATE TABLE `users_roles_relation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '关系id',
  `user_id` bigint(11) DEFAULT NULL COMMENT '用户id',
  `role_id` bigint(11) DEFAULT NULL COMMENT '角色id',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `created_id` bigint(11) DEFAULT NULL COMMENT '创建人id',
  `created_name` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关系表';
