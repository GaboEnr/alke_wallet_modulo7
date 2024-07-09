USE `bdevaluacion`;

DROP TABLE IF EXISTS `authorities`;
DROP TABLE IF EXISTS `users`;

-- *************************
-- Estructura de tabla `users`
-- *************************

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `enabled` tinyint NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ***************************
-- insertando datos en `users`
-- ***************************

INSERT INTO `users` 
VALUES 
('alfredo','{bcrypt}$2a$10$jljzj57nlryyGcT5OifWq.xKJ5ZS5ha619gSb.x5IbPewwwefbQ/G',1),
('juan','{bcrypt}$2a$10$dfM3cToXQbHORglUxZt8quElcD3cV5gBo7PF1lVv99Sd6vP/JdLHi',1),
('clarivel','{bcrypt}$2a$10$d3/kgVLgCtsMDcyBayv/UOvfXZg5VGXtYjTpQFMhSYoz08/nBM6By',1);


-- *********************************
-- Estructura de tabla `authorities`
-- *********************************

CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ***********************************
-- Insertando datos en `authorities`
-- **********************************

INSERT INTO `authorities` 
VALUES 
('alfredo','ROLE_Empleado'),
('juan','ROLE_Empleado'),
('juan','ROLE_Jefe'),
('clarivel','ROLE_Empleado'),
('clarivel','ROLE_Jefe')


