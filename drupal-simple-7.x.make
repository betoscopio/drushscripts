; Use this file as a base build a Drupal Distrubtion/Devel enviroment, 
; has te minimal module selection tha i usually use to build a site.
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
; If is not set choose the latest stable version of the specified core
projects[drupal][version] = 7.12

; Projects
; --------
projects[ctools] = 1.0-rc2
projects[views] = 3.3
projects[features] = 1.0-rc1
:projects[ftools] = 1.3
; To see the difference in overriden features
projects[diff] = 2.0
projects[token] = 1.0-rc1
projects[pathauto] = 1.0
;projects[flag] =  2.0-beta6
projects[entity] = 1.0-rc1

; Admin
projects[] = admin_menu
; Improves administration page of modules
projects[] = module_filter
; Create node based on other, base for node templating
;projects[] = node_clone
projects[strongarm][version] =  2.0-beta5

;Better content administration
projects[workbench] = 1.1
;projects[workbench_files] = 1.1
;projects[workbech_media] = 1.1

;projects[workbench_access] = 1.1
;projects[workbench_moderation] = 1.1

; Node work

; Fields
;projects[date] = 2.2
;projects[calendar] = 3.0
projects[] = link
; Improves node insetion/edition interface
;projects[] = field_group
projects[entityreference] = 1.0-beta5

; GUI
projects[menu_block] =  2.3
projects[menu_position] =  1.1
projects[wysiwyg] = 2.1
projects[] = image_resize_filter
; Use version 1 for production sites for now, version 2 still highly unstable (upgrade path working)
projects[media] = 1.0-rc3
projects[media_youtube] = 1.0-beta3
projects[options_element] = 1.7
; This module extends reference fields like the user and node reference fields by adding links to add, 
; edit and search for references through a dialog. 
;projects[references_dialog] = 1.0-alpha3
;Open External links in new window
projects[] = extlink

; Views
; Requierement for views_slideshow
; Required by views_slideshow and other modules
projects[libraries] = 2.0-alpha2
projects[views_slideshow] = 3.0

; SEO
;projects[] = google_analytics
projects[] = metatag

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
projects[devel] = 1.2
projects[] = devel_themer
projects[] = coder
; Very useful for theme development, shows page with drupal elements
projects[styleguide] = 1.0
;projects[] = backup_migrate
; Code Filter for text format, needs lib

; Use a external SMTP
; Download release in development
projects[smtp][version] = 1.0-beta1


;Themes
projects[omega_tools] = 3.0-rc3
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

; If you want to install a module into a sub-directory, you can use the
; `subdir` attribute.
;projects[admin_menu][subdir] = custom
