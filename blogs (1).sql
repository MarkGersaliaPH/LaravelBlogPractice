-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2018 at 03:59 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `category` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `posted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blog_id`, `picture`, `title`, `content`, `category`, `created_at`, `updated_at`, `posted_by`) VALUES
(1, '', 'Blog 1', 'Lorem ipsum dolor sit amet, laudem erroribus usu eu, choro nominavi ad mel, te agam oblique qui. Omnis nostrum pericula mel ex, his libris alterum eu, ei vocent vituperatoribus sea. At intellegat complectitur pri, quo an omnis mazim, duo no novum graecis. Eos ex utamur bonorum minimum, no magna mediocritatem eos. Te rebum laboramus vel, per an oratio apeirian, cum te vidit ponderum sententiae. Quando facilisi deserunt ei eam.\r\n', 1, '2018-07-23 00:00:00', '2018-07-24 00:00:00', 0),
(93, 'heroacademia_classa.png', 'My Hero Academia Season 3 Episode 15 (53) – The Test First Impression', '<p><strong>Izuku</strong> and his classmates make some final adjustments to their ultimate moves and then head off to the provisional licensing exam</p>\r\n\r\n<p>My Hero Academia Season 3 Episode 53 &ndash; The Test didn&rsquo;t show too much in this episode, the first few minutes was a recap of last week&rsquo;s episode with some added context. It wasn&rsquo;t after a few minutes into the episode that we finally got some good stuff. The students of UA have finally met with some from the student from the other schools. The first major student from Shiketsu West High School, Inasa Yoarashi. Off the bat he&rsquo;s over the top we all know not to judge a book by its cover. Shortly after, Joke and her school rolled up.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This time we got Ketsubutsu Academy with Shindo. Right off the bat as well you can tell there&rsquo;s something weird the guy and Bakugo picked that up real quick. I can&rsquo;t wait to see how those two will fight in the event. Anyways after a very enthusiastically given speech, the provisional licencing exam started and of course everyone target was UA. The episode is about to be all types of lit.</p>\r\n\r\n<p>Overlal with was a well paced epsidoe. I was a good set up for what&rsquo;s to come.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 24, NULL, NULL, 2),
(96, 'my-hero-academia-deku.jpg', 'MY HERO ACADEMIA: SEASON 1 REVIEW', '<p>&nbsp;Having not read the My Hero Academia manga, I had the luxury of going into the anime unaware of the twists and turns that awaited the aspiring young hero Izuku &quot;Deku&quot; Midoriya. After taking a ride on the action-packed emotional rollercoaster that is Season 1 of studio Bones&#39; expertly animated adaptation, My Hero Academia has solidified its place as my favorite show of the year thus far, and has me eagerly awaiting Season 2.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The story centers around the aforementioned Deku, a teenage boy who dreams of becoming a superhero but finds himself among the 20 percent of people without a special power (aka Quirk). After a chance encounter with his heroic idol All Might, Deku finds a way to rise above his circumstances and attends the prestigious U.A. High School in the hopes of making his dreams a reality.</p>\r\n\r\n<p>As the clear underdog amongst his peers, I found Deku to be immediately both likable and relatable, especially in contrast to his childhood rival Katsuki Bakugou. Despite being an egocentric bully hell-bent on tearing others down in favor of building himself up, Bakugou grew on me as the series progressed. It&#39;s clear he has some pride and anger management issues, but his drive to be a hero and protect society from the villains that threaten the peace is an admirable quality that makes him far more than a one-dimensional hothead.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Likewise, the rest of My Hero Academia&#39;s cast of heroes in training are multilayered and each interesting in their own right. From the studious and tightly-wound class president Tenya Iida, who&#39;s equipped with engine-powered legs, to the sweet and innocent Ochako Uraraka, who can make things levitate by simply touching them, U.A. High School boasts a colorful cast of diverse and wonderfully realized characters.</p>\r\n\r\n<p>The same can be said for the world&#39;s &quot;No. 1 Hero&quot; All Might, who is far more than just a big muscle-bound dude sporting a pearly white smile. Yes, even the most powerful of heroes have their weaknesses and need the help of others from time to time, and All Might&rsquo;s crippling secret does an excellent job of demonstrating&nbsp;that fact. Plus, the bond he forms with Deku that spirals into a mentorship role for a hero whose best days are clearly behind him creates a heartwarming dynamic that had me smiling every time the two of them were together on screen.</p>\r\n\r\n<p>The strength of such a well-developed cast makes for a story that pulls you in and doesn&rsquo;t let go. The hints at a budding romance between Uraraka and Deku is adorable, and I can&rsquo;t wait to see how it plays out. Additionally, Deku&rsquo;s struggle to prove himself and gain the respect of Bakugou, despite his peer&rsquo;s unrelenting hatred towards Deku, makes for some really great moments of tension-filled drama, fueled by a rivalry that extends back to when they were children.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Most impactful of all, however, is the bond between Deku and his mother. Watching their relationship evolve, as Deku&rsquo;s mother realizes she should have supported her Quirkless son more in his quest to become a hero, had my eyes welling up with tears. Not only does this relationship provide a window into Deku&rsquo;s family life and his insecurities, it drives home the importance of family and supporting one another, no matter how farfetched dreams may appear to be.</p>\r\n\r\n<p>My Hero Academia&#39;s excellent character design only elevates the memorable cast even further. From Deku&#39;s kind and innocent smile to the intimidating stare that emanates from Bakugou&#39;s angry eyes, each character has their own distinct look that reflects their personality.&nbsp;I also have to applaud the casting choices and overall voice work, as Yowamushi Pedal&#39;s Daiki Yamashita is a perfect fit for Deku in the Japanese version, and Justin Briner does an excellent job as the character in the English dub.</p>\r\n\r\n<p>Considering Bones&#39; pedigree, it should come as no surprise that the studio behind Wolf&#39;s Rain and Fullmetal Alchemist has once again knocked it out of the park. My Hero Academia is loaded with incredible action scenes that are an absolute joy to watch, thanks to the fluid animation and dynamic angles at which they&#39;re presented. From little touches like the glistening eyes of an emotionally wrecked young Deku to the explosive set pieces brought on by Bakugou, each and every episode was a visual treat. There&#39;s also plenty of expertly delivered comedic bits strewn throughout the season, many of which can be attributed to the laughably inappropriate antics of Deku&#39;s tiny purple-haired classmate Minoru Mineta.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Unlike its well-realized cast of heroes, My Hero Academia&#39;s villains left me wanting more. The&nbsp;League of Villains&#39; leader Tomura Shigaraki has the potential to be a fascinating character with a deep and twisted backstory, but unfortunately very little of that was fleshed out in this season. Based on a few teases that pop up during the finale, it&#39;s clear we&#39;re going to learn a whole lot more about the antagonists of this series in Season 2, but a bit more backstory earlier on would have made Season 1&#39;s concluding showdown all the more impactful.</p>\r\n\r\n<p>That said, given the limited time in which this first season had to flesh out its cast, I&#39;m glad the bulk of the thirteen episodes focused on making Deku a relatable character and fleshing out his backstory. The series is centered on Deku&#39;s journey to become a hero, so having a strong foundational understanding of his character this early on will only serve to strengthen the overall story as My Hero Academia enters its second season.</p>', 24, NULL, NULL, 2),
(97, '640 scottie thompson 1221.jpg', 'Scottie Thompson for Gilas Pilipinas 2023?', '<p>For all those jarring divisive squabbles and empty talks of&nbsp;unconventional offense, heated collegiate rivalries, mind games, and mayhem defense that have hounded both the professional and amateur basketball circles in the last two months, at least, self-confessed expert hoopheads in the country can unanimously agree&nbsp;their love for the National Team hasn&#39;t wavered one bit.</p>\r\n\r\n<p>And with the Philippines finally copping the chance to host the&nbsp;<a href=\"https://www.fhm.com.ph/tag/fiba-world-cup\" target=\"_blank\">2023 FIBA Basketball World Cup</a>, united Pinoy basketball junkies are excited about our prospects of parading what could possibly be&nbsp;<a href=\"https://www.fhm.com.ph/pop-culture/sports/the-road-to-gilas-2023-begins-here-a1629-20171212-lfrm2\" target=\"_blank\">Gilas</a>&#39; most athletic, lethal, and versatile team ever.</p>\r\n\r\n<p>Photo by www.fiba.basketball</p>\r\n\r\n<p>Already, four-time PBA MVP and emerging Asian Basketball frontcourt power&nbsp;<strong>June Mar Fajardo</strong>and Asia&#39;s long-running best guard&nbsp;<strong>Jayson Castro</strong>&mdash;who will be 34 and and 36 years old in 2023&mdash;have expressed willingness in backstopping Gilas&#39; predominantly young core.</p>\r\n\r\n<p>Down low, he can already see himself possibly getting the call to mentor young towering centers Fil-Nigerian&nbsp;<strong>AJ Edu</strong>&nbsp;and&nbsp;<strong>Kai Sotto</strong>, who will be 23 and 21 respectively in 2023. &quot;<em>Oo</em>,&nbsp;<em>syempre</em>.&nbsp;<em>Gusto kong maglaro doon</em>,&quot; he recently told&nbsp;<em><strong><a href=\"http://www.spin.ph/basketball/fiba/news/june-mar-fajardo-gilas-2023-fiba-world-cup-kai-sotto-aj-edu\" target=\"_blank\">Spin.ph</a></strong></em>. &quot;<em>Okay yun</em>&nbsp;(the six-year preparation).<em>&nbsp;Sobra na nga siguro yun</em>.&nbsp;<em>Kailangan lang</em>&nbsp;practice&nbsp;<em>nang maaga</em>.&quot;</p>\r\n\r\n<p>Former Team Pilipinas point guard,&nbsp;<strong><a href=\"https://www.fhm.com.ph/tag/la-tenorio\" target=\"_blank\">LA Tenorio</a></strong>&nbsp;in an interview with&nbsp;<strong><em>FHM.com.ph</em></strong>, also can&#39;t contain his excitement over our opportunity to showcase Pinoy hoops power to the rest of the world&#39;s mightiest basketball heavyweights.&nbsp;</p>\r\n\r\n<p>LA believes that quickness and faster play is our strength because we cannot match up with our opponents&#39; height and power. &ldquo;Quickness and shooting,&quot; he says. &quot;Those will be&nbsp;the key for us.&rdquo;</p>\r\n\r\n<p>As for possible vital additions to the national training pool, he readily volunteers a familiar name for the Gilas coaching brain thrust to consider: his&nbsp;<strong><a href=\"https://www.fhm.com.ph/tag/ginebra-san-miguel\" target=\"_blank\">Ginebra</a></strong>&nbsp;backcourt partner&nbsp;<strong><a href=\"https://www.fhm.com.ph/tag/scottie-thompson\" target=\"_blank\">Scottie Thompson</a></strong>, who will turn 30 in 2023.</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.summitmedia-digital.com/fhm/images/2017/12/21/scottie%20thompson%20spin.jpg\" style=\"height:401px; width:602px\" />Photo by Jerome Ascano, Spin.ph</p>\r\n\r\n<p>&quot;<em>Pwede si&nbsp;</em>Scottie&nbsp;<em>sa&nbsp;</em>Gilas,&quot; LA says. &quot;He can be a point guard. He can be a shooting guard/scorer. That&rsquo;s the good thing about him&mdash;he&rsquo;s multi-dimensional. He&rsquo;s not fast, but he&rsquo;s quick. Fast is one-direction.&nbsp;<em>Pang</em>&nbsp;100-meter dash. Quick is&nbsp;<em>mabilis ang</em>&nbsp;first step. Scottie knows when to stop, when to go. His timing is very good. Growing up, my forte was not to be fast but to be quick. He has to improve his shooting, but his basketball instinct is really good. He can help Gilas eventually.&rdquo;</p>\r\n\r\n<p>CONTINUE READING BELOW &darr;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Another plus for Scottie, LA believes, is that his teammate&#39;s a special baller. &quot;He&rsquo;s a team player. He works hard. He rebounds hard. He&rsquo;s very smart. He just has to improve his point guard skills. If he can do that, he&rsquo;ll be a superstar. With his ability to jump, to defend, his instinct for where the ball will fall,&nbsp;<em>wala akong</em><em>&nbsp;nakikitang ibang&nbsp;</em>PBA player&nbsp;<em>ngayon&nbsp;</em>like Scottie.&rdquo;</p>\r\n\r\n<p>The former University of Perpetual Help King Atlas recognizes how big a challenge playing for Gilas will be. &quot;There&#39;s a lot at stake when you play with the National Team and for your country,&quot; Scottie says when told of LA&#39;s ringing endorsement. &quot;That&rsquo;s aside from preparing for the game, knowing the plays, learning the system, learning the chemistry.&nbsp;<em>Kada&nbsp;</em>coach<em>, iba ang&nbsp;</em>system<em>.</em>&quot;</p>\r\n\r\n<p>Scottie, a triple-double threat during his years in the NCAA, also adds: &quot;You don&rsquo;t know what to expect. The other National Teams play together often but we have PBA. We don&rsquo;t have much time to practice together.&nbsp;<em>Wala tayong magagawa</em>. We just have to find a way to do it.&rdquo;</p>\r\n\r\n<p>Meanwhile, LA says he still misses playing for the National Team, but he admits he&#39;s satisfied he had fulfilled his duty as a Filipino by representing the country. &quot;<em>Natutuwa na din ako kasi yung&nbsp;</em>new generation of players gets to experience what we did. I&rsquo;m still very close with Jayson and Jimmy (Alapag). The bond that we had before is still there. When I retire, I&rsquo;ll be able to reflect on my time with Gilas. If you interview me after I retire and you ask me what I miss most about my career, I&rsquo;ll say, playing for Gilas.&quot;</p>', 23, NULL, NULL, 2),
(99, 'jordan-clarkson.jpg', 'Jordan Clarkson to Gilas for Asian Games?', '<p>FIL-American NBA player Jordan Clarkson&#39;s name will be among those to be submitted by Samahang Basketbol ng Pilipinas (SBP) as part of the Rain or Shine roster that will see action in the Asian Games in Jakarta.</p>\r\n\r\n<p>SBP executive director Sonny Barrios confirmed the move to&nbsp;<em>SPIN.ph</em>&nbsp;on Tuesday night, saying the 6-foot-5 Cleveland Cavaliers&nbsp;guard is one of several players&nbsp;being eyed to beef up&nbsp;the core of the Elastopainters&nbsp;for the quadrennial meet set August 18.</p>\r\n\r\n<p>At the same time, Barrios said Yeng Guiao has already been given&nbsp;clearance by NLEX management to call the shots for his former PBA team.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Shotgun approach na tayo,&quot; said Barrios of Clarkson&#39;s inclusion in the RoS-dominated lineup to be submitted by the SBP to the Indonesia Asian Games Organizing Committee (INASGOC).</p>\r\n\r\n<p>&quot;There&#39;s no harm in trying.&quot;</p>\r\n\r\n<p>Barrios added the 26-year-old Clarkson suiting up for the Philippine team in the quadrennial games depends on two factors.</p>\r\n\r\n<p>&quot;Availability and eligibility,&quot; he pointed out.</p>\r\n\r\n<p>&quot;Will he be available? Will his NBA team give him clearance to play?&quot; said the former PBA commissioner.</p>\r\n\r\n<p>&quot;And will he be allowed by INASGOC and the Olympic Council of Asia (OCA)? Remember the eligibility rules ng Asiad is different from Fiba&quot;</p>\r\n\r\n<p>&quot;Kaya these are the things we have to consider.&quot;</p>\r\n\r\n<p>The SBP official also said he&#39;s keeping his fingers crossed the organizing committee will also allow additional names to be submitted by the POC for the basketball competitions.</p>\r\n\r\n<p>The federation already submitted an initial list consisting of the core of TnT Katropa.</p>\r\n\r\n<p>Unfortunately, the brawl that involved Gilas Pilipinas and Australia during their World Cup qualifying game forced the ballclub to reconsider its position, giving way for Rain or Shine to assume the responsibility of wearing the country&#39;s tricolors in the Asiad.</p>\r\n\r\n<p>Guiao will be at the helm of the team which marked his return in the international stage following his stint with the Powerade-PH team that advanced to the quarterfinals of the 2009 Fiba-Asia Championships in Tianjin, China.</p>', 23, NULL, NULL, 1),
(100, 'yengguiao-ja-1532494499.jpg', 'Guiao embraces \'thankless job\' as ROS gears up for Asiad', '<p>YENG Guiao welcomed the challenge&nbsp;of coaching his former team Rain or Shine again on a higher level, but is aware of the tough challenge that awaits the&nbsp;squad&nbsp;in the 2018 Asian Games in Indonesia.</p>\r\n\r\n<p>Two years since parting ways with the franchise that became synonymous to his unique coaching ways and preference for tough bruisers, Guiao is reunited with the Elasto Painters after&nbsp;accepting the job to handle the team&nbsp;that&nbsp;will represent the&nbsp;nation in the August 18 to September 2 quadrennial showpiece.</p>\r\n\r\n<p>As&nbsp;successful&nbsp;as the partnership&nbsp;was&nbsp;in the PBA&nbsp;marked by&nbsp;two championships and six finals appearances, Guiao is&nbsp;managing expectations about Rain or Shine&#39;s campaign given the small window he has&nbsp;to&nbsp;whip the team into top form for the Asiad.</p>\r\n\r\n<p>&quot;Our union produced championships and good memories, and it was a pleasant experience,&quot; said Guiao on Wednesday.</p>\r\n\r\n<p>&quot;(Pero) alam ko naman this should be one of the thankless jobs in coaching. I&#39;ve been there before and I saw what happened the last several years to a lot of the national coaches and (even) coach Chot (Reyes),&quot; he said.</p>\r\n\r\n<p>&quot;It&#39;s really a sacrifice and service to the country, kasi thankless naman kasi yung trabaho na ito. There&#39;s always pressure on your shoulders.&quot;</p>\r\n\r\n<p>Other than doing service again for the country after coaching the Powerade-PH team in the 2009 FIBA Asia Championship in Tianjin, China, Guiao is also looking forward&nbsp;to working again with&nbsp;a franchise that had been so good to him.</p>\r\n\r\n<p>&ldquo;Part of the excitement, part of the thrill is coaching those guys again and having a reunion with the Rain or Shine family, Para kaming pamilya doon, ang tagal naming magkakasama,&rdquo; he said.</p>\r\n\r\n<p>With him coming on board the team on short notice, Guiao naturally didn&rsquo;t have the free rein to form the team, according to what he envisions.</p>\r\n\r\n<p>He said there was already a pool of players shown to him by the time he accepted the job.</p>\r\n\r\n<p>&ldquo;I just looked at the lineup and wala naman akong violent objections,&rdquo; said Guiao. &ldquo;I was also asked to modify it if I wanted to, kung merong gustong ihabol or kung merong akong gustong palitan. I was given that option.</p>\r\n\r\n<p>&ldquo;As much as I would want June Mar to be there, I would want Lassiter to be there, I would want Greg Slaughter to be there, yung iba suspended nga, those are the limitations I&rsquo;m talking about,&rdquo; he pointed out. &ldquo;It&rsquo;s really the PBA&rsquo;s schedule and the availability of the players themselves. Yun ang malaking handicap.&rdquo;</p>\r\n\r\n<p>And then there&rsquo;s the competition itself.</p>\r\n\r\n<p>&ldquo;Pinag-hahandaan yan ng China, ng Iran, Korea, ng Japan. Baka tayo yung least prepared in this Asian Games,&rdquo; said Guiao. &ldquo;Can you imagine, two weeks before the opening wala pa tayong lineup?&rdquo;</p>\r\n\r\n<p>&nbsp;</p>', 12, NULL, NULL, 2),
(101, 'paul-lee-yeng-guiao-ja-1532507329.jpg', 'Guiao wants Paul Lee, Jeff Chan in his Asiad team', '<p>YENG Guiao didn&rsquo;t deny he&rsquo;s trying to get former players Paul Lee and Jeff Chan for the Rain or Shine-backed Philippine team seeing action in the &nbsp;18th Asian Games in Indonesia.</p>\r\n\r\n<p>Given the national squad&nbsp;only has two weeks&nbsp;to prepare&nbsp;before the quadrennial showpiece&nbsp;kicks off on August 18, it&rsquo;s understandable Guiao&nbsp;wants to bring together players who previously suited up for him with the Elasto Painters.</p>\r\n\r\n<p>Lee and Chan are among&nbsp;the priorities&nbsp;he hopes&nbsp;to reunite with one-time Rain or Shine teammates Gabe Norwood, Raymund Almazan, Beau Belga, Chris Tiu, Maverick Ahanmisi, and Jewel Ponferada.</p>\r\n\r\n<p>&ldquo;Si Paul Lee at kung puwede si Jeff Chan,&rdquo; said Guiao of the two deadly players who formed his lethal backcourt during the time the Elasto Painters won the 2012 PBA Governors Cup and 2016 Commissioner&rsquo;s Cup crowns.</p>\r\n\r\n<p>Chan was part of Chot Reyes&#39; Gilas Pilipinas team that placed second to Iran in the 2013 Fiba Asia in Manila. Lee later joined the team in the 2014 Asian Games and Fiba World Cup but has since dropped out of the pool owing to injuries.</p>\r\n\r\n<p>It would need a lot of persuasion for his wish to come true, however.</p>\r\n\r\n<p>The release of both Lee and Chan &ndash; as well as other players Guiao&nbsp;wants to mix with the core of the Rain or Shine team &ndash; will depend on the approval of the PBA Board, which already agreed to give Rain or Shine the right to represent the country&nbsp;in the Asiad so as not to disrupt the campaign of the rest of the member teams in the season-ending Governors Cup.</p>\r\n\r\n<p>Getting the services of players from other teams meant altering anew the playing schedule of the league for the third conference.</p>\r\n\r\n<p>The board is set to convene on Thursday for its regular monthly meeting to tackle both the Asiad matter and Gilas Pilipinas&rsquo; coming campaign in the second round of the FIBA World Cup Asian qualifier.</p>\r\n\r\n<p>Chan&rsquo;s availability is already in question since Barangay Ginebra is in the finals of the Commissioner&rsquo;s Cup opposite San Miguel.</p>\r\n\r\n<p>&ldquo;They are in the middle of the finals, so while we prepare, nagpa-finals sila,&rdquo; said Guiao. &ldquo;So I don&rsquo;t know if that can be really realistic.&rdquo;</p>\r\n\r\n<p>If the finals goes to a Game 7, the series will end on August 10.</p>\r\n\r\n<p>Lee has also been requested by Guiao, although his mother ballclub Magnolia Pambansang Manok has yet to make an official reply.</p>\r\n\r\n<p>&ldquo;Pinakikiusap ko siya sabi ko kahit dalawang linggo lang kung puwede siyang ipahiram,&rdquo; said Guiao. &ldquo;Pero sa ngayon, wala pa.&rdquo;</p>\r\n\r\n<p>A source said veteran big man JR Quinahan is a possible addition as he currently plays for Guiao at NLEX.</p>\r\n\r\n<p>Quinahan was also part of Rain or Shine&rsquo;s core when Guiao steered the franchise to two championships and six finals appearances.</p>\r\n\r\n<p>&ldquo;That&rsquo;s being considered, but nothing final yet,&rdquo; said the same source.&nbsp;</p>', 23, NULL, NULL, 2),
(102, '1485331605_gary-v.jpg', 'Gary Valenciano, balik trabaho na', '<p>Kuwento ni Gary sa ABS-CBN News, ibang saya ang kanyang nararamdaman sa muli niyang pagbabalik matapos dumaan sa mesalan na open heart surgery at labanan ang kanser sa kanyang kidney.</p>\r\n\r\n<p>&ldquo;Parang it made me realize na may mga ibang bagay din na I took for granted. The blessing of being able to work, kahit na minsan nakakapagod ang trabaho, still it&rsquo;s a blessing, no matter what,&rdquo; ani Gary&nbsp;</p>\r\n\r\n<p>Nakabalik man sa trabaho, aminado si Gary na limitado pa rin ang kanyang pwedeng gawin sa ngayon.</p>\r\n\r\n<p>&ldquo;Actually, bawal pa &#39;yung mga tipong sayaw. Sabi ng doctor nasa akin na &#39;yun e kung kaya ko gawin. Pero nasubukan ko minsan may nararamdaman ako na discomfort dito sa operation in my kidney,&rdquo; aniya.</p>\r\n\r\n<p>&ldquo;But sabi ng doctor, normal naman daw &#39;yun. Gumagaling pa daw ako at pag-umabot sa punto na wala na akong nararamdaman na discomfort, hahataw na ulit ako ng todo,&rdquo; paliwanag pa niya.</p>\r\n\r\n<p>Tulad sa pagsasayaw, nagkaroon din ng adjustment si Gary sa pagkanta matapos ang dalawang buwan na pamamahinga.</p>\r\n\r\n<p>&ldquo;Sa singing, medyo nanibago din ako, kasi almost two months akong hindi kumakanta e, as in zero. And nung nabigyan ako ng pagkakataon na kumanta ulit, nanibago talaga &#39;yung paggamit ko ng boses ko,&rdquo; pahayag pa ni Gary.</p>\r\n\r\n<p>Sa darating na Linggo, balik &ldquo;ASAP&rdquo; na si Gary at inaasahan din ang kanyang pagbabalik sa &ldquo;Your Face Sounds Familiar Kids.&rdquo;</p>', 25, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category`) VALUES
(2, 'Bussiness'),
(3, 'Science'),
(4, 'Technology'),
(12, 'Entertainment'),
(20, 'Computers & Electronic'),
(21, 'Finance & Bussiness'),
(22, 'Personal Care & Style'),
(23, 'Sports'),
(24, 'Hobies & Likes'),
(25, 'Showbiz');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile_picture` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profile_picture`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mark Anthony Gersaliaprofile-picture-1.jpg', 'Mark Anthony Gersalia', 'ma27gersalia@gmail.com', '$2y$10$6ZbcJ9NSnmF7Q1mz9tMALOoqGlsKKLVEUNORv9GZfu.fkUO5dVm06', 'xXnWhpkxX9DYCLIjvfjoTEI2CQee53HXryiEMYheOwWRFsHKnYOQBNUQoNE6', '2018-07-22 23:05:27', '2018-07-22 23:05:27'),
(2, 'Marcus Blakelyprofile-picture-2.jpg', 'Mark Anthony Gersalia', 'blog@admin', '$2y$10$jEGoG2vSf2vaRlWmW0jzkeDIQZ/Qsd8Lop5ldJ48M20KxrFE8zGKy', 'EAHpQsigs0tCbQakNXfYduzIYPfzEpj4Gc1m35oRI5TfolZ7qhGK2Pxa81kd', '2018-07-25 17:47:44', '2018-07-25 17:47:44'),
(3, 'Gabriel Daniel Norwoodprofile-picture-3.jpg', 'Gabriel Daniel Norwood', 'norwood@blog.com', '$2y$10$MSA5pO8SU.pu7/jNgteL7OGiBjzzVRJyaKlQVXy0cRT.y1/NHC/SC', 'CcEYqP0SEvLyea5G3sbcKy7LH05oYaCSXF5v4VZWjzB30UcyroFl7LeXggB9', '2018-07-25 18:32:07', '2018-07-25 18:32:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
