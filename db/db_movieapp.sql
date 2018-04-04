-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 30, 2018 at 03:59 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movieapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` smallint(5) UNSIGNED NOT NULL,
  `movies_title` varchar(100) NOT NULL,
  `movies_thumbs` varchar(200) NOT NULL,
  `movies_desc` varchar(1000) NOT NULL,
  `movies_genre` varchar(30) NOT NULL,
  `movies_year` varchar(20) NOT NULL,
  `movies_rating` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_title`, `movies_thumbs`, `movies_desc`, `movies_genre`, `movies_year`, `movies_rating`) VALUES
(1, 'Beauty and the Beast', 'beauty-beast.jpg', 'An adaptation of the fairy tale about a monstrous-looking prince and a young woman who fall in love.', 'Drama', '2017', '73'),
(2, 'Dark knight', 'batman.jpg', 'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham, the Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'Action', '2008', '82'),
(3, 'Wanted', 'wanted.jpg', 'A frustrated office worker learns that he is the son of a professional assassin and that he shares his father\'s superhuman killing abilities.', 'Action', '2008', '67'),
(4, 'The avengers', 'avengers.jpg', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', 'Action', '2012', '81'),
(5, 'Amelie', 'amelie.jpg', 'Amélie is an innocent and naive girl in Paris with her own sense of justice. She decides to help those around her and, along the way, discovers love.', 'Drama', '2001', '83'),
(6, 'Inside out', 'inside-out.jpg', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.', 'Animation', '2015', '82'),
(7, 'Up!', 'up.jpg', 'Seventy-eight year old Carl Fredricksen travels to Paradise Falls in his home equipped with balloons, inadvertently taking a young stowaway.', 'Animation', '2009', '83'),
(8, 'Frozen', 'frozen.jpg', 'When the newly-crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister Anna teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.', 'Animation', '2013', '75'),
(9, 'Mulan', 'mulan.jpg', 'To save her father from death in the army, a young maiden secretly goes in his place and becomes one of China\'s greatest heroines in the process.', 'Animation', '1998', '76'),
(10, 'Toy Story', 'toy-story.jpg', 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy\'s room.', 'Animation', '2003', '81'),
(11, 'Gilmore Girls', 'gilmore-girls.jpg', 'A dramedy centering around the relationship between a thirtysomething single mother and her teen daughter living in Stars Hollow, Connecticut.', 'TV Show', '2000-2007', '81'),
(12, 'One Tree Hill', 'one-tree-hill.jpg', 'Half-brothers Lucas and Nathan Scott trade between kinship and rivalry both on the basketball court and in the hearts of their friends in the small, but not so quiet town of Tree Hill, North Carolina.', 'TV Show', '2003-2012', '77'),
(13, 'Outlander', 'outlander.jpg', 'An English combat nurse from 1945 is mysteriously swept back in time to 1743.', 'TV Show', '2014-2018', '85'),
(14, 'Finding Nemo', 'finding-nemo.jpg', 'After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.', 'Animation', '2003', '81'),
(15, 'Wonder Woman', 'wonder_woman.jpg', 'When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.', 'Action', '2017', '75'),
(16, 'Lucy', 'lucy.jpg', 'A woman, accidentally caught in a dark deal, turns the tables on her captors and transforms into a merciless warrior evolved beyond human logic.', 'Action', '2014', '64'),
(17, 'PS I love you', 'ps_iloveyou.jpg', 'A young widow discovers that her late husband has left her 10 messages intended to help ease her pain and start a new life.', 'Romance', '2007', '71'),
(18, 'If only', 'if_only.jpg', 'It takes a tragedy to teach the young businessman Ian to put love ahead of work and open up to his musician girlfriend Samantha.', 'Romance', '2004', '72'),
(19, 'Letters to Juliet', 'letters-to-juliet.jpg', 'Sophie dreams of becoming a writer and travels to Verona, Italy where she meets the \"Secretaries of Juliet\".', 'Romance', '2010', '66'),
(20, 'Jumanji', 'jumanji.jpg', 'Four teenagers are sucked into a magical video game, and the only way they can escape is to work together to finish the game.', 'Comedy', '2017', '70'),
(21, 'Mean Girls', 'mean-girls.png', 'Cady Heron is a hit with The Plastics, the A-list girl clique at her new school, until she makes the mistake of falling for Aaron Samuels, the ex-boyfriend of alpha Plastic Regina George.', 'Comedy', '2004', '70'),
(22, 'Pitch Perfect', 'pitch_perfect.jpg', 'Beca, a freshman at Barden University, is cajoled into joining The Bellas, her school\'s all-girls singing group. Injecting some much needed energy into their repertoire, The Bellas take on their male rivals in a campus competition.', 'Comedy', '2012', '72'),
(23, 'Deadpool', 'deadpool.jpg', 'A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge.', 'Comedy', '2016', '80'),
(24, 'Breakfast at Tiffanys', 'breakfast_tiffanys.jpg', 'A young New York socialite becomes interested in a young man who has moved into her apartment building, but her past threatens to get in the way.', 'Classic', '1961', '77'),
(25, 'Sabrina', 'sabrina.jpg', 'A playboy becomes interested in the daughter of his family\'s chauffeur, but it\'s his more serious brother who would be the better man for her.', 'Classic', '1954', '77'),
(26, 'Roman Holiday', 'roman_holiday.jpg', 'A bored and sheltered princess escapes her guardians and falls in love with an American newsman in Rome.', 'Classic ', '1953', '81'),
(27, 'Life is Beautiful', 'life_is_beautiful.jpg', 'When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.', '', '1997', '86'),
(28, 'Covert Affairs', 'covert_affairs.jpg', 'Fresh out of the farm, Annie Walker must adapt to the challenging life of a CIA operative under the guidance of her handler, Auggie. But soon she realizes her recruit might have to do with her last boyfriend rather than her talent.', 'TV Show', '2010-2014', '73'),
(29, 'How I met your mother', 'how_i_met_your_mother.jpg', 'A father recounts to his children, through a series of flashbacks, the journey he and his four best friends took leading up to him meeting their mother.', 'TV Show', '2005-2014', '84'),
(30, 'It', 'it.jpg', 'In the summer of 1989, a group of bullied kids band together to destroy a shapeshifting monster, which disguises itself as a clown and preys on the children of Derry, their small Maine town.', 'Horror', '2017', '75'),
(31, 'The Ring', 'the_ring.jpg', 'A journalist must investigate a mysterious videotape which seems to cause the death of anyone in a week of viewing it.', 'Horror', '2002', '71');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` smallint(5) UNSIGNED NOT NULL,
  `user_firstname` varchar(250) NOT NULL,
  `user_lastname` varchar(250) NOT NULL,
  `user_username` varchar(250) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_ip` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_firstname`, `user_lastname`, `user_username`, `user_password`, `user_email`, `user_ip`) VALUES
(1, 'Flavia', 'Barretto', 'flavia', '1234', 'flavia@flavia.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
