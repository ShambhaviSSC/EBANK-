-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 22, 2017 at 08:54 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onlinebanking`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE IF NOT EXISTS `agent` (
  `agentid` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dateofjoin` varchar(20) NOT NULL,
  `areacoverage` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agentid`, `name`, `dateofjoin`, `areacoverage`) VALUES
('', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customerdetails`
--

CREATE TABLE IF NOT EXISTS `customerdetails` (
  `accountnumber` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `job` varchar(20) NOT NULL,
  `accounttype` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerdetails`
--

INSERT INTO `customerdetails` (`accountnumber`, `firstname`, `middlename`, `lastname`, `address`, `phonenumber`, `job`, `accounttype`, `status`) VALUES
('123', 'ashu', 'arun', 'kodli', 'xyz', '9164450915', 'bca', 'xyz', 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `defaulters`
--

CREATE TABLE IF NOT EXISTS `defaulters` (
  `accountnumber` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `loannumber` varchar(20) NOT NULL,
  `lastpayment` varchar(20) NOT NULL,
  `totalamount` varchar(20) NOT NULL,
  `totalpaid` varchar(20) NOT NULL,
  `interest` varchar(20) NOT NULL,
  `pendinginstallment` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `defaulters`
--

INSERT INTO `defaulters` (`accountnumber`, `name`, `loannumber`, `lastpayment`, `totalamount`, `totalpaid`, `interest`, `pendinginstallment`) VALUES
('jkh', 'jhi', 'uhi', 'uh', 'iluh', 'iuh', 'iuh', 'ih');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `loannumber` varchar(20) NOT NULL,
  `documenttype` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`loannumber`, `documenttype`, `date`) VALUES
('sdfjh', 'h', 'li'),
('kuh', 'ui', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `hireloan`
--

CREATE TABLE IF NOT EXISTS `hireloan` (
  `name` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `age` varchar(20) NOT NULL,
  `occupation` varchar(20) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `annualincome` varchar(20) NOT NULL,
  `netincome` varchar(20) NOT NULL,
  `insolvent` varchar(20) NOT NULL,
  `investment` varchar(20) NOT NULL,
  `property` varchar(20) NOT NULL,
  `typeofvehical` varchar(20) NOT NULL,
  `purpose` varchar(20) NOT NULL,
  `companyname` varchar(20) NOT NULL,
  `accountno` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hireloan`
--

INSERT INTO `hireloan` (`name`, `address`, `age`, `occupation`, `nationality`, `annualincome`, `netincome`, `insolvent`, `investment`, `property`, `typeofvehical`, `purpose`, `companyname`, `accountno`, `date`, `status`) VALUES
('hgjh', 'kjv', 'g', 'hj', 'jjh', 'hvj', 'hjhfh', 'jhjg', 'jbh', 'hv ', 'hv', 'vh', 'gvh', 'ch', 'gfgf', ''),
('ashu', 'ilkal', '21', 'student', 'india', 'xyz', 'xyz', 'xyz', '1000', 'xyz', 'innova', 'accident', 'accenture', '1234', '12/12/12', 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `loandetails`
--

CREATE TABLE IF NOT EXISTS `loandetails` (
  `accountnumber` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `loantype` varchar(20) NOT NULL,
  `loanamount` varchar(20) NOT NULL,
  `rateofintrest` varchar(20) NOT NULL,
  `numberofyears` varchar(20) NOT NULL,
  `EMI(equalmonthlyintrest)` varchar(20) NOT NULL,
  `dateofstart` varchar(20) NOT NULL,
  `EMIdate` varchar(20) NOT NULL,
  `loannumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loandetails`
--

INSERT INTO `loandetails` (`accountnumber`, `name`, `loantype`, `loanamount`, `rateofintrest`, `numberofyears`, `EMI(equalmonthlyintrest)`, `dateofstart`, `EMIdate`, `loannumber`) VALUES
('123', 'ashu', 'xyz', '1234', '12345', '12', '12/12/12', '12/12/12', '12', '123');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `hintque` varchar(20) NOT NULL,
  `hintans` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `type`, `hintque`, `hintans`, `status`) VALUES
('manager', '123123', 'manager', 'who am i', 'manager', 'active'),
('account', '123123', 'account', 'who am i', 'account', 'active'),
('agent', '123123', 'agent', 'who am i', 'agent', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `mailinfo`
--

CREATE TABLE IF NOT EXISTS `mailinfo` (
  `mailfrom` varchar(20) NOT NULL,
  `mailto` varchar(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `message` varchar(20) NOT NULL,
  `date1` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mailinfo`
--

INSERT INTO `mailinfo` (`mailfrom`, `mailto`, `subject`, `message`, `date1`, `status`) VALUES
('g', 'u', 'gu', 'gyl', 'ug', 'ligu');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE IF NOT EXISTS `manager` (
  `mid` varchar(20) NOT NULL,
  `name1` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `joindate` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--


-- --------------------------------------------------------

--
-- Table structure for table `personalloan`
--

CREATE TABLE IF NOT EXISTS `personalloan` (
  `loantype` varchar(20) NOT NULL,
  `needforloan` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `resaddress` varchar(40) NOT NULL,
  `officeaddress` varchar(40) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `accno` varchar(20) NOT NULL,
  `employee` varchar(20) NOT NULL,
  `loandetails` varchar(20) NOT NULL,
  `vitness1` varchar(20) NOT NULL,
  `vitness2` varchar(20) NOT NULL,
  `date1` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personalloan`
--


-- --------------------------------------------------------

--
-- Table structure for table `pigmyadvance`
--

CREATE TABLE IF NOT EXISTS `pigmyadvance` (
  `accountnumber` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `advanceamount` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `rateofintrest` varchar(20) NOT NULL,
  `dailypay` varchar(20) NOT NULL,
  `numberofdays` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pigmyadvance`
--


-- --------------------------------------------------------

--
-- Table structure for table `pigmydeposite`
--

CREATE TABLE IF NOT EXISTS `pigmydeposite` (
  `accountnumber` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pigmytype` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `receiptnumber` varchar(20) NOT NULL,
  `agentid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pigmydeposite`
--

INSERT INTO `pigmydeposite` (`accountnumber`, `name`, `pigmytype`, `amount`, `date`, `receiptnumber`, `agentid`) VALUES
('12', 'aishu', 'xyz', '1200', '12', '123', '12'),
('null', 'null', 'null', 'null', 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `pigmyinformation`
--

CREATE TABLE IF NOT EXISTS `pigmyinformation` (
  `pigmyid` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `minimumamount` varchar(20) NOT NULL,
  `maximumamount` varchar(20) NOT NULL,
  `rateofinterest` varchar(20) NOT NULL,
  `duration` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pigmyinformation`
--

INSERT INTO `pigmyinformation` (`pigmyid`, `name`, `type`, `minimumamount`, `maximumamount`, `rateofinterest`, `duration`) VALUES
('u', 'uiuy', 'uy', 'uy', 'uiy', 'iluy', 'i');

-- --------------------------------------------------------

--
-- Table structure for table `transactiondetails`
--

CREATE TABLE IF NOT EXISTS `transactiondetails` (
  `accountnumber` varchar(20) NOT NULL,
  `transactiontype` varchar(20) NOT NULL,
  `deposit` varchar(20) NOT NULL,
  `withdraw` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactiondetails`
--

INSERT INTO `transactiondetails` (`accountnumber`, `transactiontype`, `deposit`, `withdraw`, `date`) VALUES
('oi', 'oi', 'oi', 'oiu', 'oi');
