; My Drush Make file, useful for setup a D6 development environment.
; See the Drush Make project page for info:
; http://drupal.org/project/drush_make
; Based on Drush Make file from Brock Boland http://gist.github.com/404528
; and EXAMPLE.make from http://drupal.org/project/drush_make
; The selection of modules is made based on personal preferences and the Lullabot selection in
; its podcast http://www.lullabot.com/podcasts/lullabot-podcast-80-top-40-drupal-modules-revisited

; This make file is a working makefile - try it! Any line starting with a `;`
; I've included some modules and libraries that i think that are useful (or could be)
; for setup a development environment.
; The comments only will work to full line.

; Warning: Always check after download modules using this file, 
; is highly posible that some could be updated.

; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.

core =6.x

; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. This is usually Drupal core, but you can also specify
; alternative core projects like Pressflow. Note that makefiles included with
; install profiles *should not* include a core project.


projects[drupal][type] = core

; Use pressflow instead of Drupal core:
; projects[pressflow][type] = "core"
; projects[pressflow][download][type] = "get"
; projects[pressflow][download][url] = "http://launchpad.net/pressflow/6.x/6.19.92/+download/pressflow-6.19.92.tar.gz"

; Translations
; ------------
; I haven't found a way to place the translation in the right directory, 
; the only "solution" that I've found is move the translation files to the
; Drupal root directory after download all files.

; Spanish translation, replace it with the ISO 3166-1
; that you need.
projects[] = es

; Projects
; --------
; Each project that you would like to include in the makefile should be
; declared under the `projects` key. There are four ways to declare a project
; to download, depending on the requierements:

;$projects[] = cck;
;$projects[cck] = 2.4;
;$projects[cck][version] = 2.4;
;projects[cck][download][revision] = DRUPAL-6--2-4

; Next, there are several projects that I frecuently use when I build sites,
; those are divided by subject an some are commented that probably could be useful.

; CCK
projects[] = cck
;projects[] = date
;projects[] = email
;projects[] = link
projects[] = filefield
projects[] = imagefield
projects[] = nodereference_url

; views
projects[] = views
;For rotate any kind of content
projects[] = views_slideshow
;Attach content to a node or user profile
projects[] = views_attach
;projects[] = jcarousel
;projects[] = viewscarousel
;projects[] = views_nivo_slider
;improves html output from views
;projects[] = semanticviews
;very useful for site administrators and content managers, add bulk adminstrations actions
;projects[] = views_bulk_operations
;projects[] = views_bonus
;projects[] = views_gallery

;diferent ready to use galeries
;projects[] = galleryformatter
;flick style gallery, image as a field on node
;projects[] = views_galleriffic
;projects[] = views_slideshow_galleria

;projects[] = views_accordion
; related with date field -> look for screencasts linked on project page
;projects[] = calendar
;experimental, adds "or" option on filters for querys using views
;projects[] = views_or

;Look for (not tested by me but highly recomended on articles)
;workflow,timeline,flag,voteapi,nicemap
;rate: alternative to cote_up_down,fivestar http://willy.boerland.com/myblog/dopcast_episode_1_rate_this_module

; admin
projects[] = admin_menu
projects[] = adminrole
;projects[] = admin
;projects[] = context
;projects[] = node_clone
;backport to D6 to verticaltabs on node edition		
projects[] = vertical_tabs
projects[] = advanced_help
projects[] = install_profile_api
;moves "read more link" to the teaser space
;projects[] = ed_readmore
;more granular control on Input Formats
projects[] = better_formats
;make easier the creation of views selected by specific nodes
projects[] = nodequeue
;Hide the title field and generate it using patterns
;projects[] = auto_nodetitle

; ui
projects[] = wysiwyg
;dev version necesary to avoid some incompatibilities with Ligthbox2
projects[imageapi] = 1.x-dev
projects[] = imagecache
;projects[] = imagecache_actions
projects[] = image_resize_filter
projects[] = insert

;projects[jquery_update][install_path] = sites/all
projects[jquery_update][version] = 2.0-alpha1

;projects[jquery_ui][install_path] = sites/all
;for use JQuery UI 1.7 is necesary to install jquery_update
projects[jquery_ui][version] = 1.4
;if fails try with 1.3 version (could be installed only with JQuery UI 1.6)

projects[dialog] = 1.x-dev

;SEO
projects[] = pathauto
projects[] = token
projects[] = transliteration
;redirects to the alias if it exists
projects[] = globalredirect
;projects[path_redirect] = 1.0-beta7
;projects[] = page_title
;projects[nodewords] = 1.12-beta9
;projects[xmlsitemap] = 1.2 ;2.0-beta1

;projects[site_map] = 2.1
;projects[] = google_analytics
projects[] = seo_checklist

;;see module
;more like this

; development
projects[] = devel
projects[] = devel_themer
;projects[] = coder
;The Schema module provides additional Schema-related functionality not provided by the core Schema API that is useful for module developers.
;projects[] = schema
;projects[] = migrate
;projects[] = backup_migrate
;projects[] = node_export
;very useful for theme development, shows page with drupal elements
projects[] = styleguide

