-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2020 at 07:46 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coderill`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_profile`
--

CREATE TABLE `account_profile` (
  `id` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_profile`
--

INSERT INTO `account_profile` (`id`, `phone`, `image`, `user_id`) VALUES
(1, '01903402828', 'avatar/boy.png', 5),
(2, '01775219457', 'avatar/man.png', 1),
(4, '', 'default.png', 10);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add posts', 7, 'add_posts'),
(26, 'Can change posts', 7, 'change_posts'),
(27, 'Can delete posts', 7, 'delete_posts'),
(28, 'Can view posts', 7, 'view_posts'),
(29, 'Can add profile', 8, 'add_profile'),
(30, 'Can change profile', 8, 'change_profile'),
(31, 'Can delete profile', 8, 'delete_profile'),
(32, 'Can view profile', 8, 'view_profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$eDQJSQrzfORU$NG6qL/em9WMl8rgt/S/zlOFTylIF6XR0cShSQBoZHkA=', '2020-03-27 03:13:35.417916', 1, 'coderill', 'Jayanta', 'Biswas', 'coderill@gmail.com', 1, 1, '2020-03-20 13:27:53.000000'),
(5, 'pbkdf2_sha256$180000$aJALoLFNJJti$0Ek0eNBOIZMzt6noy+9cwmwZkE1PRFHhw5I+2zSYWU8=', '2020-03-27 06:20:49.541414', 0, 'bjayanta', '', '', 'bjayanta.neo@gmail.com', 0, 1, '2020-03-26 06:31:10.872732'),
(10, 'pbkdf2_sha256$180000$aV6gZuYMnHwI$31e6x4sninDqMx2uI1nZ9EbQn8eHOc88Kubs8uta3uM=', '2020-03-27 06:38:06.340740', 0, 'bakybillah', '', '', 'bakybillah.me@gmail.com', 0, 1, '2020-03-27 06:36:23.600504');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `status` varchar(45) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`, `author_id`) VALUES
(5, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'publish', '2020-03-26 19:21:23.997845', '2020-03-26 19:21:24.001842', 1),
(6, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'publish', '2020-03-26 19:22:11.594585', '2020-03-26 19:22:11.599581', 1),
(7, 'Why do I use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'publish', '2020-03-26 19:22:34.879263', '2020-03-27 02:51:39.761276', 5),
(8, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'publish', '2020-03-26 19:22:51.220889', '2020-03-27 02:45:35.790051', 5),
(9, 'The standard Lorem Ipsum passage, used since the 1500s', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'publish', '2020-03-26 19:23:28.374618', '2020-03-26 19:23:28.378607', 1),
(10, 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', 'publish', '2020-03-26 19:28:47.406335', '2020-03-26 19:28:47.410333', 1),
(11, '1914 translation by H. Rackham', '\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"', 'publish', '2020-03-26 19:39:10.576830', '2020-03-26 19:39:10.577829', 5),
(12, 'Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"', 'publish', '2020-03-26 19:39:26.176896', '2020-03-26 19:39:26.177907', 5),
(14, '1914 translation by H. Rackham', '\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"', 'publish', '2020-03-27 03:05:18.717736', '2020-03-27 03:05:18.718736', 5),
(15, 'Post Formats', 'Your blog is the lifeblood of your website. It allows you to quickly and easily update your visitors as to what is going on, interact with them personally, and build relationships that span vast distances. Because of this, it’s essential in 2013 that we go “beyond the blog.” Sometimes a standard blog post just won’t cut it anymore as we are increasingly sharing quotes, links, resources, photo galleries, and rich media such as audio and video. With X, support for WordPress Custom Post Formats is built right into the theme, with each featuring unique styling and options to handle your content in the best way possible.', 'publish', '2020-03-27 06:14:05.350867', '2020-03-27 06:14:05.351865', 1),
(16, 'What is demo content?', 'When a user activates a theme, they have an expectation of seeing their photos, theirs shop, their contributors and all of their content with a new style or twist. Themes provide this ability to showcase user content in different ways. How a theme gets that content is what we look for. When there is no content a theme should not show anything. This has been an issue in the past and this will hopefully add more information to that. Sounds simple, right?', 'publish', '2020-03-27 06:15:57.858640', '2020-03-27 06:15:57.859640', 1),
(17, 'ড্যাশবোর্ড থেকেই জেনে নিন আপনার ব্যবসার বর্তমান অবস্থা', 'সফটওয়্যারটিতে ইউজারনেম - পাসওয়ার্ড দিয়ে লগিন করার পর আপনি চলে আসবেন ড্যাশবোর্ডে। এখানেই আপনি পেয়ে যাবেন আপনার দোকান বা শো-রুমের বর্তমান হিসাব। কত টাকার পন্য কেনা হয়েছে, কত টাকার পন্য বিক্রি করা হয়েছে, কত বাকী আছে, কত নগদে বিক্রি হয়েছে, কোন পণ্যটি কমে যাচ্ছে, কত টাকা আয়, কত টাকা ব্যয়, গত এক মাসে ব্যবসার বেচাকেনার কি অবস্থা ইত্যাদি সকল বিষয় সম্পর্কে আপনি যেনে যাবেন এক যায়গা থেকেই। আর যেহেতু আমরা সফটওয়্যারটিকে নিয়মিত আপডেট করে থাকি তাই আপনি পরবর্তীতে নতুন নতুন সুবিধা পেতে থাকবেন সম্পূর্ণ ফ্রিতে।', 'publish', '2020-03-27 06:18:48.602067', '2020-03-27 06:18:48.602067', 1),
(18, 'আপনার পন্য বিক্রয় করুন সর্বাধুনিক পদ্ধতিতে', 'সফটওয়্যারের মাধ্যমে পন্য বিক্রয় করে রসিদ তৈরি করাকে অনেকেই ঝঞ্ঝাট বলে মনে করেন। এই মনে করাটা অযৌক্তিক নয়, কারণ বেশিরভাগ সফটওয়্যারেই পন্য বিক্রির বিষয়টি বেশ জটিল। কিন্তু আমরা আপনাকে নিশ্চয়তা দিচ্ছি যে আমাদের সফটওয়্যারটিতে পন্য বিক্রির বিষয়টি অত্যন্ত সহজ ও সুবিধাজনক। এটির মাধ্যমে আপনি খুব কম সময়ে পুরো বিক্রির প্রসেসটি শেষ করে ফেলতে পারবেন আর নিমিষেই তৈরি হয়ে যাবে বিক্রির রসিদ।', 'publish', '2020-03-27 06:19:26.163055', '2020-03-27 06:19:26.163055', 1),
(19, 'প্রশিক্ষণ', 'সফটওয়্যারটি ব্যবহার করতে যেন কোন সমস্যা না হয় সে জন্য আমরা সকল ব্যবহারকারীকে বিনামুল্যে প্রশিক্ষণ দিয়ে থাকি। প্রশিক্ষণ দেয়ার জন্য আমাদের রয়েছে ডেডিকেটেড প্রশিক্ষক। প্রশিক্ষণ কর্মসূচীগুলো অনলাইন ও অফলাইন দুই ভাবেই হয়ে থাকে। আমরা ব্যবহারকারির সুবিধামত সময়ে একাধিক অফলাইন প্রশিক্ষণের আয়োজন করে থাকি। আর অনলাইন প্রশিক্ষণের জন্য রয়েছে আমাদের ভিডিও টিউটোরিয়াল, যেগুলো দেখার মাধ্যমে আপনি সহজেই শিখে নিতে পারেন সফটওয়্যারটির ব্যবহার। তাছাড়া সপ্তাহে সাত দিন চব্বিশ ঘণ্টা আমাদের অনলাইন সাপোর্ট তো রয়েছেই।', 'publish', '2020-03-27 06:19:46.013714', '2020-03-27 06:19:46.014720', 1),
(20, 'অর্থহীন লেখা', 'অর্থহীন লেখা যার মাঝে আছে অনেক কিছু। হ্যাঁ, এই লেখার মাঝেই আছে অনেক কিছু। যদি তুমি মনে করো, এটা তোমার কাজে লাগবে, তাহলে তা লাগবে কাজে। নিজের ভাষায় লেখা দেখতে অভ্যস্ত হও। মনে রাখবে লেখা অর্থহীন হয়, যখন তুমি তাকে অর্থহীন মনে করো; আর লেখা অর্থবোধকতা তৈরি করে, যখন তুমি তাতে অর্থ ঢালো। যেকোনো লেখাই তোমার কাছে অর্থবোধকতা তৈরি করতে পারে, যদি তুমি সেখানে অর্থদ্যোতনা দেখতে পাও। …ছিদ্রান্বেষণ? না, তা হবে কেন?\r\n\r\nযে কথাকে কাজে লাগাতে চাও, তাকে কাজে লাগানোর কথা চিন্তা করার আগে ভাবো, তুমি কি সেই কথার জাদুতে আচ্ছন্ন হয়ে গেছ কিনা। তুমি যদি নিশ্চিত হও যে, তুমি কোনো মোহাচ্ছাদিত আবহে আবিষ্ট হয়ে অন্যের শেখানো বুলি আত্মস্থ করছো না, তাহলে তুমি নির্ভয়ে, নিশ্চিন্তে অগ্রসর হও। তুমি সেই কথাকে জানো, বুঝো, আত্মস্থ করো; মনে রাখবে, যা অনুসরণ করতে চলেছো, তা আগে অনুধাবন করা জরুরি; এখানে কিংকর্তব্যবিমূঢ় হবার কোনো সুযোগ নেই।', 'publish', '2020-03-27 06:20:27.688208', '2020-03-27 06:20:27.688208', 1),
(21, 'বাংলায় নমুনা লেখা', 'আমার বাংলা নিয়ে প্রথম কাজ করবার সুযোগ তৈরি হয়েছিল অভ্র^ নামক এক যুগান্তকারী বাংলা সফ্‌টওয়্যার হাতে পাবার মধ্য দিয়ে। এর পর একে একে বাংলা উইকিপিডিয়া, ওয়ার্ডপ্রেস বাংলা কোডেক্সসহ বিভিন্ন বাংলা অনলাইন পত্রিকা তৈরির কাজ করতে করতে বাংলার সাথে নিজেকে বেঁধে নিয়েছি আষ্টেপৃষ্ঠে। বিশেষ করে অনলাইন পত্রিকা তৈরি করতে ডিযাইন করার সময়, সেই ডিযাইনকে কোডে রূপান্তর করবার সময় বারবার অনুভব করেছি কিছু নমুনা লেখার। যে লেখাগুলো ফটোশপে বসিয়ে বাংলায় ডিযাইন করা যাবে, আবার সেই লেখাই অনলাইনে ব্যবহার করা যাবে। কিন্তু দুঃখজনক হলেও সত্য যে, ইংরেজিতে লাতিন Lorem Ipsum… সূচক নমুনা লেখা (dummy texts) থাকলেও বাংলা ভাষায় এরকম কোনো লেখা নেই। তাই নিজের তাগিদেই বাংলা ভাষার জন্য প্রথম নমুনা লেখা তৈরি করলাম, এ হলো বাংলা Lorem ipsum – কিন্তু তার অনুবাদ নয়। আমি একে নামকরণ করেছি: অর্থহীন লেখা!\r\n\r\nআমি কোনো ভাষাবিজ্ঞানী নই। তাই ভাষাগত, শব্দব্যঞ্জনগত শুদ্ধতা, তাল-লয় -এসব বিষয়ে আমার জ্ঞান খুবই প্রাথমিক। তাই এই লেখায় এসব ভাষাবিজ্ঞানগত তাত্ত্বিক উপাদান খুঁজতে যাওয়া অর্থহীন হবে। আমি চেষ্টা করেছি বাংলা ভাষায় দীর্ঘ শব্দ রাখতে, তবে তা দীর্ঘতম – এমন দাবি আমি করছি না। আমি চেষ্টা করেছি, অংক (সংখ্যা) রাখতে, যাতে ফন্টের অবয়বটা টের পাওয়া যায়। আমি চেষ্টা করেছি যুক্তাক্ষর রাখতে, যতিচিহ্ন রাখতে,… অর্ধমাত্রার অক্ষর, পূর্ণমাত্রার অক্ষর, মাত্রাহীন অক্ষর, কার-ফলাযুক্ত শব্দ, বাক্যের এখানে-ওখানে রাখতে।\r\n\r\nবাংলা সব অক্ষর রাখার একটা চেষ্টা ছিল। কিন্তু তা ব্যর্থ – আমি শেষে এই চেষ্টা করাটাকেই অপ্রয়োজনীয় মনে করলাম। এ-তো আর বাংলা ভাষার আগার হচ্ছে না, এ হলো পরম্পরাহীন, কিংবা তাৎপর্যপূর্ণ একটি লেখা, যা বাংলা ভাষার প্রতিনিধিত্ব করবে টাইপসেটিং, প্রিন্টিং, ইন্ডাস্ট্রিতে কিংবা ওয়েব ডিযাইনে।', 'publish', '2020-03-27 06:21:53.411278', '2020-03-27 06:21:53.411278', 5),
(22, 'ফটোশপে সাদাকালো ছবি রঙিন করা', 'আজকে আমরা জানবো কিভাবে একটা সাদাকালো (Grayscale) ছবিকে রঙিন করা যায়। ফটোশপে আমাদেরকে সেই সাদাকালো ছবিটাকে খুলে নিতে হবে। এবারে দেখতে হবে, ছবিটা কোন কালার মোডে আছে: RGB, নাকি Grayscale। এটা দেখার সহজ পদ্ধতি হলো যে ছবিটা খোলা হলো, তার উপরের রিবনের লেখাটা পড়া। যদি ব্যাপারটা পরিষ্কার না হয়, তাহলে এই পদ্ধতি: Image > Mode, দেখুন টিক চিহ্ন কিসে দেয়া। যদি সেটা RGB-তে হয়, তাহলে আমাদের আর কিছুই করা লাগবে না। যদি সেটা Grayscale কিংবা অন্য কোনো অপশনে থাকে, তাহলে সেটাকে RGB-তে নিয়ে আসতে RGB’র উপর একটা ক্লিক করতে হবে। এটা করতে হবে এজন্য যে, RGB মোড দিয়ে রঙিন ছবিকে বোঝানো হয়, আর, আমরা যখন একটা ছবিকে রং করবো, তখন সেখানে বিভিন্ন রং যেন দেখা যায়।\r\n\r\nযাহোক, এবারে লেয়ার প্যালেটে (লেয়ার প্যালেট না দেখা গেলে Window > Layers) একটা নতুন লেয়ার নিতে হবে সাদাকালো ছবিটার ব্যাকগ্রাউন্ড লেয়ারটার উপরে (Shift + Ctrl + N)। এবারে লেয়ার প্যালেটে এই নতুন লেয়ারটি সিলেক্ট থাকা অবস্থায় [ছবিতে দেখানোমতে] Normal mode থেকে লেয়ারটিকে Color মোডে নিয়ে যেতে হবে। আমরা এই লেয়ারটাতে এখন যা রং দিবো, সাদাকালো ছবিটা সেই রঙে রাঙতে থাকবে।\r\n\r\nএবারের কাজটা সম্পূর্ণ নিজের কাছে: আমরা বাস্তবে যেভাবে একটা সাদাকালো ছবিতে তুলি দিয়ে রং মেখে রঙিন করি, এখানেও ব্যাপারটা হুবহু তাই। আমরা এবারে ফটোশপের ব্রাশ টুলটা নিব (B) এবং বিভিন্ন রং দিয়ে ছবির বিভিন্ন অংশ রঙিন করতে থাকবো। আমরা ঠিক করেছি সামনের চরিত্রটিকে রং করবো। এজন্য আমরা প্রথমে জ্যাকেটটা রং করছি, আর রং হিসেবে আমরা বেছে নিয়েছে হালকা আকাশি (#5986D1)। চেহারার রং হিসেবে নিয়েছি #F0C79F। আর ইনারের স্ট্রাইপ দুটোর জন্য নিয়েছি বেগুনি (#9373EF)। এরপর বিভিন্ন আকারের ব্রাশ নিয়ে মোটামুটিভাবে রং করেছি ছবিটাকে।', 'publish', '2020-03-27 06:40:24.941343', '2020-03-27 06:42:39.362169', 10);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-03-20 13:28:34.613719', '2', 'testuser', 1, '[{\"added\": {}}]', 4, 1),
(2, '2020-03-20 13:28:53.725639', '1', 'coderill', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 4, 1),
(3, '2020-03-20 13:52:54.791943', '4', 'blog 4', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Author\"]}}]', 7, 1),
(4, '2020-03-26 06:41:13.061061', '2', 'Profile object (2)', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'account', 'profile'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'blog', 'posts'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-14 12:19:39.114896'),
(2, 'auth', '0001_initial', '2020-03-14 12:19:40.788857'),
(3, 'admin', '0001_initial', '2020-03-14 12:19:46.416065'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-14 12:19:48.144729'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-14 12:19:48.184705'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-03-14 12:19:48.735396'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-03-14 12:19:49.347033'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-03-14 12:19:50.977404'),
(9, 'auth', '0004_alter_user_username_opts', '2020-03-14 12:19:51.034365'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-03-14 12:19:51.353184'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-03-14 12:19:51.380169'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-14 12:19:51.420159'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-03-14 12:19:51.508103'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-14 12:19:51.612038'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-03-14 12:19:52.134758'),
(16, 'auth', '0011_update_proxy_permissions', '2020-03-14 12:19:52.155746'),
(17, 'sessions', '0001_initial', '2020-03-14 12:19:52.447122'),
(18, 'blog', '0001_initial', '2020-03-20 13:20:23.890103'),
(19, 'account', '0001_initial', '2020-03-26 06:24:45.518154'),
(20, 'account', '0002_auto_20200326_1224', '2020-03-26 06:24:46.073005');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3dxb1bagrl5jiesv7rx69vvtvgtky6l4', 'ZDdjNDJmYzYxNGFkYjhkMDg0YWYyMDYwYzcwYjM3Yjg3ZmIzYWI0Mjp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmZkMjgyMjEzMTViNzc4YzhmNDhkMzZkZTVjMTRmZTc4ZTdjMjMyMSJ9', '2020-04-10 06:38:06.393960');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_profile`
--
ALTER TABLE `account_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_posts_author_id_6f561d00_fk_auth_user_id` (`author_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_profile`
--
ALTER TABLE `account_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_profile`
--
ALTER TABLE `account_profile`
  ADD CONSTRAINT `account_profile_user_id_bdd52018_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD CONSTRAINT `blog_posts_author_id_6f561d00_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
