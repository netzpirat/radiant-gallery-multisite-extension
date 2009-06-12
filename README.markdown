Gallery Multisite
=========================

This extension scopes galleries to sites. Spanners fork of multi-site is needed and does most of the work in the model (by putting a scope around find, essentially), so there are no controller modifications required.

Dependencies
------------
* [Gallery Extension](http://github.com/pilu/radiant-gallery/tree/master) 
* [Multisite Extension](http://github.com/spanner/radiant-multi-site-extension/tree/master) (Spanners fork)

Installation
------------
You'll need to add ':gallery_observer' to the active record observers in your environment.rb connfig.

	config.active_record.observers = [:user_action_observer, :gallery_observer]