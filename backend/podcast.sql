-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-03-2020 a las 18:59:05
-- Versión del servidor: 10.2.25-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `podcast`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_genre`
--

CREATE TABLE `api_genre` (
  `genre_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `api_genre`
--

INSERT INTO `api_genre` (`genre_id`, `name`, `url`) VALUES
(26, 'Podcasts', 'https://itunes.apple.com/us/genre/id26'),
(1301, 'Arts', 'https://itunes.apple.com/us/genre/id1301'),
(1302, 'Personal Journals', 'https://itunes.apple.com/us/genre/id1302'),
(1303, 'Comedy', 'https://itunes.apple.com/us/genre/id1303'),
(1304, 'Education', 'https://itunes.apple.com/us/genre/id1304'),
(1305, 'Kids & Family', 'https://itunes.apple.com/us/genre/id1305'),
(1309, 'TV & Film', 'https://itunes.apple.com/us/genre/id1309'),
(1310, 'Music', 'https://itunes.apple.com/us/genre/id1310'),
(1314, 'Religion & Spirituality', 'https://itunes.apple.com/us/genre/id1314'),
(1318, 'Technology', 'https://itunes.apple.com/us/genre/id1318'),
(1320, 'Places & Travel', 'https://itunes.apple.com/us/genre/id1320'),
(1321, 'Business', 'https://itunes.apple.com/us/genre/id1321'),
(1324, 'Society & Culture', 'https://itunes.apple.com/us/genre/id1324'),
(1402, 'Design', 'https://itunes.apple.com/us/genre/id1402'),
(1405, 'Performing Arts', 'https://itunes.apple.com/us/genre/id1405'),
(1412, 'Investing', 'https://itunes.apple.com/us/genre/id1412'),
(1439, 'Christianity', 'https://itunes.apple.com/us/genre/id1439'),
(1444, 'Spirituality', 'https://itunes.apple.com/us/genre/id1444'),
(1482, 'Books', 'https://itunes.apple.com/us/genre/id1482'),
(1483, 'Fiction', 'https://itunes.apple.com/us/genre/id1483'),
(1484, 'Drama', 'https://itunes.apple.com/us/genre/id1484'),
(1485, 'Science Fiction', 'https://itunes.apple.com/us/genre/id1485'),
(1487, 'History', 'https://itunes.apple.com/us/genre/id1487'),
(1488, 'True Crime', 'https://itunes.apple.com/us/genre/id1488'),
(1489, 'News', 'https://itunes.apple.com/us/genre/id1489'),
(1490, 'Business News', 'https://itunes.apple.com/us/genre/id1490'),
(1495, 'Improv', 'https://itunes.apple.com/us/genre/id1495'),
(1496, 'Comedy Interviews', 'https://itunes.apple.com/us/genre/id1496'),
(1500, 'Self-Improvement', 'https://itunes.apple.com/us/genre/id1500'),
(1502, 'Leisure', 'https://itunes.apple.com/us/genre/id1502'),
(1511, 'Government', 'https://itunes.apple.com/us/genre/id1511'),
(1512, 'Health & Fitness', 'https://itunes.apple.com/us/genre/id1512'),
(1518, 'Medicine', 'https://itunes.apple.com/us/genre/id1518'),
(1519, 'Education for Kids', 'https://itunes.apple.com/us/genre/id1519'),
(1520, 'Stories for Kids', 'https://itunes.apple.com/us/genre/id1520'),
(1526, 'Daily News', 'https://itunes.apple.com/us/genre/id1526'),
(1527, 'Politics', 'https://itunes.apple.com/us/genre/id1527'),
(1530, 'News Commentary', 'https://itunes.apple.com/us/genre/id1530'),
(1533, 'Science', 'https://itunes.apple.com/us/genre/id1533'),
(1534, 'Natural Sciences', 'https://itunes.apple.com/us/genre/id1534'),
(1535, 'Social Sciences', 'https://itunes.apple.com/us/genre/id1535'),
(1537, 'Nature', 'https://itunes.apple.com/us/genre/id1537'),
(1541, 'Life Sciences', 'https://itunes.apple.com/us/genre/id1541'),
(1543, 'Documentary', 'https://itunes.apple.com/us/genre/id1543'),
(1544, 'Relationships', 'https://itunes.apple.com/us/genre/id1544'),
(1545, 'Sports', 'https://itunes.apple.com/us/genre/id1545'),
(1548, 'Basketball', 'https://itunes.apple.com/us/genre/id1548');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_podcast`
--

CREATE TABLE `api_podcast` (
  `id` int(11) NOT NULL,
  `artist_name` varchar(250) NOT NULL,
  `release_date` date DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `copyright` longtext DEFAULT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `api_podcast`
--

INSERT INTO `api_podcast` (`id`, `artist_name`, `release_date`, `name`, `copyright`, `url`) VALUES
(77001367, 'Ramsey Network', '2020-03-09', 'The Dave Ramsey Show', '© Copyright 2019', 'https://podcasts.apple.com/us/podcast/the-dave-ramsey-show/id77001367'),
(121493675, 'NPR', '2020-03-09', 'NPR News Now', '© Copyright 2007-2019 NPR - For Personal Use Only', 'https://podcasts.apple.com/us/podcast/npr-news-now/id121493675'),
(121493804, 'NPR', '2020-03-07', 'Wait Wait... Don\'t Tell Me!', '© Copyright 2014-2020 NPR - For Personal Use Only', 'https://podcasts.apple.com/us/podcast/wait-wait-dont-tell-me/id121493804'),
(135067274, 'BBC World Service', '2020-03-09', 'Global News Podcast', '© (C) BBC 2020', 'https://podcasts.apple.com/us/podcast/global-news-podcast/id135067274'),
(150892556, 'On Being Studios', '2020-03-05', 'On Being with Krista Tippett', '© 2019 The On Being Project. All rights reserved.', 'https://podcasts.apple.com/us/podcast/on-being-with-krista-tippett/id150892556'),
(152249110, 'WNYC Studios', '2020-03-06', 'Radiolab', '© WNYC', 'https://podcasts.apple.com/us/podcast/radiolab/id152249110'),
(160904630, 'TED', '2020-03-09', 'TED Talks Daily', '© Creative Commons: https://creativecommons.org/licenses/by-nc-nd/4.0/', 'https://podcasts.apple.com/us/podcast/ted-talks-daily/id160904630'),
(201671138, 'This American Life', '2020-03-08', 'This American Life', '© Copyright 1995-2020 This American Life', 'https://podcasts.apple.com/us/podcast/this-american-life/id201671138'),
(201853034, 'Marketplace', '2020-03-09', 'Marketplace', '© Copyright 2020 American Public Media', 'https://podcasts.apple.com/us/podcast/marketplace/id201853034'),
(209377688, 'Westwood One Podcast Network', '2020-03-10', 'Mark Levin Podcast', '© 2020 Westwood One Podcast Network / Mark R. Levin', 'https://podcasts.apple.com/us/podcast/mark-levin-podcast/id209377688'),
(214089682, 'NPR', '2020-03-10', 'Fresh Air', '© Copyright 2015-2019 NPR - For Personal Use Only', 'https://podcasts.apple.com/us/podcast/fresh-air/id214089682'),
(275699983, 'The Moth', '2020-03-06', 'The Moth', '© 2006-2019', 'https://podcasts.apple.com/us/podcast/the-moth/id275699983'),
(278981407, 'iHeartRadio', '2020-03-10', 'Stuff You Should Know', '© Copyright 2020 iHeartRadio', 'https://podcasts.apple.com/us/podcast/stuff-you-should-know/id278981407'),
(283605519, 'iHeartRadio', '2020-03-09', 'Stuff You Missed in History Class', '© Copyright 2020 iHeartRadio', 'https://podcasts.apple.com/us/podcast/stuff-you-missed-in-history-class/id283605519'),
(290783428, 'NPR', '2020-03-07', 'Planet Money', '© Copyright 2015-2020 NPR - For Personal Use Only', 'https://podcasts.apple.com/us/podcast/planet-money/id290783428'),
(294055449, 'Rachel Maddow, MSNBC', '2020-03-10', 'The Rachel Maddow Show', '© © Copyright © 2019 NBC News', 'https://podcasts.apple.com/us/podcast/the-rachel-maddow-show/id294055449'),
(306390087, 'PodcastOne / Carolla Digital', '2020-03-09', 'Adam Carolla Show', 'Copyright © 2002-2020 PodcastOne.com. All rights reserved.', 'https://podcasts.apple.com/us/podcast/adam-carolla-show/id306390087'),
(329875043, 'Marc Maron', '2020-03-09', 'WTF with Marc Maron Podcast', '© 2012.', 'https://podcasts.apple.com/us/podcast/wtf-with-marc-maron-podcast/id329875043'),
(354668519, 'Freakonomics Radio', '2020-03-05', 'Freakonomics Radio', '© 2020 ​Dubner Productions and Stitcher', 'https://podcasts.apple.com/us/podcast/freakonomics-radio/id354668519'),
(360084272, 'Joe Rogan', '2020-03-06', 'The Joe Rogan Experience', 'Copyright © Talking Monkey Productions', 'https://podcasts.apple.com/us/podcast/the-joe-rogan-experience/id360084272'),
(367330921, 'The McElroys', '2020-03-09', 'My Brother, My Brother And Me', '© Justin, Travis and Griffin McElroy', 'https://podcasts.apple.com/us/podcast/my-brother-my-brother-and-me/id367330921'),
(394775318, 'Roman Mars', '2020-03-03', '99% Invisible', 'Copyright © 2017 Roman Mars. All rights reserved.', 'https://podcasts.apple.com/us/podcast/99-invisible/id394775318'),
(480486345, 'All Things Comedy | Wondery', '2020-03-09', 'Monday Morning Podcast', '© Bill Burr', 'https://podcasts.apple.com/us/podcast/monday-morning-podcast/id480486345'),
(503482646, 'YMH Studios', '2020-03-04', 'Your Mom\'s House with Christina P. and Tom Segura', '© Tom Segura Christina Pazsitzky', 'https://podcasts.apple.com/us/podcast/your-moms-house-with-christina-p-and-tom-segura/id503482646'),
(523121474, 'NPR', '2020-03-06', 'TED Radio Hour', '© Copyright 2012-2020 NPR and Ted Conferences, LLC - For Personal Use Only', 'https://podcasts.apple.com/us/podcast/ted-radio-hour/id523121474'),
(620967489, 'Blaze Podcast Network', '2020-03-09', 'The Glenn Beck Program', '© 2020 Blaze Podcast Network', 'https://podcasts.apple.com/us/podcast/the-glenn-beck-program/id620967489'),
(703720228, 'American Public Media', '2020-03-10', 'Brains On! Science podcast for kids', '© Copyright 2020 American Public Media', 'https://podcasts.apple.com/us/podcast/brains-on-science-podcast-for-kids/id703720228'),
(719585944, 'Gimlet', '2020-03-05', 'Story Pirates', '', 'https://podcasts.apple.com/us/podcast/story-pirates/id719585944'),
(733163012, 'Sam Harris', '2020-03-02', 'Making Sense with Sam Harris', '© All rights reserved', 'https://podcasts.apple.com/us/podcast/making-sense-with-sam-harris/id733163012'),
(809264944, 'Criminal & Radiotopia', '2020-03-06', 'Criminal', '© Copyright 2016, Criminal Productions', 'https://podcasts.apple.com/us/podcast/criminal/id809264944'),
(917918570, 'This American Life', '2018-11-15', 'Serial', '© Copyright 2020 Serial Podcast', 'https://podcasts.apple.com/us/podcast/serial/id917918570'),
(934820588, 'ESPN, Dan Le Batard, Stugotz', '2020-03-09', 'The Dan Le Batard Show with Stugotz', '© 2018', 'https://podcasts.apple.com/us/podcast/the-dan-le-batard-show-with-stugotz/id934820588'),
(941907967, 'Gimlet', '2020-03-05', 'Reply All', '© All rights reserved', 'https://podcasts.apple.com/us/podcast/reply-all/id941907967'),
(948976028, 'Stories Podcast / Wondery', '2020-03-09', 'Stories Podcast: A Bedtime Show for Kids of All Ages', '© Stories Podcast 2019', 'https://podcasts.apple.com/us/podcast/stories-podcast-a-bedtime-show-for-kids-of-all-ages/id948976028'),
(953290300, 'NPR', '2020-03-06', 'Invisibilia', '© Copyright 2014-2020 NPR - For Personal Use Only', 'https://podcasts.apple.com/us/podcast/invisibilia/id953290300'),
(965293227, 'Westwood One Podcast Network / Dan Bongino', '2020-03-09', 'The Dan Bongino Show', '© 2020 Westwood One Podcast Network', 'https://podcasts.apple.com/us/podcast/the-dan-bongino-show/id965293227'),
(1028908750, 'NPR', '2020-03-10', 'Hidden Brain', '© Copyright 2015-2020 NPR - For Personal Use Only', 'https://podcasts.apple.com/us/podcast/hidden-brain/id1028908750'),
(1043699613, 'The Ringer & Bill Simmons', '2020-03-09', 'The Bill Simmons Podcast', '© All rights reserved.', 'https://podcasts.apple.com/us/podcast/the-bill-simmons-podcast/id1043699613'),
(1047335260, 'The Daily Wire', '2020-03-10', 'The Ben Shapiro Show', '© All rights reserved', 'https://podcasts.apple.com/us/podcast/the-ben-shapiro-show/id1047335260'),
(1057255460, 'NPR', '2020-03-11', 'The NPR Politics Podcast', '© Copyright 2015-2020 NPR - For Personal Use Only', 'https://podcasts.apple.com/us/podcast/the-npr-politics-podcast/id1057255460'),
(1070322219, 'Jocko DEFCOR Network', '2020-03-04', 'Jocko Podcast', '', 'https://podcasts.apple.com/us/podcast/jocko-podcast/id1070322219'),
(1074507850, 'Exactly Right', '2020-03-09', 'My Favorite Murder with Karen Kilgariff and Georgia Hardstark', '© 2020 Exactly Right', 'https://podcasts.apple.com/us/podcast/my-favorite-murder-karen-kilgariff-georgia-hardstark/id1074507850'),
(1089022756, 'Barstool Sports', '2020-03-09', 'Pardon My Take', '© 2020 Barstool Sports', 'https://podcasts.apple.com/us/podcast/pardon-my-take/id1089022756'),
(1103320303, 'Vermont Public Radio', '2020-03-13', 'But Why: A Podcast for Curious Kids', '© Vermont Public Radio', 'https://podcasts.apple.com/us/podcast/but-why-a-podcast-for-curious-kids/id1103320303'),
(1150510297, 'NPR', '2020-03-09', 'How I Built This with Guy Raz', '© Copyright 2016-2020 NPR - For Personal Use Only', 'https://podcasts.apple.com/us/podcast/how-i-built-this-with-guy-raz/id1150510297'),
(1164278826, 'Eric O\'Keeffe', '2020-03-16', 'What If World - Stories for Kids', '', 'https://podcasts.apple.com/us/podcast/what-if-world-stories-for-kids/id1164278826'),
(1192761536, 'Crooked Media', '2020-03-09', 'Pod Save America', '© Crooked Media. All Rights Reserved.', 'https://podcasts.apple.com/us/podcast/pod-save-america/id1192761536'),
(1194755213, 'James Pietragallo & Jimmie Whisman', '2020-03-05', 'Small Town Murder', '© 2020 James Pietragallo & Jimmie Whisman', 'https://podcasts.apple.com/us/podcast/small-town-murder/id1194755213'),
(1200361736, 'The New York Times', '2020-03-10', 'The Daily', '© 2018-2019 THE NEW YORK TIMES COMPANY; The New York Times encourages the use of RSS feeds for personal use in a news reader or as part of a non-commercial blog, subject to your agreement to our Terms of Service. Any commercial use of the RSS feed, and thus our content accessible via it, is prohibited without a written specific permission from The New York Times . We require proper format and attribution whenever New York Times content is posted on other\'s properties, and we reserve the right to require that you cease distributing our content.', 'https://podcasts.apple.com/us/podcast/the-daily/id1200361736'),
(1222114325, 'NPR', '2020-03-10', 'Up First', '© Copyright 2015-2020 NPR - For Personal Use Only', 'https://podcasts.apple.com/us/podcast/up-first/id1222114325'),
(1233834541, 'NPR', '2020-03-09', 'Wow in the World', '© Copyright 2015-2020 NPR - For Personal Use Only', 'https://podcasts.apple.com/us/podcast/wow-in-the-world/id1233834541'),
(1236778275, 'Cadence13', '2020-03-09', 'VIEWS with David Dobrik and Jason Nash', '© 2018 Cadence13. All rights reserved.', 'https://podcasts.apple.com/us/podcast/views-with-david-dobrik-and-jason-nash/id1236778275'),
(1244649384, 'LeVar Burton and Stitcher', '2020-03-24', 'LeVar Burton Reads', '© 2020 LeVar Burton and Stitcher', 'https://podcasts.apple.com/us/podcast/levar-burton-reads/id1244649384'),
(1246443751, 'WBUR', '2020-03-10', 'Circle Round', '© Copyright Trustees of Boston University', 'https://podcasts.apple.com/us/podcast/circle-round/id1246443751'),
(1259579050, 'Salesforce', '2020-03-05', 'Blazing Trails', '© All rights reserved', 'https://podcasts.apple.com/us/podcast/blazing-trails/id1259579050'),
(1264843400, 'Oprah', '2020-03-04', 'Oprah’s SuperSoul Conversations', '© 2020 Oprah', 'https://podcasts.apple.com/us/podcast/oprahs-supersoul-conversations/id1264843400'),
(1268527882, 'The Ringer & Bill Simmons', '2020-03-08', 'The Rewatchables', '', 'https://podcasts.apple.com/us/podcast/the-rewatchables/id1268527882'),
(1269253764, 'Girl Tales', '2020-03-08', 'Girl Tales', '© 2019 Girl Tales', 'https://podcasts.apple.com/us/podcast/girl-tales/id1269253764'),
(1299915173, 'Exactly Right', '2020-03-03', 'This Podcast Will Kill You', '© 2020 Exactly Right', 'https://podcasts.apple.com/us/podcast/this-podcast-will-kill-you/id1299915173'),
(1317493077, 'Duolingo', '2020-02-06', 'Duolingo Spanish Podcast', '© Duolingo, Inc.', 'https://podcasts.apple.com/us/podcast/duolingo-spanish-podcast/id1317493077'),
(1320118593, 'NPR', '2020-03-09', 'The Indicator from Planet Money', '© Copyright 2015-2020 NPR - For Personal Use Only', 'https://podcasts.apple.com/us/podcast/the-indicator-from-planet-money/id1320118593'),
(1322200189, 'audiochuck', '2020-03-09', 'Crime Junkie', '© audiochuck', 'https://podcasts.apple.com/us/podcast/crime-junkie/id1322200189'),
(1334878780, 'Comedy Central', '2020-03-10', 'The Daily Show With Trevor Noah: Ears Edition', '© Comedy Partners. All Rights Reserved.', 'https://podcasts.apple.com/us/podcast/the-daily-show-with-trevor-noah-ears-edition/id1334878780'),
(1345682353, 'Armchair Umbrella', '2020-03-09', 'Armchair Expert with Dax Shepard', '© 2019 Armchair Expert Podcast', 'https://podcasts.apple.com/us/podcast/armchair-expert-with-dax-shepard/id1345682353'),
(1346207297, 'Vox', '2020-03-09', 'Today, Explained', '© 2019 Vox Media, Inc. All Rights Reserved', 'https://podcasts.apple.com/us/podcast/today-explained/id1346207297'),
(1350594046, 'Rebel Girls', '2020-03-10', 'Good Night Stories for Rebel Girls', '© Copyright Rebel Girls', 'https://podcasts.apple.com/us/podcast/good-night-stories-for-rebel-girls/id1350594046'),
(1418960261, 'Barstool Sports', '2020-03-11', 'Call Her Daddy', '© 2020 Barstool Sports', 'https://podcasts.apple.com/us/podcast/call-her-daddy/id1418960261'),
(1438054347, 'Team Coco & Earwolf', '2020-03-09', 'Conan O’Brien Needs A Friend', '© 2020 Team Coco & Earwolf', 'https://podcasts.apple.com/us/podcast/conan-obrien-needs-a-friend/id1438054347'),
(1444873564, 'The Washington Post', '2020-03-10', 'Post Reports', '© The Washington Post', 'https://podcasts.apple.com/us/podcast/post-reports/id1444873564'),
(1446088262, 'Dr. Phil McGraw', '2020-03-10', 'Phil in the Blanks', '© 2020 Dr. Phil McGraw', 'https://podcasts.apple.com/us/podcast/phil-in-the-blanks/id1446088262'),
(1449766796, 'iHeartRadio & Ron Burgundy', '2020-03-05', 'The Ron Burgundy Podcast', '© iHeartRadio', 'https://podcasts.apple.com/us/podcast/the-ron-burgundy-podcast/id1449766796'),
(1458568923, 'Emma Chamberlain and Ramble', '2020-03-12', 'Anything Goes with Emma Chamberlain', '© EFC LLC.', 'https://podcasts.apple.com/us/podcast/anything-goes-with-emma-chamberlain/id1458568923'),
(1459421450, 'Dr. Phil McGraw', '2020-03-19', 'A Mother’s Secret: The Lori Vallow Story | Mystery and Murder: Analysis by Dr. Phil', '© 2020 Dr. Phil McGraw', 'https://podcasts.apple.com/us/podcast/mothers-secret-lori-vallow-story-mystery-murder-analysis/id1459421450'),
(1464919521, 'NBC News', '2020-03-10', 'Dateline NBC', '© © Copyright © 2019 NBC News', 'https://podcasts.apple.com/us/podcast/dateline-nbc/id1464919521'),
(1468013270, 'YMH Studios', '2020-03-16', '2 Bears 1 Cave with Tom Segura & Bert Kreischer', '', 'https://podcasts.apple.com/us/podcast/2-bears-1-cave-with-tom-segura-bert-kreischer/id1468013270'),
(1469394914, 'The Wall Street Journal & Gimlet', '2020-03-10', 'The Journal.', 'Copyright © Dow Jones & Company, Inc. All rights reserved.', 'https://podcasts.apple.com/us/podcast/the-journal/id1469394914'),
(1472106563, 'WaitWhat + Thrive Global', '2020-03-10', 'Meditative Story', '© WaitWhat Inc', 'https://podcasts.apple.com/us/podcast/meditative-story/id1472106563'),
(1474245040, 'Pushkin Industries', '2020-03-16', 'The Happiness Lab with Dr. Laurie Santos', '© 2019 Pushkin Industries', 'https://podcasts.apple.com/us/podcast/the-happiness-lab-with-dr-laurie-santos/id1474245040'),
(1480311435, 'Earwolf & Jenna Fischer and Angela Kinsey', '2020-03-11', 'Office Ladies', '© 2020 Earwolf & Jenna Fischer and Angela Kinsey', 'https://podcasts.apple.com/us/podcast/office-ladies/id1480311435'),
(1483638752, 'Showtime', '2020-03-26', 'All The Smoke', '©2020 Showtime', 'https://podcasts.apple.com/us/podcast/all-the-smoke/id1483638752'),
(1490915500, 'Longreads', '2020-03-16', 'Cat People', '', 'https://podcasts.apple.com/us/podcast/cat-people/id1490915500'),
(1494350511, 'Brené Brown and Cadence13', '2020-01-09', 'Unlocking Us with Brené Brown', '© Brené Brown Education and Research Group. All Rights Reserved.', 'https://podcasts.apple.com/us/podcast/unlocking-us-with-bren%C3%A9-brown/id1494350511'),
(1495411614, 'ABC News', '2020-03-26', 'Cutthroat Inc.', '© Copyright 2020, ABC Audio. All rights reserved.', 'https://podcasts.apple.com/us/podcast/cutthroat-inc/id1495411614'),
(1495601614, 'Ted Cruz', '2020-03-22', 'Verdict with Ted Cruz', '© All rights reserved', 'https://podcasts.apple.com/us/podcast/verdict-with-ted-cruz/id1495601614'),
(1498149200, 'Dan Crenshaw', '2020-03-22', 'Hold These Truths with Dan Crenshaw', '© Public Domain', 'https://podcasts.apple.com/us/podcast/hold-these-truths-with-dan-crenshaw/id1498149200'),
(1498806952, 'QCODE', '2020-03-16', 'The Left Right Game', '© 2020 QCODE', 'https://podcasts.apple.com/us/podcast/the-left-right-game/id1498806952'),
(1498948272, 'Comedy Central', '2020-03-24', 'Everyday Decisions with Jo Firestone', '© 2020 Comedy Partners. All Rights Reserved. Comedy Central and all related titles, logos and characters are trademarks of comedy partners.', 'https://podcasts.apple.com/us/podcast/everyday-decisions-with-jo-firestone/id1498948272'),
(1500035260, 'Wondery', '2020-03-05', 'The Dating Game Killer', '', 'https://podcasts.apple.com/us/podcast/the-dating-game-killer/id1500035260'),
(1500667648, 'Parcast Network', '2020-03-11', 'Supernatural with Ashley Flowers', '© Cutler Media LLC', 'https://podcasts.apple.com/us/podcast/supernatural-with-ashley-flowers/id1500667648'),
(1500789777, 'Mission', '2020-03-23', 'Hidden In Plain Sight', '', 'https://podcasts.apple.com/us/podcast/hidden-in-plain-sight/id1500789777'),
(1501029683, 'CNN', '2020-03-10', 'Coronavirus: Fact vs Fiction', '© 2020 Cable News Network LP, LLLP. A Time Warner Company. All Rights Reserved.', 'https://podcasts.apple.com/us/podcast/coronavirus-fact-vs-fiction/id1501029683'),
(1501568556, 'Wondery', '2020-03-19', 'Joe Exotic: Tiger King', '', 'https://podcasts.apple.com/us/podcast/joe-exotic-tiger-king/id1501568556'),
(1501720184, 'BBC World Service', '2020-03-12', 'Coronavirus Global Update', '© (C) BBC 2020', 'https://podcasts.apple.com/us/podcast/coronavirus-global-update/id1501720184'),
(1502126614, 'ABC News', '2020-03-13', 'COVID-19: What You Need to Know', '© Copyright 2020, ABC Audio. All rights reserved.', 'https://podcasts.apple.com/us/podcast/covid-19-what-you-need-to-know/id1502126614'),
(1503226625, 'NPR', '2020-03-17', 'Coronavirus Daily', '© Copyright 2020 NPR - For Personal Use Only', 'https://podcasts.apple.com/us/podcast/coronavirus-daily/id1503226625'),
(1503236243, 'Steve-O', '2020-03-19', 'Wild Ride! with Steve-O', '© 2020 Steve-O', 'https://podcasts.apple.com/us/podcast/wild-ride-with-steve-o/id1503236243'),
(1503837381, 'Lauren Daigle', '2020-03-21', 'Daigle Bites', '© Lauren Daigle 2020', 'https://podcasts.apple.com/us/podcast/daigle-bites/id1503837381'),
(1503921457, 'Criminal', '2020-03-26', 'Phoebe Reads a Mystery', '© Copyright Criminal Productions, LLC 2020', 'https://podcasts.apple.com/us/podcast/phoebe-reads-a-mystery/id1503921457'),
(1503998686, 'Podcast Nation', '2020-03-22', 'Riled Up with Arielle & Matt', '© 2020 Riled Up with Arielle & Matt by Podcast Nation', 'https://podcasts.apple.com/us/podcast/riled-up-with-arielle-matt/id1503998686'),
(1504384419, 'We Bought a House', '2020-03-23', 'We Bought a House with Claudia Sulewski and Finneas', '© We Bought a House', 'https://podcasts.apple.com/us/podcast/we-bought-a-house-with-claudia-sulewski-and-finneas/id1504384419');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_podcast_genres`
--

