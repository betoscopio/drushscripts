; Use this file as a base build a Drupal Distrubtion/Devel enviroment
;   - the Drupal core
;   - the 3rd party files from ckeditor.com
;   - some contributed modules
; To use type following command:
;     $ drush make distro.make [directory]


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
projects[drupal][version] = 7.0

; Projects
; --------
projects[ctools] = 1.0-alpha4
projects[views] = 3.0-beta3
projects[features] = 1.x-dev
; To see the difference in overriden features
projects[diff] = 1.x-dev
;use git clone --branch 7.views-post-alpha1-exportable-fix http://git.drupal.org/project/features.git
;use patch to work correctly with the latest version of views
projects[] = token
projects[] = pathauto

; Admin
projects[] = advanced_help
projects[] = site_map
;projects[] = context
; Create node based on other, base for node templating
;projects[] = node_clone
; Most earlier functionality now in core, module in dev only, check later
;projects[] = better_formats
projects[strongarm][version] =  2.0-beta2
;projects[nodequeue][version] = 7.x-2.0-alpha1
;projects[] =  backup_migrate

; Node work
;projects[] = field_group
;projects[] = references

; Fields
projects[] = date
; needs translation/localization
projects[calendar][version] = 1.0-alpha3
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

; Views
; Requierement for views_slideshow
; Required by views_slideshow and other modules
projects[] = libraries
projects[views_slideshow] = 3.0-alpha1
projects[] = views_bulk_operations

; Performance Optimization
;see more on http://drupal.org/project/memcache
;projects[] = memcache
;projects[] = varnish

; Or an alternative, extended syntax:
;projects[ctools][version] = 1.3

; SEO
;projects[] = xmlsitemap
projects[] = globalredirect
;projects[] = google_analytics

; i18n
projects[] = transliteration

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
