-- contact_tbl 테이블 생성
CREATE TABLE `contact_tbl` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `phoneNumber` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `zipNumber` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `addr` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- learn_tbl 테이블 생성
CREATE TABLE `learn_tbl` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `lecture_id` int unsigned NOT NULL,
  `score` decimal(3,1) NOT NULL,
  `contact_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `learn_fk1` (`lecture_id`),
  KEY `learn_fk2` (`contact_id`),
  CONSTRAINT `learn_fk1` FOREIGN KEY (`lecture_id`) REFERENCES `lecture_tbl` (`id`),
  CONSTRAINT `learn_fk2` FOREIGN KEY (`contact_id`) REFERENCES `contact_tbl` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- lecture_tbl 테이블 생성
CREATE TABLE `lecture_tbl` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `teacher` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `room_num` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `start_dt` date NOT NULL,
  `end_dt` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- location_tbl 테이블 생성
CREATE TABLE `location_tbl` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- saled_tbl 테이블 생성
CREATE TABLE `saled_tbl` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sale_dt` date NOT NULL DEFAULT (curdate()),
  `price` int unsigned NOT NULL DEFAULT '0',
  `qty` int unsigned NOT NULL DEFAULT '0',
  `product` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `location_id` int unsigned DEFAULT NULL,
  `discount` int unsigned NOT NULL DEFAULT '0',
  `contact_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `saled_fk1` (`contact_id`),
  KEY `saled_fk2` (`location_id`),
  CONSTRAINT `saled_fk1` FOREIGN KEY (`contact_id`) REFERENCES `contact_tbl` (`id`),
  CONSTRAINT `saled_fk2` FOREIGN KEY (`location_id`) REFERENCES `location_tbl` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;