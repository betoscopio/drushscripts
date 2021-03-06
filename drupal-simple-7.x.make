; Use this file as a base build a Drupal Distrubtion/Devel enviroment, 
; has te minimal module selection tha i usually use to build a site.
;   - the Drupal core
;   - the 3rd party files from ckeditor.com
;   - some contributed modules
; To use type following command:
;     $ drush make drupal-simple-7.make [directory]

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
projects[drupal][version] = 7.19

; Base
; --------
projects[] = ctools
projects[views] = 3.5
projects[] = features
projects[] =  strongarm
projects[] = token
projects[] = pathauto
;projects[] =  flag
projects[] = entity

; Admin
projects[] = admin_menu
; Improves administration page of modules
projects[] = module_filter
; Create node based on other, base for node templating
;projects[] = node_clone

;Better content administration
projects[] = workbench
;projects[] = workbench_files
;projects[] = workbech_media
;projects[] = workbench_access
;projects[] = workbench_moderation

; Node work

; Fields
;projects[] = date
;projects[] = calendar
projects[] = link
; Improves node insetion/edition interface
;projects[] = field_group
projects[] = entityreference

; GUI
projects[menu_block] =  2.3
projects[] = menu_position
; A more configurable option to menu_position
;projects[] = path_breadcrumbs

projects[wysiwyg][version] = 2.2

projects[] = image_resize_filter

; Use version 1 for production sites for now, version 2 still unstable (upgrade path working)
;projects[media][version] = 1.2
projects[media][version] = 2.0-unstable7
; Resizing images in WYSIWYG broken in media-7.x-1.0-rc3 & 2.0-unstable3
; Issue http://drupal.org/node/1411340#comment-6051746
projects[media][patch][1411340] = http://drupal.org/files/media-Resizing_images_in_WYSIWYG-1411340-13.patch
projects[] = file_entity

projects[] = media_youtube
projects[] = options_element
; This module extends reference fields like the user and node reference fields by adding links to add, 
; edit and search for references through a dialog. 
;projects[references_dialog] = 1.0-alpha4
;Open External links in new window
projects[] = extlink

; Views
; Requierement for views_slideshow
; Required by views_slideshow and other modules
projects[] = libraries
projects[] = views_slideshow

; Performance Optimization
; Minify core JS
projects[] = speedy

; SEO
;projects[] = sitemap
projects[] = xmlsitemap
projects[] = globalredirect
projects[] = google_analytics
projects[] = metatag
projects[] = redirect

;Social Media
;projects[] = socialmedia
;projects[] = widgets
;projects[] = on_the_web

; i18n
projects[] = transliteration

; Localization
; Automatic downloads and updates for translations
projects[] = l10n_update
; For a better solution on localizated install use "l10n_install"
; install profile as a example.

; Development
; To see the difference in overriden features
projects[] = diff
projects[] = devel
projects[] = devel_themer
projects[] = coder
; Very useful for theme development, shows page with drupal elements
projects[] = styleguide
;projects[] = backup_migrate
; Code Filter for text format, needs lib

; Use a external SMTP
; Download release in development
projects[] = smtp

; Performance
; There is no reason for not enable APC on a site
projects[] = apc
;projects[] = memcache
;projects[] = varnish

;Themes
projects[] = omega_tools
projects[omega][type] = theme

; Libraries
; ---------

; CKEditor
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.6/ckeditor_3.6.6.zip"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

; JQuery Cicle
libraries[jquery_cycle][download][type] = "get"
libraries[jquery_cycle][download][url] = "http://www.malsup.com/jquery/cycle/release/jquery.cycle.zip?v2.99"
libraries[jquery_cycle][directory_name] = "jquery.cycle"
libraries[jquery_cycle][destination] = "libraries"

; ColorBox
libraries[colorbox][download][type] = "get"
libraries[colorbox][download][url] = "http://www.jacklmoore.com/colorbox/colorbox.zip"
libraries[colorbox][directory_name] = "colorbox"
libraries[colorbox][destination] = "libraries"
