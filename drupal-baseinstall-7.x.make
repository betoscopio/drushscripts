; Use this file as a base build a Drupal Distrubtion/Devel enviroment
;   - the Drupal core
;   - the 3rd party files from ckeditor.com
;   - some contributed modules
; To use type following command:
;     $ drush make drupal-baseinstall-7.make [directory]

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
projects[drupal][version] = 7.19

; Base
; --------
projects[] = ctools
projects[] = views
projects[] = token
projects[] = pathauto
projects[] = entity
projects[] = strongarm

; http://www.lullabot.com/articles/module-monday-entity-construction-kit
;projects[] = eck

; Redirection
;http://www.lullabot.com/articles/module-monday-field-redirection
;projects[] = field_redirection
http://www.lullabot.com/articles/module-monday-rabbit-hole
;project[] = rabbit_hole
;http://drupal.org/project/page_manager_redirect

; Deploy
; -------
projects[] = features
;projects[features_plumber] = 1.0-alpha3
projects[] = features_override
;projects[] = ftools
; To see the difference in overriden features and changes on node revisions.
projects[] = diff
; Hacked, see changes core, contrib modules: http://fuseinteractive.ca/blog/hacked-module-drush-integration
;projects[] = hacked

; Admin
projects[] = advanced_help
projects[] = site_map
projects[] = admin_menu
;projects[] = context
; Improves administration page of modules
projects[] = module_filter
; Create node based on other, base for node templating
;projects[] = node_clone
; Most earlier functionality now in core, module in dev only, check later
;projects[] = better_formats
; Allow more granular permissions on publishing options.
projects[] = override_node_options
; Granular permisions to see unpublished nodes.
projects[] = view_unpublished

;Better content administration
projects[] = workbench
;projects[] = workbench_files
;projects[] = workbech_media

;projects[] = workbench_access
;projects[] = workbench_moderation

;projects[backup_migrate] =  2.4
projects[] =  flag

; Node work
;projects[] = addanother
;projects[] = references
;projects[] = nodereference_url
; Should be used in favor than references
projects[] = entityreference
; Use with entity reference
;project[] = entityreference_view_widget
; Similar to nodereference_url
;project[] = entityreference_prepopulate
; Adds a 'Add Node' button for the creation of referenced nodes.
; http://drupal.org/sandbox/hazah/1488826
;project[] = prepopulate_create_node_links
; Autocreate an entity while referencing
;project[] = entityconnect
; Improves interface of referenced entities
;project[] = references_dialog

; Fields
projects[] = date
projects[] = calendar
projects[] = link
; Improves node insetion/edition interface
;projects[] = field_group
projects[] = options_element
; Adds a new FAPI widget, '#type' => 'multiselect' selectable in multi selectable lists.
;projects[] = multiselect
; Change the widget of multi selectable lists using JQuery
;projects[] = improved_multi_select
; Hour; minute; second field
;projects[] = hms_field
;projects[] = field_validation

; GUI
projects[menu_block] =  2.3
projects[] =  menu_position
; A more configurable option to menu_position
;projects[] = path_breadcrumbs
projects[wysiwyg] = 2.2
projects[] = image_resize_filter

; Use version 1 for production sites for now, version 2 still unstable (upgrade path working)
projects[media][subdir] = contrib
;projects[media][version] = 1.2
projects[media][version] = 2.0-unstable7
; Resizing images in WYSIWYG broken in media-7.x-1.0-rc3 & 2.0-unstable3
; Issue http://drupal.org/node/1411340#comment-6051746
projects[media][patch][1411340] = http://drupal.org/files/media-Resizing_images_in_WYSIWYG-1411340-13.patch
projects[] = file_entity

projects[media_youtube] = 1.0-beta3
; Add crop, rotate and scale tools to media images, 
; requires imgAreaSelect jQuery plugin: http://odyniec.net/projects/imgareaselect/
;projects[] = media_crop
;projects[] = media_browser_plus
;projects[] = media_flickr
; Updates media and where is referenced
;projects[] = media_update
;projects[] = flickr
;rotating_banner -> acquia project, requires media
;projects[] = htmlpurifier
;Open External links in new window
projects[] = extlink

