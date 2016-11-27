<?php

// Set the following for your database installation
// Copy or rename this file to .htconfig.php

$db_host = '{{$dbhost}}';
$db_port = '{{$dbport}}';
$db_user = '{{$dbuser}}';
$db_pass = '{{$dbpass}}';
$db_data = '{{$dbdata}}';
$db_type = '{{$dbtype}}'; // an integer. 0 or unset for mysql, 1 for postgres

/*
 * Notice: Many of the following settings will be available in the admin panel 
 * after a successful site install. Once they are set in the admin panel, they
 * are stored in the DB - and the DB setting will over-ride any corresponding
 * setting in this file
 *
 * The command-line tool util/config is able to query and set the DB items 
 * directly if for some reason the admin panel is not available and a system
 * setting requires modification. 
 *
 */ 


// Choose a legal default timezone. If you are unsure, use "America/Los_Angeles".
// It can be changed later and only applies to timestamps for anonymous viewers.

App::$config['system']['timezone'] = '{{$timezone}}';

// What is your site name? DO NOT ADD A TRAILING SLASH!

App::$config['system']['baseurl'] = '{{$siteurl}}';
App::$config['system']['sitename'] = "BlaBlaNet";
App::$config['system']['location_hash'] = '{{$site_id}}';

// Choices are 'basic', 'standard', and 'pro'.
// basic sets up the sevrer for basic social networking and removes "complicated" features
// standard provides most desired features except e-commerce
// pro gives you access to everything

App::$config['system']['server_role'] = '{{$server_role}}';


// These lines set additional security headers to be sent with all responses
// You may wish to set transport_security_header to 0 if your server already sends
// this header. content_security_policy may need to be disabled if you wish to
// run the piwik analytics plugin or include other offsite resources on a page

App::$config['system']['transport_security_header'] = 1;
App::$config['system']['content_security_policy'] = 1;
App::$config['system']['ssl_cookie_protection'] = 1;

// Your choices are REGISTER_OPEN, REGISTER_APPROVE, or REGISTER_CLOSED.
// Be certain to create your own personal account before setting 
// REGISTER_CLOSED. 'register_text' (if set) will be displayed prominently on 
// the registration page. REGISTER_APPROVE requires you set 'admin_email'
// to the email address of an already registered person who can authorise
// and/or approve/deny the request.

App::$config['system']['register_policy'] = REGISTER_OPEN;
App::$config['system']['register_text'] = '';
App::$config['system']['admin_email'] = '{{$adminmail}}';

// Recommend you leave this set to 1. Set to 0 to let people register without 
// proving they own the email address they register with.

App::$config['system']['verify_email'] = 1;


// Site access restrictions. By default we will create private sites.
// Your choices are ACCESS_PRIVATE, ACCESS_PAID, ACCESS_TIERED, and ACCESS_FREE.
// If you leave REGISTER_OPEN above, anybody may register on your
// site, however your site will not be listed anywhere as an open
// registration  hub. We will use the system access policy (below) 
// to determine whether or not to list your site in the directory 
// as an open hub where anybody may create accounts. Your choice of 
// paid, tiered, or free determines how these listings will be presented.  


App::$config['system']['access_policy'] = ACCESS_FREE;

// If you operate a public site, you might wish that people are directed
// to a "sellpage" where you can describe for features or policies or service plans in depth.
// This must be an absolute URL beginning with http:// or https:// .

App::$config['system']['sellpage'] = '';

// Maximum size of an imported message, 0 is unlimited

App::$config['system']['max_import_size'] = 200000;

// Location of PHP command line processor

App::$config['system']['php_path'] = '{{$phpath}}';

// Configure how we communicate with directory servers.
// DIRECTORY_MODE_NORMAL     = directory client, we will find a directory
// DIRECTORY_MODE_SECONDARY  = caching directory or mirror
// DIRECTORY_MODE_PRIMARY    = master directory server - one per realm
// DIRECTORY_MODE_STANDALONE = "off the grid" or private directory services

App::$config['system']['directory_mode']  = DIRECTORY_MODE_NORMAL;

// default system theme

App::$config['system']['theme'] = 'suckerberg';


// PHP error logging setup
// Before doing this ensure that the webserver has permission
// to create and write to php.out in the top level Red directory,
// or change the name (below) to a file/path where this is allowed.

// Uncomment the following 4 lines to turn on PHP error logging.
//error_reporting(E_ERROR | E_WARNING | E_PARSE ); 
//ini_set('error_log','php.out'); 
//ini_set('log_errors','1'); 
//ini_set('display_errors', '0');

///////////////META TAGS CONFIGURATION HOME BASE////////////////////////////////
//App::$config['metatag']['hreflang'] = '<link rel="alternate" href="https://blablanet.com/" hreflang="en" />';
App::$config['metatag']['description'] = '<meta name="description" content="BlaBlanet Ants Node  the social network service. Connect with friends, family . Share photos and videos, send messages and chat with people you know." />
';
App::$config['metatag']['robots'] = '<meta name="robots" content="index" />';
App::$config['metatag']['keywords'] = '<meta name="keywords" content="social, network, networking, service, friends, family, vpn, blogs, photos, videos, files, directory, encryption" />';
//////Registration Description
App::$config['metatag']['descriptionR'] = '<meta name="description" content="Register in BlaBlanet the decentralized social network service here you own your privacy and your data." />';
//////Login Description
App::$config['metatag']['descriptionL'] = '<meta name="description" content="Login in BlaBlanet enjoy with Friend share your ideas and feelings." />';
/////Directory Description
App::$config['metatag']['descriptionD'] = '<meta name="description" content="Here you will find the latest friends Join BlablaNet Social Network." />';
////Directory PUBLIC
App::$config['metatag']['descriptionP'] = '<meta name=" The latest Public Sites by BlaBlaNet." />';
///Directory APPS
App::$config['metatag']['descriptionA'] = '<meta name="description" content="BlaBlanet Social Network Lastes Applications, Apps, utils and extras for enjoy." />';
////Latest News
App::$config['metatag']['descriptionN'] = '<meta name=" The latest News Around the World update 24 hours in BlaBlaNet Social Network." />';