CREATE TABLE `api_podcast_genres` (
  `id` int(11) NOT NULL,
  `podcast_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `api_podcast_genres`
--

INSERT INTO `api_podcast_genres` (`id`, `podcast_id`, `genre_id`) VALUES
(79, 77001367, 26),
(81, 77001367, 1304),
(80, 77001367, 1321),
(78, 77001367, 1412),
(82, 77001367, 1500),
(204, 121493675, 26),
(205, 121493675, 1489),
(203, 121493675, 1526),
(164, 121493804, 26),
(163, 121493804, 1303),
(165, 121493804, 1502),
(170, 135067274, 26),
(169, 135067274, 1489),
(340, 150892556, 26),
(342, 150892556, 1314),
(341, 150892556, 1324),
(343, 150892556, 1444),
(339, 150892556, 1544),
(284, 152249110, 26),
(285, 152249110, 1324),
(286, 152249110, 1533),
(287, 152249110, 1537),
(283, 152249110, 1543),
(200, 160904630, 26),
(201, 160904630, 1301),
(202, 160904630, 1304),
(199, 160904630, 1402),
(111, 201671138, 26),
(113, 201671138, 1301),
(110, 201671138, 1302),
(112, 201671138, 1324),
(247, 201853034, 26),
(248, 201853034, 1489),
(246, 201853034, 1490),
(217, 209377688, 26),
(218, 209377688, 1489),
(216, 209377688, 1530),
(70, 214089682, 26),
(71, 214089682, 1301),
(72, 214089682, 1309),
(69, 214089682, 1482),
(207, 275699983, 26),
(208, 275699983, 1301),
(206, 275699983, 1405),
(68, 278981407, 26),
(67, 278981407, 1324),
(257, 283605519, 26),
(258, 283605519, 1324),
(256, 283605519, 1487),
(86, 290783428, 26),
(85, 290783428, 1321),
(87, 290783428, 1489),
(99, 294055449, 26),
(100, 294055449, 1489),
(98, 294055449, 1526),
(145, 306390087, 26),
(144, 306390087, 1303),
(178, 329875043, 26),
(179, 329875043, 1301),
(177, 329875043, 1303),
(180, 329875043, 1405),
(126, 354668519, 26),
(127, 354668519, 1324),
(125, 354668519, 1543),
(44, 360084272, 26),
(43, 360084272, 1303),
(45, 360084272, 1324),
(324, 367330921, 26),
(323, 367330921, 1303),
(278, 394775318, 26),
(279, 394775318, 1301),
(277, 394775318, 1402),
(224, 480486345, 26),
(223, 480486345, 1303),
(293, 503482646, 26),
(292, 503482646, 1303),
(115, 523121474, 26),
(114, 523121474, 1318),
(116, 523121474, 1533),
(117, 523121474, 1535),
(309, 620967489, 26),
(310, 620967489, 1489),
(311, 620967489, 1527),
(308, 620967489, 1530),
(129, 703720228, 26),
(128, 703720228, 1305),
(130, 703720228, 1533),
(226, 719585944, 26),
(227, 719585944, 1303),
(225, 719585944, 1305),
(229, 733163012, 26),
(230, 733163012, 1324),
(228, 733163012, 1533),
(210, 809264944, 26),
(209, 809264944, 1488),
(167, 917918570, 26),
(168, 917918570, 1488),
(166, 917918570, 1489),
(176, 934820588, 26),
(175, 934820588, 1545),
(266, 941907967, 26),
(265, 941907967, 1318),
(267, 941907967, 1324),
(242, 948976028, 26),
(241, 948976028, 1305),
(243, 948976028, 1483),
(273, 953290300, 26),
(276, 953290300, 1302),
(275, 953290300, 1324),
(274, 953290300, 1533),
(272, 953290300, 1535),
(149, 965293227, 26),
(150, 965293227, 1489),
(148, 965293227, 1530),
(107, 1028908750, 26),
(108, 1028908750, 1533),
(109, 1028908750, 1534),
(106, 1028908750, 1535),
(136, 1043699613, 26),
(135, 1043699613, 1545),
(53, 1047335260, 26),
(52, 1047335260, 1489),
(160, 1057255460, 26),
(161, 1057255460, 1489),
(162, 1057255460, 1511),
(159, 1057255460, 1527),
(250, 1070322219, 26),
(249, 1070322219, 1321),
(251, 1070322219, 1487),
(57, 1074507850, 26),
(58, 1074507850, 1303),
(56, 1074507850, 1488),
(172, 1089022756, 26),
(171, 1089022756, 1545),
(326, 1103320303, 26),
(325, 1103320303, 1305),
(335, 1150510297, 26),
(334, 1150510297, 1321),
(212, 1164278826, 26),
(214, 1164278826, 1303),
(213, 1164278826, 1305),
(215, 1164278826, 1495),
(211, 1164278826, 1520),
(89, 1192761536, 26),
(90, 1192761536, 1489),
(88, 1192761536, 1527),
(328, 1194755213, 26),
(327, 1194755213, 1303),
(329, 1194755213, 1488),
(36, 1200361736, 26),
(37, 1200361736, 1489),
(35, 1200361736, 1526),
(50, 1222114325, 26),
(51, 1222114325, 1489),
(49, 1222114325, 1526),
(122, 1233834541, 26),
(123, 1233834541, 1305),
(124, 1233834541, 1519),
(121, 1233834541, 1520),
(269, 1236778275, 26),
(268, 1236778275, 1303),
(157, 1244649384, 26),
(158, 1244649384, 1301),
(156, 1244649384, 1405),
(321, 1246443751, 26),
(322, 1246443751, 1305),
(320, 1246443751, 1520),
(298, 1259579050, 26),
(299, 1259579050, 1304),
(297, 1259579050, 1321),
(300, 1259579050, 1500),
(189, 1264843400, 26),
(188, 1264843400, 1324),
(260, 1268527882, 26),
(259, 1268527882, 1309),
(305, 1269253764, 26),
(306, 1269253764, 1301),
(304, 1269253764, 1305),
(307, 1269253764, 1405),
(234, 1299915173, 26),
(236, 1299915173, 1512),
(237, 1299915173, 1518),
(235, 1299915173, 1533),
(233, 1299915173, 1541),
(194, 1317493077, 26),
(193, 1317493077, 1304),
(196, 1317493077, 1320),
(195, 1317493077, 1324),
(271, 1320118593, 26),
(270, 1320118593, 1321),
(63, 1322200189, 26),
(62, 1322200189, 1488),
(141, 1334878780, 26),
(140, 1334878780, 1303),
(142, 1334878780, 1489),
(143, 1334878780, 1526),
(102, 1345682353, 26),
(101, 1345682353, 1303),
(103, 1345682353, 1309),
(331, 1346207297, 26),
(332, 1346207297, 1489),
(330, 1346207297, 1526),
(333, 1346207297, 1527),
(302, 1350594046, 26),
(301, 1350594046, 1304),
(303, 1350594046, 1305),
(152, 1418960261, 26),
(151, 1418960261, 1303),
(147, 1438054347, 26),
(146, 1438054347, 1303),
(253, 1444873564, 26),
(254, 1444873564, 1489),
(252, 1444873564, 1526),
(255, 1444873564, 1527),
(119, 1446088262, 26),
(120, 1446088262, 1309),
(118, 1446088262, 1324),
(281, 1449766796, 26),
(280, 1449766796, 1303),
(282, 1449766796, 1324),
(262, 1458568923, 26),
(261, 1458568923, 1302),
(264, 1458568923, 1303),
(263, 1458568923, 1324),
(191, 1459421450, 26),
(190, 1459421450, 1488),
(192, 1459421450, 1489),
(65, 1464919521, 26),
(64, 1464919521, 1488),
(66, 1464919521, 1489),
(232, 1468013270, 26),
(231, 1468013270, 1303),
(186, 1469394914, 26),
(187, 1469394914, 1489),
(185, 1469394914, 1526),
(174, 1472106563, 26),
(173, 1472106563, 1324),
(76, 1474245040, 26),
(77, 1474245040, 1304),
(75, 1474245040, 1324),
(74, 1480311435, 26),
(73, 1480311435, 1303),
(295, 1483638752, 26),
(296, 1483638752, 1545),
(294, 1483638752, 1548),
(182, 1490915500, 26),
(183, 1490915500, 1324),
(184, 1490915500, 1489),
(181, 1490915500, 1543),
(39, 1494350511, 26),
(41, 1494350511, 1304),
(40, 1494350511, 1324),
(42, 1494350511, 1500),
(38, 1494350511, 1544),
(105, 1495411614, 26),
(104, 1495411614, 1488),
(289, 1495601614, 26),
(290, 1495601614, 1489),
(291, 1495601614, 1526),
(288, 1495601614, 1527),
(239, 1498149200, 26),
(240, 1498149200, 1489),
(238, 1498149200, 1527),
(132, 1498806952, 26),
(133, 1498806952, 1483),
(134, 1498806952, 1484),
(131, 1498806952, 1485),
(313, 1498948272, 26),
(314, 1498948272, 1303),
(312, 1498948272, 1496),
(95, 1500035260, 26),
(96, 1500035260, 1324),
(94, 1500035260, 1488),
(97, 1500035260, 1543),
(84, 1500667648, 26),
(83, 1500667648, 1324),
(138, 1500789777, 26),
(137, 1500789777, 1318),
(139, 1500789777, 1321),
(60, 1501029683, 26),
(61, 1501029683, 1489),
(59, 1501029683, 1526),
(55, 1501568556, 26),
(54, 1501568556, 1488),
(198, 1501720184, 26),
(197, 1501720184, 1512),
(337, 1502126614, 26),
(338, 1502126614, 1489),
(336, 1502126614, 1526),
(47, 1503226625, 26),
(46, 1503226625, 1489),
(48, 1503226625, 1533),
(154, 1503236243, 26),
(155, 1503236243, 1303),
(153, 1503236243, 1309),
(220, 1503837381, 26),
(219, 1503837381, 1310),
(221, 1503837381, 1314),
(222, 1503837381, 1439),
(92, 1503921457, 26),
(93, 1503921457, 1301),
(91, 1503921457, 1482),
(316, 1503998686, 26),
(317, 1503998686, 1303),
(318, 1503998686, 1324),
(315, 1503998686, 1495),
(319, 1503998686, 1544),
(245, 1504384419, 26),
(244, 1504384419, 1324);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add genre', 7, 'add_genre'),
(26, 'Can change genre', 7, 'change_genre'),
(27, 'Can delete genre', 7, 'delete_genre'),
(28, 'Can view genre', 7, 'view_genre'),
(29, 'Can add podcast', 8, 'add_podcast'),
(30, 'Can change podcast', 8, 'change_podcast'),
(31, 'Can delete podcast', 8, 'delete_podcast'),
(32, 'Can view podcast', 8, 'view_podcast');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'api', 'genre'),
(8, 'api', 'podcast'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-28 15:22:57.319028'),
(2, 'auth', '0001_initial', '2020-03-28 15:24:13.636763'),
(3, 'admin', '0001_initial', '2020-03-28 15:27:26.861815'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-28 15:28:58.377357'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-28 15:29:00.748828'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-03-28 15:29:48.211847'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-03-28 15:30:24.321498'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-03-28 15:30:29.270094'),
(9, 'auth', '0004_alter_user_username_opts', '2020-03-28 15:30:29.999839'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-03-28 15:31:16.846943'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-03-28 15:31:18.545341'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-28 15:31:20.187566'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-03-28 15:31:55.632885'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-28 15:32:43.272716'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-03-28 15:32:46.795824'),
(16, 'auth', '0011_update_proxy_permissions', '2020-03-28 15:32:47.409483'),
(17, 'sessions', '0001_initial', '2020-03-28 15:33:03.245487'),
(18, 'api', '0001_initial', '2020-03-28 15:34:38.082218'),
(19, 'api', '0002_auto_20200328_1556', '2020-03-28 15:57:07.691051'),
(20, 'api', '0003_auto_20200328_1620', '2020-03-28 16:20:29.173092'),
(21, 'api', '0004_auto_20200328_1743', '2020-03-28 17:45:15.023795');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `api_genre`
--
ALTER TABLE `api_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indices de la tabla `api_podcast`
--
ALTER TABLE `api_podcast`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `api_podcast_genres`
--
ALTER TABLE `api_podcast_genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_podcast_genre_podcast_id_genre_id_32a955c2_uniq` (`podcast_id`,`genre_id`),
  ADD KEY `api_podcast_genres_genre_id_410e5559_fk_api_genre_genre_id` (`genre_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `api_podcast_genres`
--
ALTER TABLE `api_podcast_genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `api_podcast_genres`
--
ALTER TABLE `api_podcast_genres`
  ADD CONSTRAINT `api_podcast_genres_genre_id_410e5559_fk_api_genre_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `api_genre` (`genre_id`),
  ADD CONSTRAINT `api_podcast_genres_podcast_id_c01a7a91_fk_api_podcast_id` FOREIGN KEY (`podcast_id`) REFERENCES `api_podcast` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
