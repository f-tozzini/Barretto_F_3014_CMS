-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 05, 2018 at 09:20 PM
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
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` int(3) UNSIGNED NOT NULL,
  `genre_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Horror'),
(4, 'Animation'),
(5, 'TV Show'),
(6, 'Romance'),
(7, 'Drama'),
(8, 'Classic');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` smallint(5) UNSIGNED NOT NULL,
  `movies_title` varchar(100) NOT NULL,
  `movies_thumbs` varchar(200) NOT NULL,
  `movies_desc` varchar(1000) NOT NULL,
  `movies_year` varchar(20) NOT NULL,
  `movies_rating` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_title`, `movies_thumbs`, `movies_desc`, `movies_year`, `movies_rating`) VALUES
(1, 'Beauty and the Beast', 'beauty-beast.jpg', 'An adaptation of the fairy tale about a monstrous-looking prince and a young woman who fall in love.', '2017', '73'),
(2, 'Dark knight', 'batman.jpg', 'When the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham, the Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.', '2008', '82'),
(3, 'Wanted', 'wanted.jpg', 'A frustrated office worker learns that he is the son of a professional assassin and that he shares his father\'s superhuman killing abilities.', '2008', '67'),
(4, 'The Avengers', 'avengers.jpg', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', '2012', '81'),
(5, 'Amelie', 'amelie.jpg', 'Amélie is an innocent and naive girl in Paris with her own sense of justice. She decides to help those around her and, along the way, discovers love.', '2001', '83'),
(6, 'Inside out', 'inside-out.jpg', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.', '2015', '82'),
(7, 'Up!', 'up.jpg', 'Seventy-eight year old Carl Fredricksen travels to Paradise Falls in his home equipped with balloons, inadvertently taking a young stowaway.', '2009', '83'),
(8, 'Frozen', 'frozen.jpg', 'When Queen Elsa accidentally uses her power to turn things into ice, her sister Anna teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.', '2013', '75'),
(9, 'Mulan', 'mulan.jpg', 'To save her father from death in the army, a young maiden secretly goes in his place and becomes one of China\'s greatest heroines in the process.', '1998', '76'),
(10, 'Toy Story', 'toy-story.jpg', 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy\'s room.', '2003', '81'),
(11, 'Gilmore Girls', 'gilmore-girls.jpg', 'A dramedy centering around the relationship between a thirtysomething single mother and her teen daughter living in Stars Hollow, Connecticut.', '2000-2007', '81'),
(12, 'One Tree Hill', 'one-tree-hill.jpg', 'Half-brothers Lucas and Nathan Scott trade between kinship and rivalry both on the basketball court and in the hearts of their friends in the small, but not so quiet town of Tree Hill, North Carolina.', '2003-2012', '77'),
(13, 'Outlander', 'outlander.jpg', 'An English combat nurse from 1945 is mysteriously swept back in time to 1743.', '2014-2018', '85'),
(14, 'Finding Nemo', 'finding-nemo.jpg', 'After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.', '2003', '81'),
(15, 'Wonder Woman', 'wonder_woman.jpg', 'When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.', '2017', '75'),
(16, 'Lucy', 'lucy.jpg', 'A woman, accidentally caught in a dark deal, turns the tables on her captors and transforms into a merciless warrior evolved beyond human logic.', '2014', '64'),
(17, 'PS I love you', 'ps_iloveyou.jpg', 'A young widow discovers that her late husband has left her 10 messages intended to help ease her pain and start a new life.', '2007', '71'),
(18, 'If Only', 'if_only.jpg', 'It takes a tragedy to teach the young businessman Ian to put love ahead of work and open up to his musician girlfriend Samantha.', '2004', '72'),
(19, 'Letters to Juliet', 'letters-to-juliet.jpg', 'Sophie dreams of becoming a writer and travels to Verona, Italy where she meets the \"Secretaries of Juliet\".', '2010', '66'),
(20, 'Jumanji', 'jumanji.jpg', 'Four teenagers are sucked into a magical video game, and the only way they can escape is to work together to finish the game.', '2017', '70'),
(21, 'Mean Girls', 'mean-girls.png', 'Cady Heron is a hit with The Plastics, the A-list girl clique at her new school, until she makes the mistake of falling for Aaron Samuels, the ex-boyfriend of alpha Plastic Regina George.', '2004', '70'),
(22, 'Pitch Perfect', 'pitch_perfect.jpg', 'Beca, a freshman at Barden University, is cajoled into joining The Bellas, her school\'s all-girls singing group. Injecting some much needed energy into their repertoire, The Bellas take on their male rivals in a campus competition.', '2012', '72'),
(23, 'Deadpool', 'deadpool.jpg', 'A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge.', '2016', '80'),
(24, 'Breakfast at Tiffanys', 'breakfast_tiffanys.jpg', 'A young New York socialite becomes interested in a young man who has moved into her apartment building, but her past threatens to get in the way.', '1961', '77'),
(25, 'Sabrina', 'sabrina.jpg', 'A playboy becomes interested in the daughter of his family\'s chauffeur, but it\'s his more serious brother who would be the better man for her.', '1954', '77'),
(26, 'Roman Holiday', 'roman_holiday.jpg', 'A bored and sheltered princess escapes her guardians and falls in love with an American newsman in Rome.', '1953', '81'),
(27, 'Life is Beautiful', 'life_is_beautiful.jpg', 'When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.', '1997', '86'),
(28, 'Covert Affairs', 'covert_affairs.jpg', 'Fresh out of the farm, Annie Walker must adapt to the challenging life of a CIA operative under the guidance of her handler, Auggie. But soon she realizes her recruit might have to do with her last boyfriend rather than her talent.', '2010-2014', '73'),
(29, 'How I met your mother', 'how_i_met_your_mother.jpg', 'A father recounts to his children, through a series of flashbacks, the journey he and his four best friends took leading up to him meeting their mother.', '2005-2014', '84'),
(30, 'It', 'it.jpg', 'In the summer of 1989, a group of bullied kids band together to destroy a shapeshifting monster, which disguises itself as a clown and preys on the children of Derry, their small Maine town.', '2017', '75'),
(31, 'The Ring', 'the_ring.jpg', 'A journalist must investigate a mysterious videotape which seems to cause the death of anyone in a week of viewing it.', '2002', '71');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `movie_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`movie_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 6),
(2, 1, 7),
(3, 2, 1),
(4, 2, 7),
(5, 3, 1),
(6, 3, 7),
(7, 4, 1),
(8, 4, 2),
(9, 5, 7),
(10, 5, 8),
(11, 6, 2),
(12, 6, 4),
(13, 7, 2),
(14, 7, 4),
(15, 8, 2),
(16, 8, 4),
(17, 9, 2),
(18, 9, 4),
(19, 10, 2),
(20, 10, 4),
(21, 11, 5),
(22, 11, 7),
(23, 12, 5),
(24, 12, 7),
(25, 13, 5),
(26, 13, 6),
(27, 14, 2),
(28, 14, 4),
(29, 15, 1),
(30, 15, 7),
(31, 16, 1),
(32, 16, 7),
(33, 17, 6),
(34, 17, 7),
(35, 18, 6),
(36, 18, 7),
(37, 19, 6),
(38, 19, 7),
(39, 20, 2),
(40, 20, 1),
(41, 21, 2),
(42, 21, 7),
(43, 22, 2),
(44, 23, 2),
(45, 23, 1),
(46, 24, 6),
(47, 24, 8),
(48, 25, 6),
(49, 25, 8),
(50, 26, 8),
(51, 26, 6),
(52, 27, 7),
(53, 27, 8),
(54, 28, 5),
(55, 28, 1),
(56, 29, 5),
(57, 29, 2),
(58, 30, 3),
(59, 31, 3),
(60, 32, 1),
(61, 33, 5),
(62, 34, 5),
(63, 35, 5),
(64, 36, 2),
(65, 37, 2),
(66, 38, 4),
(67, 39, 1),
(68, 32, 3),
(69, 33, 1),
(70, 34, 2),
(71, 35, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` smallint(5) UNSIGNED NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_username` varchar(250) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_name`, `user_username`, `user_password`, `user_email`, `user_ip`) VALUES
(1, 'Flavia', 'flavia', '1234', 'flavia@flavia.com', '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`movie_genre_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `movie_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
