; Use this file as a base build a Drupal Distrubtion/Devel enviroment
;   - the Drupal core
;   - the 3rd party files from ckeditor.com
;   - some contributed modules
; To use type following command:
;     $ drush make distro.make [directory]

; Some modules (flag, draggableviews) are downloaded using git for avoid this issue http://drupal.org/node/954476
; For more info about parameters see http://drupalcode.org/project/drush_make.git/blob_plain/refs/heads/6.x-2.x:/README.txt


; Core version
; ------------

core = 7.x

; API version
; ------------
; Every makefile needs to declare it's Drush Make API version. This version of
; drush make uses API version `2`.

api = 2

; Core project
; ------------
; If is not set choose the latest stable version of the specified core
projects[drupal][version] = 7.12

; Projects
; --------
projects[ctools] = 1.0-rc2
projects[views] = 3.3
projects[token] = 1.0-rc1
projects[pathauto] = 1.0
projects[entity] = 1.0-rc1

; Deploy
; -------
projects[features] = 1.0-rc1
;projects[features_plumber] = 1.0-alpha3
;projects[features_override] = 2.0-alpha1
:projects[ftools] = 1.4
; To see the difference in overriden features
projects[diff] = 2.0

; Admin
projects[advanced_help] = 1.0
projects[] = site_map
projects[] = admin_menu
;projects[] = context
; Improves administration page of modules
projects[] = module_filter
; Create node based on other, base for node templating
;projects[] = node_clone
; Most earlier functionality now in core, module in dev only, check later
;projects[] = better_formats
projects[strongarm][version] =  2.0-beta5
; Allow more granular permissions on publishing options.
projects[] = override_node_options
; Granular permisions to see unpublished nodes.
projects[] = view_unpublished

;Better content administration
projects[workbench] = 1.1
;projects[workbench_files] = 1.1
;projects[workbech_media] = 1.1

;projects[workbench_access] = 1.1
;projects[workbench_moderation] = 1.1

;projects[backup_migrate] =  2.2
projects[flag] =  2.0-beta6

; Node work
;projects[references] = 2.0
;projects[] = nodereference_url
; Should be used in favor than references
projects[entityreference] = 1.0-beta5

; Fields
projects[date] = 2.2
projects[calendar] = 3.0
projects[] = link
; Improves node insetion/edition interface
;projects[] = field_group
projects[options_element] = 1.7
; This module extends reference fields like the user and node reference fields by adding links to add, 
; edit and search for references through a dialog. 
;projects[references_dialog] = 1.0-alpha3

; GUI
projects[menu_block] =  2.3
projects[menu_position] =  1.1
projects[wysiwyg] = 2.1
; Changes commited to dev, usable expotables  input formats.
; Issue http://drupal.org/node/624018#comment-5098162, needs the *entity* module to be used
;projects[wysiwyg][patch][624018-211] = http://drupal.org/files/0001-feature.inc-from-624018-211.patch
projects[] = image_resize_filter
; Use version 1 for production sites for now, version 2 still highly unstable (upgrade path working)
projects[media] = 1.0-rc3
projects[media_youtube] = 1.0-beta3
; Add crop, rotate and scale tools to media images.
;projects[media_crop] = 1.0-beta3
;projects[] = media_browser_plus
;projects[] = media_flickr
; Updates media and where is referenced
;projects[] = media_update
;projects[] = flickr
;rotating_banner -> acquia project, requires media
;projects[] = htmlpurifier
;Open External links in new window
projects[] = extlink


; Eye Candy
;projects[] = slidebox

; Adminstrator UI
; Improvements for content administrators
;projects[] = nodeformcols
;projects[] = prepopulate	;D6 only
;projects[] = login_destination
;projects[] = auto_nodetitle
;projects[] = conditional_fields
; Improvements in configuration capability of the administration theme
;projects[] = admin_theme

