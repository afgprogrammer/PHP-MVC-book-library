--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `fullname`, `date`) VALUES
(1, 'Andrew Hunt', '2018-08-14'),
(2, 'David Thomas', '2018-08-14'),
(3, 'V. Anton Spraul', '2018-08-14'),
(4, 'Neal Ford', '2018-08-14'),
(5, 'Rosemary Wallner', '2018-08-14'),
(6, 'Shelly Nielsen', '2018-08-14'),
(7, 'Bruce Jackson', '2018-08-14'),
(8, 'Paul Vickers', '2018-08-14'),
(9, 'Sorin Cerin', '2018-08-14'),
(21, 'Bahaudin Ghulam Mujtaba', '2018-08-14'),
(20, 'Sayed Tayeb Jawad', '2018-08-14'),
(19, 'Erinn Banting', '2018-08-14'),
(18, 'Meredith L. Runion', '2018-08-14'),
(17, 'Moira Weigel', '2018-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  `publication_date` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `isbn` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `publication_date`, `isbn`, `date`) VALUES
(1, 'The Pragmatic Programmer: From Journeyman to Master', '“The cool thing about this book is that it’s great for keeping the programming process fresh. The book helps you to continue to grow and clearly comes from people who have been there.”\r\n—Kent Beck, author of Extreme Programming Explained: Embrace Change\r\n\r\n“I found this book to be a great mix of solid advice and wonderful analogies!”\r\n—Martin Fowler, author of Refactoring and UML Distilled\r\n\r\n“I would buy a copy, read it twice, then tell all my colleagues to run out and grab a copy. This is a book I would never loan because I would worry about it being lost.”\r\n—Kevin Ruland, Management Science, MSG-Logistics\r\n\r\n“The wisdom and practical experience of the authors is obvious. The topics presented are relevant and useful.... By far its greatest strength for me has been the outstanding analogies—tracer bullets, broken windows, and the fabulous helicopter-based explanation of the need for orthogonality, especially in a crisis situation. I have little doubt that this book will eventually become an excellent source of useful information for journeymen programmers and expert mentors alike.” ', 'Eighteenth printing, August 2006', '020161622', '2018-08-14'),
(2, 'Think Like a Programmer: An Introduction to Creative Problem Solving', 'The real challenge of programming isn\'t learning a language\'s syntax—it\'s learning to creatively solve problems so you can build something great. In this one-of-a-kind text, author V. Anton Spraul breaks down the ways that programmers solve problems and teaches you what other introductory books often ignore: how to Think Like a Programmer. Each chapter tackles a single programming concept, like classes, pointers, and recursion, and open-ended exercises throughout challenge you to apply your knowledge.\r\n\r\nYou\'ll also learn how to:\r\n–Split problems into discrete components to make them easier to solve\r\n–Make the most of code reuse with functions, classes, and libraries\r\n–Pick the perfect data structure for a particular job\r\n–Master more advanced programming tools like recursion and dynamic memory\r\n–Organize your thoughts and develop strategies to tackle particular types of problems\r\n\r\nAlthough the book\'s examples are written in C++, the creative problem-solving concepts they illustrate go beyond any particular language; in fact, they often reach outside the realm of computer science. As the most skillful programmers know, writing great code is a creative art—and the first step in creating your masterpiece is learning to Think Like a Programmer.', 'William Pollock 2012', '1593274246', '2018-08-14'),
(3, 'The Productive Programmer', 'Anyone who develops software for a living needs a proven way to produce it better, faster, and cheaper. The Productive Programmer offers critical timesaving and productivity tools that you can adopt right away, no matter what platform you use. Master developer Neal Ford not only offers advice on the mechanics of productivity-how to work smarter, spurn interruptions, get the most out your computer, and avoid repetition-he also details valuable practices that will help you elude common traps, improve your code, and become more valuable to your team. You\'ll learn to:', 'United States Of America 2008', '9780596519780', '2018-08-14'),
(4, 'Computer Programmer', 'Just think of all career choices out there for the taking! This information-packed series covers topics like job responsibilities, qualifications, personal interests, education, salaries, job outlooks, and much more. The books are perfect for units on career awareness, individual exploration, and report writing. These books support career exploration units and School-to-Work programs.', 'Capstone Books, 2000', '0736804889', '2018-08-14'),
(5, 'Playing Fair', 'Brief rhymes present occasions when fairness is needed in dealing with friends, bullies, games, groups, and tests.', 'Abdo & Daughters, 1992', '1562390651', '2018-08-14'),
(6, 'Celebrating Hanukkah', 'Rhyming text introduces aspects of this important Jewish holiday.', 'Abdo & Daughters, 1991', '1562390724', '2018-08-14'),
(7, 'The Programmer: A Novel', 'Bruce Jackson is SUNY Distinguished Professor of English and James Agee Professor of American Culture at the University at Buffalo. He is the author or editor of thirty books, including \"In This Timeless Time\" Living and Dying on Death Row in America (with Diane Christian); Pictures from a Drawer: Prison and the Art of Portraiture; Cummins Wide: Photographs from the Arkansas Prison; The Story Is True: The Art and Meaning of Telling Stories; Law and Disorder: Criminal Justice in America; Death Row (with Diane Christian); In the Life: Versions of the Criminal Experience; and Wake Up Dead Man: Afro-American Worksongs from Texas Prisons. His photographs and documentary films have been widely exhibited. Jackson has been named a Chevalier in the French National Order of Merit and also in the French Order of Arts and Letters.', 'Doubleday, 1979', '0385148682', '2018-08-14'),
(8, 'How to Think Like a Programmer: Problem Solving for the Bewildered', 'How to Think Like a Programmer is a bright, accessible, fun read describing the mindset and mental methods of programmers. Anticipating the problems that students have through the character of Brian the Bewildered Wildebeest, the slower pace required for this approach is made interesting and engaging by hand-drawn sketches, frequent (paper-based) activities and the everyday tasks (e.g. coffee making) used as a basis of worked examples. How to Think Like a Programmer provides a fun and accessible way to learn the mental models needed to approach computational programmable problems.', 'Cengage Learning EMEA, 2008', '1844809005', '2018-08-14'),
(9, 'Love', 'The soul mate is what we aspire to and like to understand about us, is what we deem to be perfection, purity and endless regarding our own being.Paradoxically, all these wonderful dimensions that we want for our being are completely missing, being a hope, a dream about the perfection of the being. Then this hope and dream of perfection is materialized in the vision we have on our soul mate. Moreover, if we are under the impression that we know what we would want as perfection, it always remains a mere false impression and nothing more, because then the event of a Great Love occurs, we realize that what we thought to be perfection is false, and the novelty of the new imagine on the perfection embodies by the lover makes us feel that intense feeling of suffocating love, precisely because we find our new standard for perfection, which becomes this way superior to the old one. All these can happen when the two souls are not soul mates?What are the so often invoked soul mates?Does such a thing really exist or is just a fantasy used to attract your partner in one way or another?My answer is YES, SOULS MATES EXIST!', 'Sorin Cerin, 2012', '1479108014', '2018-08-14'),
(10, 'The Origin of God', '\"The Origin of God\" is an incredible story, in which the author is the main character. He is aware that he is sleeping and that everything that is happening to him belongs only to a dream of this world, which in another dimension is a reality. In his dream, he meets the Godlike Light who in fact is our God. The Light carries him into various worlds with all sorts of forms of beings, describing to him how the world was made, what the origins of the Parallel Universes before Big Bang were, of the life in them. The author asks why does the Basic Truth exist, the Life Illusion, which we live every day, how we should pray and to whom, and finally where we were before other civilizations in Terra. Once these mysteries are revealed, the Godlike Light shows to the author \'The Cerin Theory of Universal Genesis\' which brings a new view in religion, philosophy, politics and in everything we have known so far about the history and biology of the human being. This is the first work in the world which treats the subject through the light of a new philosophy. This narrative takes place as the background to a captivating love story which develops on several worlds that belong to other dimensions. Here, death is just a passing to another dimension. Later the author becomes a spectator in the name of whom an impressive journey takes place among other parallel Universes.', 'Virtualbookworm Publishing, 2006', '1589398920', '2018-08-14'),
(11, 'The Divine Light', '\"Everything have started by some few dreams, which not just that I would neverforget my entire life but more than that, I don\'t think it was just dreams in the rightsense of the notion\"dream\". I was conscious during the rest that I was sleeping. What itcould be said that I was dreaming is nothing else than a real experience in a space fromwhere I can come back anytime in the world where I am sleeping.I was at the beginning somewhere on the fringe of an unknown town, in the night.While I have looked at the multicolored lights from any distance, I started tobecome easier, so easy that I felt in a moment I could fly.\" Sorin Cerin', 'Sorin Cerin, 2010', '9781456335434', '2018-08-14'),
(18, 'Labor of Love: The Invention of Dating', '“Does anyone date anymore?” Today, the authorities tell us that courtship is in crisis. But when Moira Weigel dives into the history of sex and romance in modern America, she discovers that authorities have always said this. Ever since young men and women started to go out together, older generations have scolded them: That’s not the way to find true love. The first women who made dates with strangers were often arrested for prostitution; long before “hookup culture,” there were “petting parties”; before parents worried about cell phone apps, they fretted about joyrides and “parking.” Dating is always dying. But this does not mean that love is dead. It simply changes with the economy. Dating is, and always has been, tied to work.\r\n\r\nLines like “I’ll pick you up at six” made sense at a time when people had jobs that started and ended at fixed hours. But in an age of contract work and flextime, many of us have become sexual freelancers, more likely to text a partner “u still up?” Weaving together over one hundred years of history with scenes from the contemporary landscape, Labor of Love offers a fresh feminist perspective on how we came to date the ways we do. This isn\'t a guide to “getting the guy.” There are no ridiculous “rules” to follow. Instead, Weigel helps us understand how looking for love shapes who we are—and hopefully leads us closer to the happy ending that dating promises.', 'Farrar, Straus and Giroux, 2016', '0374713138', '2018-08-14'),
(19, 'The History of Afghanistan', 'After the September 11th attacks on America, many nations became entrenched in the War on Terror. With this escalating conflict came the names of many countries that the American public knew little about. Prior to 9/11, Americans knew Afghanistan simply as a country in the Middle East area. In the aftermath of 9/11, Americans now associate Afghanistan with words like Al Qaeda and the Taliban. Despite the recent press coverage on this land-locked nation, few understand the history of Afghanistan, including the rich cultural aspects, political climate, and society of this country. As the future of Afghanistan is being lived and written right now, a clear understanding of the country\'s history is imperative in our new global circumstances.\r\n\r\nIdeal for students and general readers, the History of Afghanistan is part of Greenwood\'s Histories of Modern Nations series. With nearly forty nation\'s histories in print, these books provide readers with a concise, up-to-date history of countries throughout the world. Reference features include a biographical section highlighting famous figures in Afghanistan history, a timeline of important historical events, a glossary of terms, and a bibliographical essay with suggestions for further reading.', 'Greenwood Publishing Group, 2007', '0313337985', '2018-08-14'),
(20, 'The History of Afghanistan, 2nd Edition', 'For centuries, Afghanistan has endured control by a gamut of political regimes as a result of its strategic location along the trade route between Asia and the Middle East. The area has been at the center of constant conflict and only in recent years has recovered from the vestiges of warfare. The second edition of this popular reference offers a fresh glimpse at the country, showing modern Afghanistan to be a melting pot of cultures, tribes, and political influences all under the guiding belief of Islam.\r\n\r\nIn addition to thorough coverage of the country\'s political, economic, and cultural history, the book provides students with an account of recent events in Afghanistan since 2007, such as the death of Osama bin Laden in Pakistan and the removal of NATO soldiers. Other changes include a revised timeline, an updated glossary, additions to the notable figures appendix, and an expanded bibliography that includes electronic resources. ', 'ABC-CLIO, 2017', '1610697782', '2018-08-14'),
(21, 'Afghanistan: The people', 'Intended for ages 9-14, this work includes information on women and girls, Islam, and the war in Afghanistan. Topics include: early history and invaders; arrival of Islam; road to independence; Soviet wars and the War on Terrorism; Pashtuns and other ethnic groups; nomadic and village lifestyles; family celebrations; women and girls; and more.', 'Crabtree Publishing Company, 2003', '0778793362', '2018-08-14'),
(22, 'Afghanistan: Realities of War and Rebuilding', 'Several decades of war and its subsequent civil turmoil has brought devastating destruction throughout Afghanistan from various sources. Unfortunately, due to the circumstances beyond the control of ordinary citizens, the beautiful country of Afghanistan has endured many long-lasting and painful injuries in the last few decades of the previous millennium; as a result, it is suffering from lack of resources, mismanagement of the workforce, water pollution, air pollution, incomplete learning environment, animosity among people, and perhaps hundreds of other such debilitating elements that threaten and hinder the speedy progress of the country. Furthermore, despite having a semi-democratic environment, some people are still dealing with sporadic violence, animosity, and the consequences of inappropriate war techniques, such as the use of depleted uranium in metal penetrating bombs used in Afghanistan by various friendly and unfriendly forces. The various chapters in this book highlight the realities of war, atrocities of certain behaviors during the Russian invasion, factional conflicts, human rights violations, and what the current administration is doing with the assistance of officials from the United Nations and other foreign countries such as France, Germany, Canada, the United States, and Turkey (just to name a few) to bring about some relief to the \"injured\" and \"maimed\" people of Afghanistan. The book is meant to be non-political...although it praises some of the recent actions taken by officials in the interim government and the current administration to bring about long-term security, peace, and prosperity in the country. The book is written for the general population\'s awareness of facts as seen by an Afghan-born author, and it is written for discussion material in colleges and universities throughout the world. Some of the international colleges and universities may also adopt this material for cross-cultural discussions, anthropology, understanding developing economies, and workforce skills needed in such labor markets. Official colleges or professors adopting this book or any of its chapters may contact the publisher or the author for receiving the available supplementary facilitator materials. Afghanistan has recently begun to stake out its position on important moral issues, such as terrorism and drug trafficking affecting society. To be successful in this effort, the government officials and the working people of Afghanistan must assess and take seriously their own level of readiness to lead these important agendas. The past cannot be changed by anyone; however, we can change what happens now and in the future. Change must start from within, and each person must take responsibility for his or her own physical, mental, spiritual, and psychological developments. The realities of war point to many losses to all parties involved and such atrocities must be replaced with love, kindness, education, and true \"brotherhood\" if human beings are to live peacefully. We should all believe in the following statement: \"I must be a productive individual and, then, a good leader in order to effectively contribute to the team\'s goal toward the creation of a peaceful environment for all.\" Being a peaceful individual, and becoming an effective leader, is a good start for each person in Afghanistan and for those around the world since people have the most control over their own behaviors. May everyone be a productive human being and a good leader in bringing about peace on earth!', 'Ilead Academy, 2006', '0977421112', '2018-08-14'),
(23, 'Managerial Skills and Practices for Global Leadership', '\"Managerial Skills and Practices for Global Leadership\" book provides literature and skill building discussions about leading people through effective management practices across cultures. The book is about building management and organizational development skills of learners according to the principles of leadership and professionalism. The book covers the foundational concepts of management, cross-cultural management, motivation, leadership, stress management, change management, conflict management, teamwork, communication, problem-solving, negotiations, employee discipline, coaching, rewards, and training skills. The book also provides relevant dilemma-based cases along with discussion questions for individual and group reflection exercises. The management skills and concepts presented in this book come from over two decades of management and consulting experiences of the author in the corporate arena.', 'ILEAD Academy, LLC, 2013', '1936237067', '2018-08-14'),
(24, 'Managing Workplace Stress and Conflict Amid Change', 'Stress and conflict are realities of life. Most workers feel stressed on a daily basis. Perhaps this stress is due to the recession in the economy, job losses, more work, going to school while working, job change, more responsibilities, uncertainty, conflict, and/or too many things to achieve in a short time period. People are living in a constant period of transition, and the shelf life of solutions keeps getting shorter since what works today can become obsolete a few months later. Where is all the stress coming from in today\'s life? Stress is often coming from or caused by people, technology, new information, and globalization trends. Some of the commonly addressed sources of stress for businesses can include changes in nature of the workforce, economy, social trends, politics, leadership, management, organizational structures, products, services, customers, changing and conflicting demands, and location of where the firm produces or offers its products. Managing Workplace Stress and Conflict amid Change is about helping people effectively manage stress, conflict, and change in the workplace. The topics covered in this book include change management, conflict management, time management, stress management, and effective problem-solving. The book emphasizes that stress, conflict and change are realities of life in every organization. They are a natural part of evolution and human development. They have been handled for thousands of years and should be positively managed so that professionals may maximize their productivity and success in life.', 'ILEAD Academy, LLC, 2009', '0977421163', '2018-08-14'),
(25, 'Microsoft Windows Vista Unleashed', 'Microsoft® Windows Vista™ Unleashed, Second Edition\r\n\r\nPaul McFedries\r\n\r\nSecond Edition\r\n\r\nIncludes coverage of Windows Vista Service Pack 1!\r\n\r\nMicrosoft Windows Vista Unleashed, Second Edition, is a book for people, like you, who don’t consider themselves to be “average users.” It’s a book for anyone who finds that doing things the official way is slower, less efficient, and less powerful because Windows Vista was designed from the ground up to avoid confusing novice users. The result is default settings that restrict flexibility, interminable wizards that turn 2-step tasks into 12-step sagas, and the hiding of powerful and useful programs behind layers of menus and dialog boxes. To unleash the potential of Windows Vista, you need a different approach that blows away Vista’s novice features and scorns the standard way of doing things.\r\n\r\nThis book goes beyond the standard-issue techniques sanctioned by Microsoft and parroted in other Windows Vista books. Instead, this book offers shortcuts for boosting your productivity, customizations for making Windows Vista work the way you do, workarounds for known Windows Vista problems, and warnings for avoiding Windows Vista pitfalls. Along the way, you’ll learn about all kinds of insider details, undocumented features, powerful tools, and background facts that help put everything into perspective.', 'Sams Publishing, 2004', '9780132715355', '2018-08-14'),
(26, 'PHP and MySQL For Dummies', 'Here\'s what Web designers need to know to create dynamic,database-driven Web sites\r\n\r\nTo be on the cutting edge, Web sites need to serve up HTML, CSS,and products specific to the needs of different customers usingdifferent browsers. An effective e-commerce site gathersinformation about users and provides information they need to getthe desired result.', 'John Wiley & Sons, 2009', '0470585471', '2018-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `book_to_author`
--

DROP TABLE IF EXISTS `book_to_author`;
CREATE TABLE IF NOT EXISTS `book_to_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `book_to_author`
--

INSERT INTO `book_to_author` (`id`, `book_id`, `author_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 4),
(5, 4, 5),
(6, 5, 5),
(7, 6, 5),
(8, 6, 6),
(9, 7, 7),
(10, 8, 8),
(11, 9, 9),
(12, 10, 9),
(13, 11, 9),
(29, 25, 21),
(28, 24, 21),
(27, 23, 21),
(26, 22, 20),
(25, 21, 19),
(24, 20, 18),
(23, 19, 18),
(22, 18, 17),
(30, 26, 21);
COMMIT;
