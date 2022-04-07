

CREATE DATABASE `librarymanagement` /*!40100 DEFAULT CHARACTER SET latin1 */;

use librarymanagement;


CREATE TABLE `admin` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `book` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `issuebook` (
  `book_id` varchar(255) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `li` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


