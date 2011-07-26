---
layout: post
title: What ever happened to XMMS.ORG?
date: 2010-04-28T16:40:00+00:00
---

*note, this is a old archived post, but since it's linked from some places I ported it over to my new site*

Anyone that have tried to email me (or any other email address) on the xmms.org address the last couple of weeks have received a nice error message saying that the address doesn't exist anymore, what's up with that? Short answer, the xmms.org domain was sold to a cyber-squatter. To explain how that happened I think we need to go for a quick XMMS history lesson.

XMMS was originally started as X11AMP, it was a clone of the WinAMP player. It later changed it's name to XMMS (X11 Multi Media System) when someone claimed that they owned the AMP trademark. About the same time a company called 4Front started to sponsor development of XMMS, this effectively put some of the main developers for XMMS on 4Front's payroll but copyright and license for XMMS was keept intact.

If you don't remember 4Front it was the company behind OSS (Open Sound System). The idea was to gain PR with XMMS in order to sell more of the commercial OSS licenses. During the dotcom era this seemed to work just fine and everyone was happy.

Over the years XMMS development stagnated to a very slow pace and 4Front didn't really make that much noise either.

That all changed a couple of weeks ago when the XMMS.org webserver admin received a email from 4Front CEO Dev Mazumdar, stating that he had sold the domain to a company and wanted a full webpage dump. Needless to say, that was pretty surprising! We immediately responded that we where interested in taking over the domain instead, since a lot of us where still actively using it for email and personal webspace. The reply was "We invested a lot of money into XMMS development", which is an interesting reply on all accounts. Quickly after that the domain was moved and we barely had time to move all our accounts away from the addresses, Dev told us that we should just use xmms.se and xmms2.org instead.

This is where it turns even more strange. In another mail conversation with Dev, he stated that the company buying the domain also wanted to pay 4Front for restarting development of XMMS. Interesting, what company would like to resurrect a very old code base that is mostly replaced by other players these days?

So we decided to have a  look into the company that bought the domain to figure out why they would like to buy the domain and restart the development of XMMS. The domain had moved but the contact information for the domain wasn't changed back then (it is now), but by going directly to the IP address that xmms.org now pointed (200.35.148.194) someone found goftp.com and from there we could extract a list of domains that was embedded in the goftp installer.

* www.answermefast.com
* www.answermetrue.com
* www.965flowers.com
* www.answerfever.com
* www.accidentadvisors.ca
* www.mbquote.ca
* www.awesomeanswer.com
* www.propertysold.ca
* www.extremecow.com
* www.askmefast.com
* www.goftp.com
* www.zinf.org

That list of domains are pretty interesting, note the zinf.org in the end, it's another open source media player, that has been mostly abandoned as well. It took us a while, but finally we spotted something odd on both goftp.com and zinf.org, linked from the first page there is a new button called "Answers" if you follow it you end up on http://www.zinf.org/qna, I bet the original zinf site didn't have that on there. So far nothing like this has been added to the xmms.org site, but I guess it's just a matter of time. Buying these sites just seems to be a way to drive his ad revenue.

Recent digging also shows that the same guy have registered xmms3.org and xmms3.com as well!

It seems like the guy behind all these sites is Doug Collins (which we now can see as the contact info on xmms.org, before that info was available we where able to find his name via the 9and that he goes by the nick doug99 and doug99collins. A quick search on Google shows his dedication to Open Source.

I must say that I don't really believe that this company will restart development of XMMS or pay any money to 4Front for continue the development. I really hope that Dev lied to us directly about it, otherwise he is pretty dense.

In light of all this some of our community members decided to get a new domain for the old XMMS webpage. So they registered http://www.devmazumdar.com/ in tribute. You can also find the webpage at http://legacy.xmms2.org/

## comments on the original post ##

*For postierity I have saved the original comments here*

#### Doug Collins ####
*I do have commercial interests in xmms.org its true. But if I would love to invite the community to use email, do updates, whatever you want. I tried to work with Dev to connect with the community to keep things stable but from the article I now understand that the community was unaware of this shift in ownership. I would love to talk with all of you to re-establish xmms.org. Yes I do want to have an answers section, but the rest of the site can go on as per usual. Email addresses, the web page, etc. I do want to put some $ into developing xmm3 and have been in discussions with Dev as to what that could look like. Resurrecting xmms is definitely in my plans. Anyone have any ideas send them my way. My email is doug99collins [the normal symbol that goes here] gmail.com*

*PS. I also bought up zinf.org for the same reason. I want to use either or both of these brands to make a new media player that leads the market not follows. I know there are other projects out there but we can re-invent xmms. Well I am rambling but hoping there are those that would like to see xmms revived as well. I would also be happy to see xmms2 content on xmms.org if somebody wants to do that. I am open to suggestions.*

#### Tobias Hieta ####
*Hello Doug*

*Thanks for taking your time to answer my blog post and thanks for offering email and content hosted on xmms.org. But we are not interested in this, we don’t really like to be associated with your answers section and have no interest in developing any new software together with you or 4Front. My suggestion is that you return xmms.org to us, since we have put a lot of work and effort into the community and the code. We don’t have a registered trademark for XMMS but I think it’s fair to say that we have more invested in the community and software than you have.*

*If you are not willing to return the xmms.org domain to us, we hope that you can respect our wishes and remove the information about the XMMS player there and just forward that to xmms2.org and legacy.xmms2.org. We will inform our community and the distributions that xmms.org is no longer owned by the community and that we can’t offer any support or guarantees that xmms.org will not contain any harmful code in the future.*

*Hope you understand that we are not happy about this situation and that we would like to distance ourself from your domain. *