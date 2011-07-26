---
layout: post
title: Zimbra, CardDAV and OS X Lion
date: 2011-07-05T20:52:32+00:00
---

When it was announced that Snow Leopard would ship with Microsoft Exchange support I was really happy, because I thought that it would mean that I could sync Mail, Contacts and Calendar with Zimbra directly.

That turned out to not be the case. Apple implemented [OWA][owa] (Outlook Web Access) instead of ActiveSync in Snow Leopard and Zimbra only supports ActiveSync.

But there was hope! Mail was supported via IMAP as it has been for ages and Calendars was supported via CalDAV in iCal. The missing component would be Contacts. For ages Zimbra users on the Mac has been stuck in the Zimbra connector software that syncs Contacts between Zimbra and the AddressBook, unfortunately this software is not very good. The good news was that Snow Leopard would ship with [CardDAV][wiki-carddav] support in AddressBook, which would solve this problem!

When Snow Leopard finally shipped the CardDAV support was very broken together with [Zimbra][zimbrabt]. A couple of revisions of SL later and it worked for some people, but not for installations where there where multiple Zimbra domains on the same machine. And it usualy involved a lot of magic in [how to enter the URL][ZimbraWikiCD].

Last week I installed [OS X Lion][lion] and finally the CardDAV support has been fixed. I have tried it against Zimbra version 6 and it works flawlessly. Happy times!

Configuration is very straight forward. Open up *Mail, Contacts and Calendar* in *System Preferences*.

Click the litte *Add Account* button and select *Other*

Select *CardDAV*

And fill in your information.

That's it! Now you can access your Contacts from Zimbra carefree on your new Shiny OS X Lion machine! Thanks Apple! 


[wiki-carddav]: http://en.wikipedia.org/wiki/CardDAV
[lion]: http://www.apple.com/macosx/
[owa]: http://en.wikipedia.org/wiki/Outlook_Web_App
[zimbrabt]: http://bugzilla.zimbra.com/buglist.cgi?query_format=advanced&short_desc_type=allwordssubstr&short_desc=carddav&long_desc_type=anywordssubstr&long_desc=&bug_file_loc_type=allwordssubstr&bug_file_loc=&bug_status=UNCONFIRMED&bug_status=NEW&bug_status=ASSIGNED&bug_status=REOPENED&bug_status=RESOLVED&bug_status=VERIFIED&bug_status=CLOSED&emailassigned_to1=1&emailtype1=substring&email1=&emailassigned_to2=1&emailreporter2=1&emailqa_contact2=1&emailcc2=1&emailtype2=substring&email2=&bugidtype=include&bug_id=&votes=&chfieldfrom=&chfieldto=Now&chfieldvalue=&cmdtype=doit&order=Reuse+same+sort+as+last+time&field0-0-0=noop&type0-0-0=noop&value0-0-0=
[ZimbraWikiCD]:http://wiki.zimbra.com/wiki/CardDAV
