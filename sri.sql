-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 16, 2021 at 12:56 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sri`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'sri', 'sri@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `exam_category`
--

DROP TABLE IF EXISTS `exam_category`;
CREATE TABLE IF NOT EXISTS `exam_category` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_time_in_minutes` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_category`
--

INSERT INTO `exam_category` (`id`, `category`, `exam_time_in_minutes`) VALUES
(19, 'C Programming', '2'),
(18, 'Basic Maths', '2'),
(15, 'DBMS', '1'),
(20, 'English Grammar', '2'),
(21, 'Computer Networks', '2'),
(23, 'Operating Systems', '1'),
(25, 'Java ', '1');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

DROP TABLE IF EXISTS `exam_results`;
CREATE TABLE IF NOT EXISTS `exam_results` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_question` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_answer` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wrong_answer` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_time` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `username`, `exam_type`, `total_question`, `correct_answer`, `wrong_answer`, `exam_time`) VALUES
(84, 'sri', 'DBMS', '8', '5', '3', '2021-07-16'),
(83, 'sri', 'Java', '8', '7', '1', '2021-07-16'),
(82, 'sri', 'C Programming', '10', '8', '2', '2021-07-16'),
(81, 'sri', 'C Programming', '10', '9', '1', '2021-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Question_no` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Question` varchar(550) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `opt1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `opt2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `opt3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `opt4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `Question_no`, `Question`, `opt1`, `opt2`, `opt3`, `opt4`, `answer`, `category`) VALUES
(33, '1', '1+1=', '1', '2', '3', '4', '2', 'Maths'),
(39, '1', ' What is the sum of 130+125+191?', ' 335', '456', '446', '426', ' 446', 'Basic Maths'),
(36, '1', 'A relational database consists of a collection of', 'Tables', 'Fields', 'Records', ' Keys', 'Tables', 'DBMS'),
(37, '2', 'The term _______ is used to refer to a row.', 'Attribute', 'Tuple', 'Field', 'Instance', 'Tuple', 'DBMS'),
(67, '3', 'Which one of the following attribute can be taken as a primary key?', 'Id', 'Name', 'Department', 'Street', 'Id', 'DBMS'),
(40, '2', '20+(90Ã·2) is equal to:', '50', '55', ' 65', '60', ' 65', 'Basic Maths'),
(41, '3', 'Solve: 300 â€“ (150Ã—2)', '150', '100', '50', '0', '0', 'Basic Maths'),
(42, '4', 'Which number is equivalent to 3^(4)Ã·3^(2)', '9', '27', '3', '81', '9', 'Basic Maths'),
(43, '5', 'Simplify : 3 + 6 x (5 + 4) Ã· 3 - 7', '11', '14', '15', '16', '14', 'Basic Maths'),
(44, '6', 'Simplify :150 Ã· (6 + 3 x 8) - 5', '2', '5', '6', '0', '0', 'Basic Maths'),
(45, '7', 'Which value of x makes the equation true? x â€“ 7 = â€“13', '-20', '6', '-6', '20', '-6', 'Basic Maths'),
(46, '8', 'Which of these following set of numbers are factors of 24?', '2, 3, 4, 6, 8', '1, 5, 12, 18', '4, 7, 24', '3, 9, 12', '2, 3, 4, 6, 8', 'Basic Maths'),
(54, '1', ' Which of the following is not a valid variable name declaration?', 'int _a3;', 'int a_3;', 'int 3_a;', 'int _3a', 'int 3_a;', 'C Programming'),
(55, '2', 'All keywords in C are in ____________', 'LowerCase letters', 'UpperCase letters', 'CamelCase letters', 'None of the mentioned', ' LowerCase letters', 'C Programming'),
(58, '3', ' What will be the output of the following C code?      #include <stdio.h>     int main()     {         j = 10;         printf(\"%d\n\", j++);         return 0;     }', '10', '11', 'Compile time error', '0', 'Compile time error', 'C Programming'),
(59, '4', 'What will be the output of the following C code?       #include <stdio.h>     int main()     {         int i = 2;         int j = ++i + i;         printf(\"%d\n\", j);     }', '4', '5', '6', 'Compile time error', '6', 'C Programming'),
(60, '5', 'Operation â€œa = a * b + aâ€ can also be written as ___________', 'a *= b + 1;', '(c = a * b)!=(a = c + a);', 'a = (b + 1)* a;', 'All of the mentioned', 'All of the mentioned', 'C Programming'),
(62, '6', ' What will be the output of the following C code?      #include <stdio.h>     void main()     {         int a = 5 * 3 % 6 - 8 + 3;         printf(\"%d\", a);     }', '-1', '-2', '3', '2', '-2', 'C Programming'),
(63, '7', 'Which of the following is an invalid if-else statement?', 'if (if (a == 1)){}', 'if (func1 (a)){}', 'if (a){}', 'if ((char) a){}', 'if (if (a == 1)){}', 'C Programming'),
(64, '8', 'Which among the following is Copying function?', 'memcpy()', 'strcopy()', 'memcopy()', 'strxcpy()', 'memcpy()', 'C Programming'),
(65, '9', '. What will be the output of the following C code?      #include <stdio.h>     int main()     {         while ()             printf(\"In while loop \");         printf(\"After loop\n\");     }', 'In while loop after loop', 'After loop', 'Compile time error', 'Infinite loop', 'Compile time error', 'C Programming'),
(66, '10', 'What are the elements present in the array of the following C code?  int array[5] = {5};', '5, 5, 5, 5, 5', '5, (garbage), (garbage), (garbage), (garbage)', '5, 0, 0, 0, 0', '(garbage), (garbage), (garbage), (garbage), 5', '5, 0, 0, 0, 0', 'C Programming'),
(68, '4', 'The result which operation contains all pairs of tuples from the two relations, regardless of whether their attribute values match.', 'Join', 'Intersection', 'Cartesian product', 'Set difference', 'Cartesian product', 'DBMS'),
(69, '5', 'SELECT * FROM employee WHERE dept_name=\"Comp Sci\";        In the SQL given above there is an error . Identify the error.', 'Dept_name', 'Employee', 'From', 'â€œComp Sciâ€', 'â€œComp Sciâ€', 'DBMS'),
(70, '6', '_____ clause is an additional filter that is applied to the result.', 'Select', 'Group-by', 'Having', 'Order by', 'Having', 'DBMS'),
(73, '7', 'SELECT *   FROM student JOIN takes USING (ID);     The  query is equivalent to', 'SELECT *    FROM student LEFT OUTER JOIN takes USING (ID);', 'SELECT *    FROM student OUTER JOIN takes USING (ID);', 'SELECT *    FROM student INNER JOIN takes USING (ID);', 'None of the mentioned.', 'SELECT *    FROM student INNER JOIN takes USING (ID);', 'DBMS'),
(74, '8', 'What are the different in triggers?', 'Drop, Commen', 'Define, Create', 'Insert, Update, Delete', 'All of the mentioned', 'Insert, Update, Delete', 'DBMS'),
(75, '1', 'This time tomorrow, I _____________ on the beach.', 'am lying', 'will be lying', 'will lie', 'will be lied', 'will be lying', 'English Grammar'),
(76, '2', 'Phone me when you ____________ time.', 'have', 'would have', 'will have', 'must have', 'have', 'English Grammar'),
(77, '3', 'You ____________ an accident if you go on driving like that.', 'are having', 'would have', 'could have', 'will have', 'will have', 'English Grammar'),
(78, '4', 'The aims of the course ____ me willing to begin.', 'makes', 'were made', 'make', 'had been made', 'make', 'English Grammar'),
(79, '5', 'Either Hasan or Fatih ____ to the meeting this evening.', 'are coming', 'come', 'is coming', 'comes', 'is coming', 'English Grammar'),
(80, '6', 'All the furniture I bought ____ at my home now.', 'are', 'is', 'were', 'was', 'is', 'English Grammar'),
(81, '7', 'Choose the correct antonym of the given word \"Brilliant\".', 'Flat', 'Apparent', 'Dull', 'Shining', 'Apparent', 'English Grammar'),
(82, '8', 'One who is all powerful', 'Mundane', 'Unremarkable', 'Omnipotent', 'Incapable', 'Omnipotent', 'English Grammar'),
(83, '1', 'If a host on a network has the address 172.16.45.14/30, what is the subnetwork this host belongs to?', '172.16.45.0', '172.16.45.4', '172.16.45.8', '172.16.45.12', '172.16.45.12', 'Computer Networks'),
(84, '2', 'If you wanted to have 12 subnets with a Class C network ID, which subnet mask would you use?', '255.255.255.255', '255.255.255.252', '255.255.255.248', '255.255.255.240', '255.255.255.240', 'Computer Networks'),
(85, '3', 'If a class B network on the Internet has a subnet mask of 255.255.248.0, what is the maximum number of hosts per subnet?', '1022', '1023', '2046', '2047', '2046', 'Computer Networks'),
(86, '4', 'Segmentation and reassembly is the responsibility of', '4th layer', '5th Layer', '6th Layer', ' 7th Layer', '4th layer', 'Computer Networks'),
(87, '5', 'Which of the following is true when describing a link-local address?', 'Packets addressed to a unicast address are delivered to a single interface.', 'These are your typical publicly routable addresses, just like a regular publicly routable address in IPv4.', 'These are like private addresses in IPv4 in that they are not meant to be routed', 'These addresses are meant for nonrouting purposes, but they are almost globally unique so it is unlikely they will have an address overlap.', 'These are like private addresses in IPv4 in that they are not meant to be routed', 'Computer Networks'),
(88, '6', 'Which of the following is true when describing a unicast address?', 'Packets addressed to a unicast address are delivered to a single interface.', 'These are your typical publicly routable addresses, just like a regular publicly routable address in IPv4', '	These addresses are meant for nonrouting purposes, but they are almost globally unique so it is unlikely they will have an address overlap.', 'These are like private addresses in IPv4 in that they are not meant to be routed.', 'Packets addressed to a unicast address are delivered to a single interface.', 'Computer Networks'),
(89, '7', 'The network address of 172.16.0.0/19 provides how many subnets and hosts?', '7 subnets, 30 hosts each', '7 subnets, 2,046 hosts each', '8 subnets, 8,190 hosts each', '8 subnets, 2,046 hosts each', '8 subnets, 8,190 hosts each', 'Computer Networks'),
(90, '8', 'In class B if subnet mask is 255.192.0.0 Total Number of networks than can be joined?', '32', '16', '64', '54', '64', 'Computer Networks'),
(91, '9', 'Which configuration command must be in effect to allow the use of 8 subnets if the Class C subnet mask is 255.255.255.224?', 'Router(config)#ip classless', 'Router(config)#no ip classful', 'Router(config)#ip subnet-zero', 'Router(config)#ip unnumbered', 'Router(config)#ip subnet-zero', 'Computer Networks'),
(93, '10', 'What is the subnetwork address for a host with the IP address 200.10.5.68/28?', '200.10.5.56', '200.10.5.32', '200.10.5.64', '200.10.5.0', '200.10.5.64', 'Computer Networks'),
(94, '1', 'When you need to obtain the ASCII value of a character which of the following function you apply in PHP?', 'chr( );', 'asc( );', 'val( );', 'ord( );', 'ord( );', 'PHP'),
(95, '2', 'Which of the following is true about php variables?', 'Variables can, but do not need, to be declared before assignment.', 'Variables in PHP do not have intrinsic types - a variable does not know in advance whether it will be used to store a number or a string of characters.', 'Variables used before they are assigned have default values.', 'All of the above.', 'All of the above.', 'PHP'),
(101, '1', 'A situation where several processes access and manipulate the same data concurrently and the outcome of the execution depends on the particular order in which access takes place is called ____________', 'data consistency', 'race condition', 'aging', 'starvation', 'race condition', 'Operating Systems'),
(102, '2', 'Mutual exclusion implies that ____________', 'if a process is executing in its critical section, then no other process must be executing in their critical sections', 'if a process is executing in its critical section, then other processes must be executing in their critical sections', 'if a process is executing in its critical section, then all the resources of the system must be blocked until it finishes execution', 'none of the mentioned', 'if a process is executing in its critical section, then no other process must be executing in their critical sections', 'Operating Systems'),
(103, '3', 'There are 10 different processes running on a workstation. Idle processes are waiting for an input event in the input queue. Busy processes are scheduled with the Round-Robin time sharing method. Which out of the following quantum times is the best value for small response times, if the processes have a short runtime, e.g. less than 10ms?', 'tQ = 15ms', 'tQ = 50ms', 'tQ = 40ms', 'tQ = 45ms', 'tQ = 15ms', 'Operating Systems'),
(104, '4', 'Consider the following set of processes, the length of the CPU burst time given in milliseconds. Process Burst time P1 6 P2 8 P3 7 P4 3 Assuming the above process being scheduled with the SJF scheduling algorithm.', 'The waiting time for process P1 is 0ms', 'The waiting time for process P1 is 16ms', 'The waiting time for process P1 is 16ms', 'The waiting time for process P1 is 3ms', 'The waiting time for process P1 is 3ms', 'Operating Systems'),
(105, '5', 'Using Priority Scheduling algorithm, find the average waiting time for the following set of processes given with their priorities in the order: Process : Burst Time : Priority respectively . P1 : 10 : 3 , P2 : 1 : 1 ,  P3 : 2 : 4 , P4 : 1 : 5 , P5 : 5 : 2. ', '8 milliseconds', '8.2 milliseconds', '7.75 milliseconds', '5 milliseconds', '8.2 milliseconds', 'Operating Systems'),
(106, '6', 'With round robin scheduling algorithm in a time shared system,', 'using extremely small time slices increases performance', 'using very large time slices converts it into First come First served scheduling algorithm', 'using very small time slices converts it into Shortest Job First algorithm', 'using very small time slices converts it into First come First served scheduling algorithm', 'using very large time slices converts it into First come First served scheduling algorithm', 'Operating Systems'),
(107, '7', 'Consider three CPU-intensive processes, which require 10, 20 and 30 time units and arrive at times 0, 2 and 6, respectively. How many context switches are needed if the operating system implements a shortest remaining time first scheduling algorithm? Do not count the context switches at time zero and at the end.', '1', '2', '3', '4', '2', 'Operating Systems'),
(108, '8', 'Five jobs A, B, C, D and E are waiting in Ready Queue. Their expected runtimes are 9, 6, 3, 5 and x respectively. All jobs entered in Ready queue at time zero. They must run in _____ order to minimize average response time if 3 < x < 5.', 'C, E, D, B, A', 'B, A, D, E, C', 'E, D, C, B, A', 'C, B, A, E, D', 'C, E, D, B, A', 'Operating Systems'),
(109, '9', 'In a system using single processor, a new process arrives at the rate of six processes per minute and each such process requires seven seconds of service time. What is the CPU utilization?', '70%', '40%', '20%', '60%', '70%', 'Operating Systems'),
(111, '1', 'Which of the following function of String object returns the index within the calling String object of the last occurrence of the specified value?', 'lastIndexOf()', 'search()', 'indexOf()', 'substr()', 'lastIndexOf()', 'JavaScript'),
(112, '2', 'Choose the correct JavaScript syntax to change the content of the following HTML code.', 'document.getElement (â€œletsfindcourse\").innerHTML = \"I am a letsfindcourse\";', 'document.getElementById (â€œletsfindcourse\").innerHTML = \"I am a letsfindcourse\";', 'document.getId (â€œletsfindcourse\") = \"I am a letsfindcourse\";', 'document.getElementById (â€œletsfindcourse\").innerHTML = I am a letsfindcourse;', 'document.getElementById (â€œletsfindcourse\").innerHTML = \"I am a letsfindcourse\";', 'JavaScript'),
(113, '3', 'What will be the output of the following Javascript code?     var string1 = \"Letsfindcourse\";     var intvalue = 30;     alert( string1 + intvalue );', 'Letsfindcourse 30', '30', 'Letsfindcourse30', 'Exception', 'Letsfindcourse30', 'JavaScript'),
(114, '4', 'What if we put ++ operator inside if condition? find the output of following code  < script> var a = 10; if(a == a++) document.write(a);', 'Error', 'Nothing is printed', '10', '11', '11', 'JavaScript'),
(116, '5', 'What will be the output of the following JavaScript code?    var a= 0; var b = 0; while (a < 3) {   	a++;   	b += a; 	console.log(b); }', '135', '123', '013', '01', '135', 'JavaScript'),
(117, '6', 'What will be the output of the following JavaScript code?  function height() {	     var  height = 123.56;     var type = (height>=190) ? \"tall\" : \"short\";     return type; }', '123.56', '190', 'tall', 'short', 'short', 'JavaScript'),
(120, '1', 'What will be the output of the following program?       public class MyFirst {         public static void main(String[] args) {            MyFirst obj = new MyFirst(n);    }    static int a = 10;    static int n;    int b = 5;    int c;    public MyFirst(int m) {          System.out.println(a + \", \" + b + \", \" + c + \", \" + n + \", \" + m);      }   // Instance Block     {        b = 30;        n = 20;     }    // Static Block     static    {             a = 60;        }     }  ', '10, 5, 0, 20, 0', '60, 30, 0, 20, 0', '60, 5, 0, 20', '10, 30, 20', '60, 30, 0, 20, 0', 'Java '),
(121, '2', 'Evaluate the following Java expression, if x=3, y=5, and z=10:  ++z + y - y + z + x++', '24', '21', '25', '26', '25', 'Java '),
(122, '3', 'What will be the output of the following program?  public class Test {   public static void main(String[] args) {       int count = 1;       while (count <= 15) {       System.out.println(count % 2 == 1 ? \"***\" : \"+++++\");       ++count;           }      // end while       }       // end main     }  ', '15 times ***', '15 times +++++', '8 times *** and 7 times +++++', 'Both will print only once', '8 times *** and 7 times +++++', 'Java '),
(123, '4', 'Which of the following for loop declaration is not valid?', 'for ( int i = 99; i >= 0; i / 9 )', 'for ( int i = 7; i <= 77; i += 7 )', 'for ( int i = 20; i >= 2; - -i )', 'for ( int i = 2; i <= 20; i = 2* i )', 'for ( int i = 99; i >= 0; i / 9 )', 'Java '),
(124, '5', 'Which of these classes are the direct subclasses of the Throwable class?', 'RuntimeException and Error class', 'Exception and VirtualMachineError class', 'Error and Exception class', 'IOException and VirtualMachineError class', 'Error and Exception class', 'Java '),
(125, '6', 'class Test {     protected int x, y; }    class Main {     public static void main(String args[]) {         Test t = new Test();         System.out.println(t.x + \" \" + t.y);     } } ', '0 0', '0 1', '1 0', '1 2', '0 0', 'Java '),
(126, '7', 'Predict the output of following Java Programs.  public class Calculator {     int num = 100;     public void calc(int num)  { this.num = num * 10;  }     public void printNum()     { System.out.println(num); }        public static void main(String[] args)     {         Calculator obj = new Calculator();         obj.calc(2);         obj.printNum();     } }', '1000', '20', '10', '2', '20', 'Java '),
(127, '8', 'Predict the output of following Java Programs. public class Test {     public static void main(String[] args)     {         StringBuilder s1 = new StringBuilder(\"Java\");         String s2 = \"Good\";         s1.append(s2);         s1.substring(4);         int foundAt = s1.indexOf(s2);         System.out.println(foundAt);     } }', '4', '-1', '3', 'A StringIndexOutOfBoundsException is thrown at runtime.', 'A StringIndexOutOfBoundsException is thrown at runtime.', 'Java ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'sri', 'sri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'abc', 'abc@gmail.com', 'e99a18c428cb38d5f260853678922e03'),
(3, 'sai', 'sai@gmail.com', 'a9eb812238f753132652ae09963a05e9');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
