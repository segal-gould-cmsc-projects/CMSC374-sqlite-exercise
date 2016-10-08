CREATE TABLE `Courses` (
  `id` int(255) NOT NULL DEFAULT '0',
  `CourseRegistrationNumber` int(5) NOT NULL,
  `CourseShortName` varchar(255) NOT NULL,
  `CourseFullName` varchar(255) NOT NULL,
  `OpenToFreshmen` tinyint(1) DEFAULT NULL,
  `Credits` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `Courses` (`id`, `CourseRegistrationNumber`, `CourseShortName`, `CourseFullName`, `OpenToFreshmen`, `Credits`) VALUES
(1, 91641, 'CMSC 116', 'Introduction to Computing: Web Informatics', 1, 4),
(2, 91642, 'CMSC 120', 'Technologies of Reading: Human and Machine Approaches to Literature', 1, 4),
(3, 91643, 'CMSC 143', 'Object-Oriented Programming with Robots', 1, 4),
(4, 91646, 'CMSC 157', 'Object-Oriented Programming Workshop', 1, 2),
(5, 91647, 'CMSC 201', 'Data Structures', 1, 4),
(6, 91648, 'CMSC 225', 'Computer Architecture', 0, 4),
(7, 91649, 'CMSC 305', 'Design of Programming Languages', 0, 4),
(8, 91650, 'CMSC 374', 'Mobile Application Development', 0, 4);
CREATE TABLE `Professors` (
  `id` int(255) NOT NULL,
  `CourseRegistrationNumber` int(5) DEFAULT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `EMailAddress` varchar(255) DEFAULT NULL,
  `Office` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `Professors` (`id`, `CourseRegistrationNumber`, `LastName`, `FirstName`, `EMailAddress`, `Office`) VALUES
(1, 91642, 'Anderson', 'Sven', 'sanderso@bard.edu', 'RKC 205'),
(2, 91647, 'Anderson', 'Sven', 'sanderso@bard.edu', 'RKC 205'),
(3, 91650, 'Anderson', 'Sven', 'sanderso@bard.edu', 'RKC 205'),
(4, 91642, 'Jennings', 'Collin', 'cjenning@bard.edu', 'Fairbairn 203'),
(5, 91641, 'McGrail', 'Robert', 'mcgrail@bard.edu', 'RKC 207'),
(6, 91649, 'McGrail', 'Robert', 'mcgrail@bard.edu', 'RKC 207'),
(7, 91643, 'O''Hara', 'Keith', 'kohara@bard.edu', 'RKC 204'),
(8, 91646, 'O''Hara', 'Keith', 'kohara@bard.edu', 'RKC 204'),
(9, 91643, 'Salehin', 'Khondaker', 'ksalehin@bard.edu', 'RKC 206'),
(10, 91648, 'Salehin', 'Khondaker', 'ksalehin@bard.edu', 'RKC 206');
CREATE TABLE `Rooms` (
  `id` int(255) NOT NULL DEFAULT '0',
  `CourseRegistrationNumber` int(5) NOT NULL,
  `Building` varchar(255) NOT NULL,
  `RoomNumber` int(3) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Capacity` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `Rooms` (`id`, `CourseRegistrationNumber`, `Building`, `RoomNumber`, `Type`, `Capacity`) VALUES
(1, 91641, 'RKC', 100, 'lab', 20),
(2, 91642, 'RKC', 100, 'lab', 20),
(3, 91646, 'RKC', 100, 'lab', 20),
(4, 91647, 'RKC', 100, 'lab', 20),
(5, 91649, 'RKC', 100, 'lab', 20),
(6, 91643, 'HEG', 204, 'smartroom', 30),
(7, 91648, 'RKC', 107, 'smartroom', 20),
(8, 91650, 'RKC', 107, 'smartroom', 20);