---
layout: post
title: Plex Media Server Ubuntu packages available!
date: 2011-07-28T10:53:00+00:00
---

As I mentioned [the other day][1] I created some Ubuntu packages for Plex Media Server. Now with the new 0.9.3.4 release they are [officially available][2] from the Plex Team!

Features:

* Depends on what you need. For i386 it's only avahi-utils and avahi-daemon, for amd64 they also depend on ia32-libs since there is no native 64bit build yet.
* Upstart script. You can start, stop and restart the plexmediaserver with upstart.
* `/etc/default/plexmediaserver` contains configuration of the package. Check the default file for what configuration values can be set.
* Automatically creates a `plex` user that is running the server, which is good for scary security problems.
* New updates will come directly from the Plex APT source!

If you have been running PMS before with the old .tar.bz2 package you might need to manually migrate your data to the new paths. Please check my [forum post][3] for more information on how to do that.

Hope you will enjoy the new packages, please report bugs and feature requests on the [Plex Media Server for Linux forum][4]

[1]:http://tobiashieta.com/2011/07/26/plex-media-server-on-ubuntu
[2]:http://www.plexapp.com/linux/linux-pms-download.php
[3]:http://forums.plexapp.com/index.php/topic/28626-ubuntu-migrating-pms-data-to-the-new-package/
[4]:http://forums.plexapp.com/index.php/forum/85-plex-media-server-for-linux/
