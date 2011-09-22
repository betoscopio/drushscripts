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
projects[drupal][version] = 7.8

; Projects
; --------
projects[ctools] = 1.0-rc1
projects[views] = 3.0-rc1
; Issue http://drupal.org/node/1032836#comment-4599172 , problem with calendar views exported to features
projects[features] = 1.0-beta4
;projects[features_plumber] = 1.0-alpha3
;projects[features_override] = 1.0-beta1
; To see the difference in overriden features
projects[diff] = 2.0
;use git clone --branch 7.views-post-alpha1-exportable-fix http://git.drupal.org/project/features.git
;use patch to work correctly with the latest version of views
projects[] = token
projects[] = pathauto

; Admin
projects[] = advanced_help
projects[] = site_map
;projects[] = admin_menu
;projects[] = context
;projects[boxes] = 1.0-beta5
; Improves administration page of modules
projects[] = module_filter
; Create node based on other, base for node templating
;projects[] = node_clone
; Most earlier functionality now in core, module in dev only, check later
;projects[] = better_formats
; Needed Patch for fix language negociation
;projects[strongarm][version] =  2.0-beta2
; Issue glohttp://drupal.org/node/998070
;projects[strongarm][patch][998070] = http://drupal.org/files/issues/strongarm-lang_pref-998070_0.patch
; Another fix to the same problem, issue http://drupal.org/node/1062452
;projects[strongarm][patch][1062452] = http://drupal.org/files/issues/strongarm_set_conf-needs-to-be-called-sooner-1062452--3.patch
; Seems that new version fix the problems, still may check
projects[strongarm][version] =  2.0-beta3
; Fixes problems with globalredirect http://drupal.org/node/998070#comment-4842624
;projects[strongarm][version] =  2.0-dev

;Better content administration
projects[workbench] = 1.0
;projects[workbench_files] = 1.0
;projects[workbech_media] = 1.0

;projects[workbench_access] = 1.0
;projects[workbench_moderation] = 1.0

;projects[nodequeue][version] = 2.0-beta1
;projects[] =  backup_migrate
;projects[flag] =  2.0-beta6
projects[flag][download][type] = git
projects[flag][download][revision] = "master"
;projects[openidadmin][version] = 1.0

; Node work
projects[references] = 2.0-beta3
projects[] = nodereference_url

; Fields
projects[date] = 2.0-alpha4
; needs translation/localization
projects[calendar][version] = 3.0-alpha1
projects[] = link
; Improves node insetion/edition interface
;projects[] = field_group

; GUI
projects[wysiwyg] = 2.x-dev
; Issue http://drupal.org/node/624018#comment-4858700, needs the *entity* module to be used
projects[wysiwyg][patch][624018] = http://drupal.org/files/issues/wysiwyg-7.x-2.x-entity-exportables-624018-208_drush_make.patch
projects[] = image_resize_filter
; Use version 1 for production sites for now, version 2 still highly unstable (upgrade path working)
;projects[media] = 1.0-beta5
;projects[media_youtube] = 1.x-dev
;1.x-dev or 1.0-alpha5
; use 'folder' git version
; apply some patch--- not ready
;projects[] = media_browser_plus
;projects[] = media_flickr
; Updates media and where is referenced
;projects[] = media_update
;projects[] = flickr
;rotating_banner -> acquia project, requires media
;projects[] = htmlpurifier

; Adminstrator UI
; Improvements for content administrators
;projects[] = nodeformcols
;projects[] = prepopulate	;D6 only
;projects[] = login_destination
;projects[] = auto_nodetitle
;projects[] = conditional_fields ;D6 only
;projects[] = nodeformsettings	;D6 only
; Improvements in configuration capability of the administration theme
;projects[] = admin_theme

; Feeds
;projects[] = feeds
; Modify data before import
;projects[] = feeds_tamper

; Views
; Requierement for views_slideshow
; Required by views_slideshow and other modules
projects[libraries] = 2.x-dev
projects[views_slideshow] = 3.0-alpha1
projects[entity] = 1.0-beta10
projects[] = views_bulk_operations
; former Views Attach
; projects[eva] = 1.0
; Order views results using UI
; projects[draggableviews] = 1.x-dev
projects[draggableviews][download][type] = git

; Performance Optimization
;see more on http://drupal.org/project/memcache
;projects[] = memcache
;projects[] = varnish

; SEO
;projects[] = seo_checklist
;projects[] = xmlsitemap
; Using devel version from 2011/05/02, that fix some issues with i18n
; Related issue http://drupal.org/node/1034126
; Other related issue to the problem http://drupal.org/node/774950#comment-4776766
; Some strongarm patch may fix issues on globalredirect http://drupal.org/node/998070#comment-4842624
projects[globalredirect] = 1.x-dev
;projects[] = google_analytics

; i18n
projects[] = transliteration
projects[variable] = 1.0
projects[i18n] = 1.0-beta7
;projects[entity_translation] = 1.x-dev
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
projects[] = devel
;projects[] = devel_themer
;projects[] = drupalforfirebug
projects[] = coder
; Very useful for theme development, shows page with drupal elements
projects[] = styleguide
;projects[] = backup_migrate
; Code Filter for text format, needs lib
;projects[] = geshifilter
; Similar to user switcher
;projects[] = masquerade

; Use a external SMTP
; Download release in development
;projects[smtp][version] = 7.x-1.x-dev
projects[smtp][subdir] = contrib
projects[smtp][download][type] = git
projects[smtp][download][revision] = "7.x-1.x"


;Themes
projects[omega][type] = theme

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

; Clone a project from github example.
;projects[tao][type] = theme
;projects[tao][download][type] = git
;projects[tao][download][url] = git://github.com/developmentseed/tao.git

; If you want to install a module into a sub-directory, you can use the
; `subdir` attribute.
;projects[admin_menu][subdir] = custom
