# Custom Blog System using Django (Python)
Simple Blogging System who finds WordPress alternative CMS. Write, post and share to facebook, twitter or any social platform. There are options to place advertisements at top, right side or at the bottom.

## Security
Protected from SQL injection & common security vulnerabilities CSRF Protection – Protected from cross-site request forgery (CSRF) and Cross-Site Scripting (XSS) attacks Session Protection – highly secure Laravel session mechanism Highly secure one-way password hashing.

## Key Features
- Secure Blogging System
- Manage Author, Editor, Subscriber easily
- Dynamically changeable every Information
- Search post with title or keywords
- Google AdSense, Amazon affiliate Advertisement
- Google Analytics, Google tag, Facebook pixel
- Two types Logo option (Image & Text)
- 404, Search and Archive pages
- 2 Sidebars (Right Sidebar + Footer)
- Awesome Slider, Beautiful Dashboard
- Awesome Feature Post Option
- Blog posts with 4 layouts (Slider, Feature, Classic, others) Ajax module pagination
- Dynamic Tag System
- World most popular Disqus commenting option (with Disqus API)
- SEO Optimized & SEO-Friendly URL
- Clean and Responsive Design
- Four layers users who will be able to manage, edit, create Blog or even just a subscriber
- Login with Facebook, Google, Twitter, Linkdin, Github
- Multi language support (New Languages Can be Added Easily)
- Beautiful track log system
- PHP/SMTP Mail support
- RTL Support

## Extra
- Cache System
- Editable & Sortable Navigation
- Responsive & Sortable Slider (Enable & Disable Option)
- Responsive Ad Spaces for Any Kind of Ad Codes (Including Adsense)
- Adding Unlimited Fully Editable Pages
- Reading List Page (Add & Remove from List)
- Advanced Post Options
- Ajax Comment System
- Voting Poll (Add, Delete Unlimited Poll)
- Gallery Albums
- Gallery Categories
- Add, Delete Unlimited Photos
- (Send Html Email to All Registered Emails)
- Social Login (Facebook & Google)
- Widget: Our Picks
- Widget: Related Posts
- Manage Registered Emails
- Enable & Disable Comment Approval System
- Manage Contact Messages
- RSS (With different channels)
- Enable & Disable Membership System
- Follow & Unfollow Users
- Cookie Notice for GDPR

## Access
| User  | Email address      | Username | Password |
|-------|--------------------|----------|----------|
| Admin | admin@coderill.com | coderill | password |
| User  | user@coderill.com  | username | password |

### In MySQL
There is a bug at **django_admin_log** table in MySQL database, to fix the bug:
- Remove the **django_admin_log** table
- Run the SQL commend below
```sql
CREATE TABLE `django_admin_log` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`action_time` datetime(6) NOT NULL,
	`object_id` longtext DEFAULT NULL,
	`object_repr` varchar(200) NOT NULL,
	`action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
	`change_message` longtext NOT NULL,
	`content_type_id` int(11) DEFAULT NULL,
	`user_id` int(11) NOT NULL,
	PRIMARY KEY (`id`),
	KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
	KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
	CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
	CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8
```

Thanks.
