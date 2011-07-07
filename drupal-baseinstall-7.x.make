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
;projects[drupal][version] = 7.4

; Projects
; --------
projects[ctools] = 1.0-beta1
projects[views] = 3.0-rc1
projects[features] = 1.0-beta3
;projects[features_plumber] = 1.0-alpha3
;projects[features_override] = 1.0-beta1
; To see the difference in overriden features
projects[diff] = 1.x-dev
;use git clone --branch 7.views-post-alpha1-exportable-fix http://git.drupal.org/project/features.git
;use patch to work correctly with the latest version of views
projects[] = token
projects[] = pathauto

; Admin
projects[] = advanced_help
projects[] = site_map
;projects[] = admin_menu
;projects[] = context
;projects[boxes] = 1.0-beta3
; Improves administration page of modules
;projects[] = module_filter
; Create node based on other, base for node templating
;projects[] = node_clone
; Most earlier functionality now in core, module in dev only, check later
;projects[] = better_formats
; Needed Patch for fix language negociation
projects[strongarm][version] =  2.0-beta2
; Issue http://drupal.org/node/998070
projects[strongarm][patch][998070] = http://drupal.org/files/issues/strongarm-lang_pref-998070_0.patch
; Another fix, issue http://drupal.org/node/1062452
;projects[strongarm][patch][1062452] = http://drupal.org/files/issues/strongarm_set_conf-needs-to-be-called-sooner-1062452--3.patch

;projects[nodequeue][version] = 7.x-2.0-alpha1
;projects[] =  backup_migrate
;projects[flag] =  2.0-beta5
projects[flag][download][type] = git
projects[flag][download][revision] = "master"
;projects[openidadmin][version] = 1.0

; Node work
projects[references] = 2.0-beta3
projects[] = nodereference_url

; Fields
projects[] = date
; needs translation/localization
projects[calendar][version] = 2.0-alpha1
projects[] = link
; Improves node insetion/edition interface
projects[] = field_group

; GUI
projects[] = wysiwyg
; Maybe completly replaced later for "media" module, now is more stable
projects[] = insert
projects[] = image_resize_filter
; wait, still beta and unstable
;projects[] = media
; Required by Media
;projects[] = media
;projects[] = media_flickr
;projects[] = flickr
;rotating_banner -> acquia project, requires media
projects[] = htmlpurifier

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
projects[entity] = 1.0-beta9
projects[] = views_bulk_operations
; former views attach
projects[eva] = 1.0
; Order views results using UI
; projects[draggableviews] = 1.x-dev
projects[draggableviews][download][type] = git

; Performance Optimization
;see more on http://drupal.org/project/memcache
;projects[] = memcache
;projects[] = varnish

; Or an alternative, extended syntax:
;projects[ctools][version] = 1.3

; SEO
;projects[] = seo_checklist
;projects[] = xmlsitemap
; Using devel version from 2011/05/02, that fix some issues with i18n
projects[globalredirect] = 1.x-dev
;projects[] = google_analytics

; i18n
projects[] = transliteration
projects[variable] = 1.0
projects[i18n] = 1.0-beta7
;projects[entity_translation] = 1.x-dev
projects[i18nviews] = 3.x-dev

; Localization
; Automatic downloads and updates for translations
projects[] = l10n_update
; For a better solution on localizated install use "l10n_install"
; install profile as a example.

; Development
projects[] = devel
projects[] = devel_themer
projects[] = coder
; Very useful for theme development, shows page with drupal elements
projects[] = styleguide
;projects[] = backup_migrate
; Similar to user switcher
;projects[] = masquerade

; Use a external SMTP
; Download release in development
;projects[smtp][version] = 7.x-1.x-dev
projects[smtp][subdir] = contrib
projects[smtp][download][type] = git
projects[smtp][download][revision] = "7.x-1.x"


;Themes
projects[ninesixty][type] = theme

; Libraries
; ---------

; CKEditor
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.5/ckeditor_3.5.tar.gz"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

; JQuery Cicle
libraries[jquery_cycle][download][type] = "get"
libraries[jquery_cycle][download][url] = "http://www.malsup.com/jquery/cycle/release/jquery.cycle.zip?v2.99"
libraries[jquery_cycle][directory_name] = "jquery.cycle"
libraries[jquery_cycle][destination] = "libraries"

; HTML Purifier
libraries[jquery_cycle][download][type] = "get"
libraries[jquery_cycle][download][url] = "http://htmlpurifier.org/releases/htmlpurifier-4.3.0.zip"
libraries[jquery_cycle][directory_name] = "htmlpurifier"
libraries[jquery_cycle][destination] = "libraries"

; ckedit profile via drupal-org.make
; ----------------------------------
;projects[ckedit][type] = profile
;projects[ckedit][download][type] = git
;projects[ckedit][download][url] = "git://github.com/doka/ckedit.git"
;projects[ckedit][download][branch] = "master"

; Clone a project from github.
;projects[tao][type] = theme
;projects[tao][download][type] = git
;projects[tao][download][url] = git://github.com/developmentseed/tao.git

; If you want to install a module into a sub-directory, you can use the
; `subdir` attribute.
;projects[admin_menu][subdir] = custom
