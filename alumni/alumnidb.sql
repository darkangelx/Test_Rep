-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2017 at 09:37 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumnidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(40) NOT NULL,
  `admin_password` varchar(16) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_password`, `lastname`, `firstname`) VALUES
(1, 'admin', 'admin', 'Biagtan', 'Ronald');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `alumnus_id` int(11) NOT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `first_name` varchar(40) DEFAULT NULL,
  `middle_name` varchar(40) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `address_code` char(4) DEFAULT NULL,
  `street` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `phone_work` varchar(10) DEFAULT NULL,
  `phone_home` varchar(10) DEFAULT NULL,
  `program_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`alumnus_id`, `last_name`, `first_name`, `middle_name`, `gender`, `email`, `address_code`, `street`, `city`, `phone_work`, `phone_home`, `program_id`, `year_id`) VALUES
(1, 'Manalo', 'Mark Anthony', 'Cordero', 'M', 'markanthony.manalo@gmail.com', '7634', 'Saint Paul', 'Makati', '434-4204', '902-4224', 1, 1),
(2, 'Norris', 'Maria Lyn', 'Cruz', 'F', 'marialyn.norris@gmail.com', '1124', 'Baguhan', 'Manila', '001-2133', '990-4222', 1, 1),
(3, 'Octavio', 'Jennifer', 'Miles', 'F', 'jennifer.octavio@gmail.com', '2341', 'Maligaya', 'Quezon', '890-0912', '123-5204', 2, 1),
(4, 'Pelaez', 'John', 'Ocampo', 'M', 'john.pelaez@gmail.com', '0101', 'Dizon', 'Pasig', '018-2819', '193-3333', 2, 1),
(5, 'Quincy', 'Oliver', 'Castro', 'M', 'oliver.quincy@gmail.com', '1221', 'Mirana', 'Parañaque', '327-2989', '132-2910', 3, 1),
(6, 'Ramos', 'Bryan', 'De Castro', 'M', 'bryan.ramos@gmail.com', '1023', 'Isinilang', 'Mandaluyong', '093-9283', '233-0901', 3, 1),
(7, 'Sandler', 'Joe', 'Adam', 'M', 'joe.sandler@gmail.com', '1129', 'Sinauna', 'Taguig', '112-3209', '112-2111', 4, 1),
(8, 'Tagle', 'Russel', 'Tan', 'M', 'russel.tagle@yahoo.com', '1233', 'Palma', 'Pasay', '123-4502', '940-9201', 4, 1),
(9, 'Ursula', 'Ashley', 'Dale', 'F', 'ashley.ursula@yahoo.com', '2245', 'Marso', 'Muntinlupa', '023-8882', '021-1996', 5, 1),
(10, 'Velasquez', 'Christina', 'Rose', 'F', 'christina.velasquez@yahoo.com', '5532', 'Rupido', 'Las Piñas', '196-4991', '024-1110', 5, 1),
(11, 'Webb', 'David', 'Tian', 'M', 'david.webb@gmail.com', '1183', 'Shiva', 'Caloocan', '475-9290', '228-3213', 6, 1),
(12, 'Xander', 'Jordan', 'Marcos', 'M', 'jordan.xander@yahoo.com', '1235', 'Gabi', 'Malabon', '666-3202', '910-9929', 6, 1),
(13, 'Yang', 'Meghan', 'Philips', 'F', 'meghan.yang@yahoo.com', '9034', 'Tubig', 'Navotas', '291-1903', '213-2901', 7, 1),
(14, 'Zwick', 'Edward', 'Joe', 'M', 'edward.zwick@gmail.com', '0934', 'Ponte', 'Makati', '329-0001', '120-1204', 7, 1),
(16, 'Ramos', 'Emma', 'Cantoria', 'F', 'ramosemma@yahoo.com', '175', 'Evangelista, ', 'Pasay City', '001-111', '882-332', 1, 1),
(18, 'Podpod', 'Juanita', 'Cadano', 'F', 'cadanopodpod@yahoo.com', '0293', 'Trumpeta', 'Paraï¿½aque', '201-9891', '321-123', 1, 1),
(19, 'Ernesto', 'Alexis Christel', 'Cabrera', 'F', 'alexischristel.ernesto@yahoo.com', '9043', 'Henyo', 'Mandaluyong', '901-1245', '109-0231', 10, 1),
(20, 'Fernandez', 'Karen', 'Mola', 'F', 'karen.fernandez@gmail.com', '0013', 'Kalaw', 'Taguig', '402-3304', '222-1210', 10, 1),
(21, 'Gomez', 'John Paul', 'Francis', 'M', 'johnpaul.gomez@gmail.com', '2894', 'Lothar', 'Pasay', '999-6652', '113-2222', 11, 1),
(22, 'Homer', 'Ronnie James', 'Shiervo', 'M', 'ronniejames.homer@yahoo.com', '4643', 'Fernando', 'Muntinlupa', '434-9090', '343-0204', 11, 1),
(23, 'Ilao', 'Justin', 'Malik', 'M', 'justin.ilao@yahoo.com', '5127', 'Belson', 'Las Piñas', '434-0012', '878-0001', 12, 1),
(24, 'Jeronimo', 'Raphael', 'Dungaw', 'M', 'raphael.jeronimo@gmail.com', '9844', 'Paloma', 'Caloocan', '820-9033', '333-1212', 12, 1),
(25, 'Klark', 'Ronald', 'Teran', 'M', 'ronald.klark@yahoo.com', '9034', 'Awit', 'Malabon', '895-8982', '897-7757', 13, 1),
(26, 'Lapuz', 'Grace', 'Lorde', 'F', 'grace.lapuz@yahoo.com', '2034', 'Liwanag', 'Navotas', '203-2011', '100-9912', 13, 1),
(27, 'Marquez', 'Vincent', 'Amargo', 'M', 'vincent.marquez@gmail.com', '3241', 'Gala', 'Makati', '210-2133', '198-2944', 1, 2),
(28, 'Nubita', 'Michaela', 'Tulipa', 'F', 'michaela.nubita@yahoo.com', '3405', 'Aroma', 'Manila', '992-1222', '127-7570', 1, 2),
(29, 'Orlando', 'Jonathan', 'Jones', 'M', 'jonatan.orlando@gmail.com', '3928', 'Herman', 'Quezon', '489-1123', '001-2222', 2, 2),
(30, 'Paloma', 'Norman', 'Brand', 'M', 'norman.paloma@yahoo.com', '1123', 'Hinhin', 'Pasig', '120-1102', '555-5555', 2, 2),
(31, 'Quinn', 'Harley', 'Sean', 'F', 'harley.quinn@yahoo.com', '1123', 'Dating Daan', 'Parañaque', '092-0012', '001-2134', 3, 2),
(32, 'Realco', 'Jason Paul', 'Domingo', 'M', 'jasonpaul.realco@yahoo.com', '5533', 'Kaarawan', 'Mandaluyong', '123-5559', '222-2222', 3, 2),
(33, 'San Martin', 'Sherman', 'Hart', 'M', 'sherman.sanmartin@yahoo.com', '4444', 'Malik', 'Taguig', '892-1290', '999-3322', 4, 2),
(34, 'Teague', 'Jeffrey', 'Jones', 'M', 'jeffrey.teague@gmail.com', '4664', 'Merzedez', 'Pasay', '329-1124', '321-3443', 4, 2),
(35, 'Umandap', 'Juanito', 'Dela Cruz', 'M', 'juanito.umandap@gmail.com', '1247', 'Pasan', 'Muntinlupa', '772-5510', '324-0040', 5, 2),
(36, 'Valdez', 'Lloyd John', 'Cardo', 'M', 'lloydjohn.valdez@yahoo.com', '6131', 'Saint Trinidad', 'Las Piñas', '878-9991', '221-7777', 5, 2),
(37, 'Walter', 'Maxine', 'Marcos', 'F', 'maxine.walter@yahoo.com', '1123', 'Inihaw', 'Caloocan', '892-1234', '777-2222', 6, 2),
(38, 'Xavier', 'Charles', 'Miranda', 'M', 'charles.xavier@yahoo.com', '3945', 'Sikat', 'Malabon', '989-1113', '909-9090', 6, 2),
(39, 'Yuna', 'Julie Mae', 'Santos', 'F', 'juliemae.yuna@yahoo.com', '1236', 'Rehas', 'Navotas', '903-2314', '555-5590', 7, 2),
(41, 'Yulas', 'Resty', 'Voces', 'M', 'yulasresty@gmail.com', '712', 'Zeus', 'Manila', '023493209', '095840392', 8, 5),
(42, 'Lopez', 'Maria Rosario', 'Mendones', 'F', 'lopezmaria@yahoo.com', '612', 'Dominga', 'Pasay City', '312-3123', '222-111', 1, 1),
(44, 'Marilyn', 'Penia', 'Zara', 'F', 'zarapenia@gmail.com', '8885', 'Bukas', 'Paraï¿½aque', '901-7833', '333-2120', 1, 1),
(45, 'Conrado', 'Escasa', 'Jenkins', 'M', 'louis.emanuel@yahoo.com', '2214', 'Kamag-anak', 'Mandaluyong', '980-3111', '902-9341', 1, 1),
(46, 'Friaz', 'John Mark', 'Perkins', 'M', 'johnmark.friaz@yahoo.com', '9221', 'Sean', 'Taguig', '775-5533', '980-3433', 10, 2),
(47, 'Garcia', 'Kimberly', 'Sanchez', 'F', 'kimberly.garcia@yahoo.com', '2245', 'De Amor', 'Pasay', '890-2333', '234-1111', 11, 2),
(48, 'Hannibal', 'Katherine', 'George', 'F', 'katherine.hannibal@gmail.com', '0090', 'Olivera', 'Muntinlupa', '980-1133', '111-1234', 11, 2),
(49, 'Inigo', 'Anthony', 'Cousins', 'M', 'anthony.inigo@gmail.com', '4456', 'Ilaw', 'Las Piñas', '009-2134', '111-1111', 12, 2),
(50, 'Jamison', 'Antoine', 'Fuqua', 'M', 'antoine.jamison@yahoo.com', '4634', 'Mila', 'Caloocan', '890-4444', '390-3333', 12, 2),
(51, 'Kardel', 'Madison', 'Irivng', 'F', 'madison.kardel@gmail.com', '9944', 'Hapon', 'Malabon', '120-8944', '314-5555', 13, 2),
(52, 'Lanuza', 'Keanu', 'Wayne', 'M', 'keanu.lanuza@gmail.com', '9034', 'Lanuza', 'Navotas', '773-1102', '213-3311', 13, 2),
(53, 'Javier', 'Lovella Grace', 'T', 'F', 'bhoxsLovella@gmail.com', '1806', 'Saint Paul', 'Makati', '123-7000', '442-2817', 1, 5),
(54, 'Villareal', 'MarcDarryl', 'Sanchez', 'M', 'secresavior@gmail.com', '7613', 'f.nazario st.', 'Makati', '981238712', '29109', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `donation_id` int(11) NOT NULL,
  `donor_name` varchar(40) DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `date_donated` date DEFAULT NULL,
  `fund_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`donation_id`, `donor_name`, `amount`, `date_donated`, `fund_id`) VALUES
(1, 'Microsoft', '4000.00', '2009-02-12', 1),
(2, 'Microsoft', '2500.00', '2009-08-23', 2),
(3, 'Microsoft', '13000.00', '2010-09-16', 3),
(4, 'LBC', '12500.00', '2009-12-02', 1),
(5, 'LBC', '32000.00', '2011-05-12', 2),
(6, 'LBC', '6700.00', '2012-01-01', 3),
(7, 'Milo', '10000.00', '2008-07-22', 1),
(8, 'Milo', '13200.00', '2009-09-12', 2),
(9, 'Milo', '8950.00', '2010-05-13', 3);

-- --------------------------------------------------------

--
-- Table structure for table `employers_jobs`
--

CREATE TABLE `employers_jobs` (
  `job_id` int(11) NOT NULL,
  `alumnus_id` int(11) NOT NULL,
  `employer_code` char(7) NOT NULL,
  `employer_name` varchar(40) NOT NULL,
  `industry_code` char(3) NOT NULL,
  `industry_name` varchar(40) NOT NULL,
  `date_joined` date DEFAULT NULL,
  `date_left` date DEFAULT NULL,
  `job_title` varchar(40) DEFAULT NULL,
  `date_started` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employers_jobs`
--

INSERT INTO `employers_jobs` (`job_id`, `alumnus_id`, `employer_code`, `employer_name`, `industry_code`, `industry_name`, `date_joined`, `date_left`, `job_title`, `date_started`) VALUES
(1, 1, '4571340', 'Xerox Services', '561', 'Technology', '2006-01-02', '2007-09-23', 'Developer', '2006-01-02'),
(2, 1, '4571340', 'Xerox Services', '561', 'Technology', '2006-01-02', '2007-09-23', 'Technician', '2006-05-14'),
(3, 1, '4571341', 'JP Morgan Chase', '562', 'Banking', '2007-09-15', '0000-00-00', 'Accountant', '2007-09-15'),
(4, 2, '4572823', 'RCBC', '562', 'Banking', '2003-12-01', '2004-05-23', 'Customer Service Representative', '2003-12-01'),
(5, 2, '4572534', 'RCBC', '562', 'Banking', '2008-01-25', '2009-12-12', 'Collectors', '2008-01-25'),
(6, 2, '4572123', 'BPI', '562', 'Banking', '2010-01-15', '0000-00-00', 'Auditors', '2010-01-15'),
(7, 3, '4573964', 'Sun Life', '563', 'Finance', '2004-11-05', '2005-05-23', 'Claims Clerk', '2004-11-05'),
(8, 3, '4574567', 'Sun Life', '563', 'Finance', '2004-11-05', '2005-05-23', 'Underwriter', '2005-01-29'),
(9, 3, '4578674', 'First Life Financial', '563', 'Finance', '2006-11-22', '0000-00-00', 'Claims Manager', '2006-11-22'),
(10, 4, '4583423', 'TrueLogic Online Solutions', '564', 'Marketing', '2001-05-18', '2003-07-31', 'Sales Representative', '2001-05-18'),
(11, 4, '4585325', 'TrueLogic Online Solutions', '564', 'Marketing', '2004-01-29', '2005-03-06', 'Account Executive', '2004-01-29'),
(12, 4, '4586576', 'PurpleClick Philippines', '564', 'Marketing', '2007-02-23', '0000-00-00', 'Assistant Manager', '2007-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `fund_id` int(11) NOT NULL,
  `fund_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`fund_id`, `fund_name`) VALUES
(1, 'General Fund'),
(2, 'Scholarship Fund'),
(3, 'Trust Fund');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `program_id` int(11) NOT NULL,
  `degree_code` char(10) DEFAULT NULL,
  `degree_desc` varchar(40) DEFAULT NULL,
  `area_code` char(10) DEFAULT NULL,
  `area_desc` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`program_id`, `degree_code`, `degree_desc`, `area_code`, `area_desc`) VALUES
(1, 'BS', 'Bachelor of Science', 'IT', 'Information Technology'),
(2, 'BS', 'Bachelor of Science', 'CS', 'Computer Science'),
(3, 'BS', 'Bachelor of Science', 'CPE', 'Computer Engineering'),
(4, 'BS', 'Bachelor of Science', 'BM', 'Business Management'),
(5, 'BS', 'Bachelor of Science', 'BA', 'Business Administration'),
(6, 'BS', 'Bachelor of Science', 'HRM', 'Hotel & Restaurant Management'),
(7, 'BS', 'Bachelor of Science', 'TM', 'Tourism Management'),
(8, 'MS', 'Master of Science', 'IT', 'Information Technology'),
(9, 'MS', 'Master of Science', 'CS', 'Computer Science'),
(10, 'MS', 'Master of Science', 'CPE', 'Computer Engineering'),
(11, 'PhD', 'Doctor of Philosophy', 'IT', 'Information Technology'),
(12, 'PhD', 'Doctor of Philosophy', 'CS', 'Computer Science'),
(13, 'PhD', 'Doctor of Philosophy', 'CPE', 'Computer Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `year_graduated`
--

CREATE TABLE `year_graduated` (
  `year_id` int(11) NOT NULL,
  `year` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year_graduated`
--

INSERT INTO `year_graduated` (`year_id`, `year`) VALUES
(1, '2011'),
(2, '2012'),
(3, '2013'),
(4, '2014'),
(5, '2015');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`alumnus_id`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `year_id` (`year_id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`donation_id`),
  ADD KEY `fund_id` (`fund_id`);

--
-- Indexes for table `employers_jobs`
--
ALTER TABLE `employers_jobs`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `alumnus_id` (`alumnus_id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`fund_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `year_graduated`
--
ALTER TABLE `year_graduated`
  ADD PRIMARY KEY (`year_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `alumnus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `donation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `employers_jobs`
--
ALTER TABLE `employers_jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `fund_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `year_graduated`
--
ALTER TABLE `year_graduated`
  MODIFY `year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`),
  ADD CONSTRAINT `alumni_ibfk_2` FOREIGN KEY (`year_id`) REFERENCES `year_graduated` (`year_id`);

--
-- Constraints for table `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`fund_id`) REFERENCES `funds` (`fund_id`);

--
-- Constraints for table `employers_jobs`
--
ALTER TABLE `employers_jobs`
  ADD CONSTRAINT `employers_jobs_ibfk_1` FOREIGN KEY (`alumnus_id`) REFERENCES `alumni` (`alumnus_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