; Feeds
;projects[] = feeds
; Modify data before import
;projects[] = feeds_tamper

; Views
; Requierement for views_slideshow
; Required by views_slideshow and other modules
projects[libraries] = 2.0-alpha2
projects[views_slideshow] = 3.0
projects[views_bulk_operations] = 3.0-rc1
; former Views Attach
; projects[eva] = 1.1
; Order views results using UI
projects[draggableviews] = 2.x-dev
; Implementation of Quicksand Jquery plugin http://razorjack.net/quicksand/
;projects[views_quicksand] = 1.0-beta5
; Improvements in exposed filters http://www.lullabot.com/articles/module-monday-views-dependent-filters
;projects[] = views_dependent_filters
;projects[] = better_exposed_filters
;projects[] = global_filter

; Performance Optimization
;see more on http://drupal.org/project/memcache
;projects[] = memcache
;projects[] = varnish

; SEO
;projects[] = seo_checklist
;projects[sitemap] = 1.0
;projects[] = xmlsitemap
;;projects[] = seo
; Using devel version from 2011/05/02, that fix some issues with i18n
; Related issue http://drupal.org/node/1034126
; Other related issue to the problem http://drupal.org/node/774950#comment-4776766
; Some strongarm patch may fix issues on globalredirect http://drupal.org/node/998070#comment-4842624
;projects[globalredirect] = 1.x-dev
projects[redirect] = 1.0-beta4
;projects[] = google_analytics
projects[] = metatag

;Social Media
;projects[] = socialmedia
;projects[] = widgets
;projects[] = on_the_web

;projects[] = service_links

; i18n
projects[] = transliteration
projects[variable] = 1.1
projects[i18n] = 1.4
;projects[entity_translation] = 1.0-alpha1
projects[i18nviews] = 3.x-dev
; Shows percentage of translated content per language
;projects[translation_overview] = 2.0-beta1
; May assing language to existing nodes, still with MAJOR BUG
;projects[languageassign] = 1.2

; Localization
; Automatic downloads and updates for translations
projects[] = l10n_update
; For a better solution on localizated install use "l10n_install"
; install profile as a example.

; Development
projects[devel] = 1.2
;projects[] = devel_themer
projects[] = coder
; Very useful for theme development, shows page with drupal elements
projects[styleguide] = 1.0
; Code Filter for text format, needs lib
;projects[] = geshifilter
; Similar to user switcher
;projects[] = masquerade

; Use a external SMTP
;projects[smtp][version] = 1.0-beta1

;Themes
projects[omega_tools] = 3.0-rc4
projects[omega][type] = theme

; Libraries Modules
;projects[] = modernizr


; Libraries
; ---------

; CKEditor
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.tar.gz"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

; JQuery Cicle
libraries[jquery_cycle][download][type] = "get"
libraries[jquery_cycle][download][url] = "http://www.malsup.com/jquery/cycle/release/jquery.cycle.zip?v2.99"
libraries[jquery_cycle][directory_name] = "jquery.cycle"
libraries[jquery_cycle][destination] = "libraries"

; HTML Purifier
libraries[htmlpurifier][download][type] = "get"
libraries[htmlpurifier][download][url] = "http://htmlpurifier.org/releases/htmlpurifier-4.3.0.zip"
libraries[htmlpurifier][directory_name] = "htmlpurifier"
libraries[htmlpurifier][destination] = "libraries"

; GeSHi - Generic Syntax Highlighter
;libraries[geshi][download][type] = "get"
;libraries[geshi][download][url] = "http://sourceforge.net/projects/geshi/files/geshi/GeSHi%201.0.8.10/GeSHi-1.0.8.10.tar.gz/download"
;libraries[geshi][directory_name] = "geshi"
;libraries[geshi][destination] = "libraries"

work; If you want to install a module into a sub-directory, you can use the
; `subdir` attribute.
;projects[admin_menu][subdir] = custom