; Layouts
;projects[] = panels
;projects[] = ds
projects[] = panelizer
projects[] = fieldable_panels_panes
projects[] = panels_breadcrumbs
; Several layouts for use with panels from the Panopoly project.
projects[panopoly_theme][version] = 1.0-beta6

;Adaptive Image Styles (ais), responsive images.
project[] = ais
project[] = cs_adaptive_image

;Responsive videos using http://odyniec.net/projects/imgareaselect/
; Only necesary when using dferent ratio aspect videos
project[] = fitvids
; There are other simpler options in some cases http://groups.drupal.org/node/233238

; Eye Candy
;projects[] = slidebox

; Adminstrator UI
; Improvements for content administrators
;projects[] = nodeformcols
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
projects[] = libraries
projects[] = views_slideshow
projects[] = views_bulk_operations
; former Views Attach
; projects[] = eva
; Order views results using UI
projects[] = draggableviews
; Implementation of Quicksand Jquery plugin http://razorjack.net/quicksand/
;projects[views_quicksand] = 1.0-beta5
; Improvements in exposed filters http://www.lullabot.com/articles/module-monday-views-dependent-filters
;projects[] = views_dependent_filters
;projects[] = better_exposed_filters
;projects[] = global_filter
; Change default taxonomy views
;projects[] = taxonomy_view_mode
;projects[] = tvi
; Data visualization for views. Supports charts and "BigText" in views. 
;projects[] = views_dataviz

; SEO
;projects[] = seo_checklist
;projects[] = sitemap
;projects[] = xmlsitemap
;projects[] = site_verify
;;projects[] = seo
;projects[] = globalredirect
;projects[] = google_analytics
projects[] = metatag
projects[] = redirect

;Social Media
;projects[] = socialmedia
;projects[] = widgets
;projects[] = on_the_web
; Simplier and more extensible of the fb modules
;projects[] = fboauth

;projects[] = service_links

; User management
; More info about it http://drupal.cocomore.com/blog/beware-drupals-administer-users-permission
;project[] = subuser
;project[] = user_settings_access
;project[] = role_delegation

; i18n
projects[] = transliteration
projects[] = variable
projects[] = i18n
;projects[entity_translation] = 1.0-alpha2
projects[i18nviews] = 3.x-dev
; Shows percentage of translated content per language
;projects[translation_overview] = 2.x-dev
; May assing language to existing nodes, still with MAJOR BUG
;projects[languageassign] = 1.2

; Localization
; Automatic downloads and updates for translations
projects[] = l10n_update
; For a better solution on localizated install use "l10n_install"
; install profile as a example.

; Development
projects[] = devel
;projects[] = devel_themer
;projects[] = devel_catcher
projects[] = coder
; Very useful for theme development, shows page with drupal elements
projects[] = styleguide
; Code Filter for text format, needs lib
;projects[] = geshifilter
; Similar to user switcher
;projects[] = masquerade
; Model Entities, base/example project for the entities development
;projects[] = model
; Examples for Developers, this project aims to provide high-quality, 
; well-documented API examples for a broad range of Drupal core functionality.
;projects[] = examples
;http://www.lullabot.com/articles/module-monday-paranoia
;project[] = paranoia

;http://www.lullabot.com/articles/module-monday-hacked
;http://drupalscout.com/knowledge-base/using-hacked-module-compare-drupal-site-code-standard-code
;review code changes
;project[] = hacked

; Use a external SMTP
;projects[] = smtp

; Performance & Optimization
; (backend)
; There is no reason for not enable APC on a site
projects[] = apc
;projects[] = memcache
;projects[] = varnish
; (frontend)
; Minify core JS
projects[] = speedy

;Themes
;project[] = chrome_frame
projects[] = omega_tools
projects[omega][type] = theme

; Libraries Modules
;projects[] = modernizr


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