;projects[] = demo
;projects[] = demo_profile

; i18n
;projects[] = i18n
;projects[] = translation
;projects[] = l10n
;projects[] = l10n_client
;projects[] = translation_helpers

;anti spam
;projects[] = mollom

;THE e-commerce solution for D6, check commerce for D7
;projects[] = ubercart
;projects[] = uc_dineromail

;The extended Drupal API
projects[] = ctools

;Replacement for drupal agregator module. Always make nodes and can be managed
;projects[] = feeds

;Other
;projects[] = og
;projects[] = simplenews
;projects[] = votingapi
;advanced webform creation, simple statistics posible
;projects[] = webform

;requires modalframe 1.7 -> jquery ui 1.7 -> jquery update
;projects[noderelationships][install_path] = sites/all
;projects[noderelationships][version] = 1.5
;projects[noderelationships][patch][] = http://drupal.org/files/issues/noderelationships.660958.patch
;projects[noderelationships][patch][] = http://drupal.org/files/issues/687746_0.patch
;see reasons in openpublish distributions for these patches
;reverse_node_reference
projects[noderelationships][version] = 1.6
;similar to nodes relationships. but with less JS
;projects[backreference] = xx

;API & GUI for create db tables and use it, when less info than a node is requiered, integration with Feeds and Views
;projects[] = data

;custom_links,custom_breadcrumb, custom_pagers... modifiy the usual way to work using with native node and cck
;panels ... see more

;logintoboggan, modifica la forma de usar el modulo
;workflow... adds statates in publication of nodes
;scheduler, plan periodical activities on the site (publish content for example)

;content_profile ... cck for user profiles
;diff -> add differences between revisions added and changed word ... devel,staging?

;flag ... flag elements with tags for later use:views, workflow,actions, use ... etc ... pay atention******************


; User feedback / Voting
;projects[] = fivestar
;projects[] = votingapi

;http://drush.ws/ see , modules can expose its funtionality to drush

; Optimization
;see more on http://drupal.org/project/memcache
;projects[] = memcache

;-- We need to install dev version of Modalframe, since the latest stable is not, yet, compatible with Admin 2.x. @See: http://drupal.org/node/732820
;projects[modalframe][download][type] = get
;projects[modalframe][download][url] = http://ftp.drupal.org/files/projects/modalframe-6.x-1.x-dev.tar.gz
;projects[modalframe][destination] = modules
;projects[modalframe][directory_name] = modalframe
;projects[modalframe][install_path] = sites/all
projects[modalframe][install_path] = sites/all
projects[modalframe][version] = 1.7
;requiere jquery ui 1.7 el cual requiere jquery update

; Features
projects[] = features
projects[] = strongarm

;Media
;use content in field from external sources, includes many external sources and could be extend with pluggins, have input formats too.
projects[emfield] = 2.2
;add flickr photoset functionality to emfield
projects[] = media_flickr
projects[] = flickr
;stable version (1.9), conflicts with jquery_update
projects[lightbox2] = 1.x-dev 
;alternative to ligthbox2
;projects[colorbox]
;media navigator, extra option for noderelationships in wysiwyg
;projects[nrembrowser] = 1.0-beta16

;solution for plug flash and audio and video players and insert input formats in content
;projects[] = swftools
;(re)use images on filefield from diferent sources, local or remote server,  could be used with IMCE or Insert
;projects[] = filefield_sources
;varias opciones con flickr, documentarlas

;Themes
;projects[] = corolla
projects[] = fusion
projects[] = ninesixty
projects[] = ninesixtyrobots
;D7 admin theme backport
;projects[] = seven

; Skinr 2
;projects[jquery_update] = 2.x-dev
;projects[] = jquery_ui
;projects[dialog] = 1.x-dev
;projects[skinr] = 2.x-dev

;Development Seed Themes
projects[tao][location] = "http://code.developmentseed.org/fserver" 
projects[rubik][location] = "http://code.developmentseed.org/fserver"
projects[rubik][version] = "3.0-beta1"
projects[singular][location] = http://code.developmentseed.org/fserver

;Development Seed Features
;automatic translations updates
;projects[l10n_update][location] = http://code.developmentseed.org/fserver
;share nodes, twitter,facebook,email
;projects[simpleshare][location] = http://code.developmentseed.org/fserver

; Social
;login with facebook account
;projects[] = fbconnect

; Web Services
;connect something that is not a website to drupal (ie: flash, other apps) with XMLRPC and other (with pluggins)
projects[]  = services

;Libraries
; jQuery UI
libraries[jquery_ui][download][type] = "get"
;libraries[jquery_ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery.ui-1.6.zip"
; version 1.7 of JQuery ui need to install jquery_update
libraries[jquery_ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery-ui-1.7.3.zip"
libraries[jquery_ui][directory_name] = "jquery.ui"
libraries[jquery_ui][destination] = "modules/jquery_ui"

; CKEditor
libraries[ckeditor][download][type] = "get" 
;libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.3.1/ckeditor_3.3.1.tar.gz"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.4/ckeditor_3.4.tar.gz"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"
