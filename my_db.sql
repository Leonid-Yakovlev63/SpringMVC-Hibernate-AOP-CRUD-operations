CREATE DATABASE IF NOT EXISTS my_db;

CREATE TABLE IF NOT EXISTS `my_db`.`employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) DEFAULT NULL,
  `surname` varchar(25) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=0 ;

INSERT INTO `my_db`.`employees` (`id`, `name`, `surname`, `department`, `salary`) VALUES
(1, 'Leonid', 'Yakovlev', 'IT', 5000),
(2, 'Roman', 'Maslov', 'IT', 5000),
(3, 'Andrey', 'Komarov', 'IT', 5000),
(4, 'Anastasia', 'Alexandrovna', 'HR', 4500),
(5, 'Ivan', 'Ivanov', 'Sales', 3500);
