---
date: "2017-05-10T21:46:23-05:00"
title: "Migrating from WordPress to a Static Site with Hugo on AWS"
description: "Migrating from WordPress to Hugo and hosting it all on Amazon Web Services"
url: /static-site-with-hugo-on-aws
author: Jeremy
draft: true
categories: ["Code"]

---

When it comes to content creation, I've been a pretty dedicated WordPress user (and devloper), for the better part of the last 10 years. Heck, I've built my business and made my living working with WordPress - I owe a lot to WordPress.

### And so, I decided to move everything to Hugo&hellip;
After a lot of procrastanation, if I wanted to do more with this site than just let it collect dust I was going to have to switch to a content creation tool that fit better with my daily workflow.

Being able to quickly change a few lines of code, work on a post draft, compile and review locally with live-reload, and publish with a simple git push is pretty darn appealing for someone that spends about 75% of his work week back and forth between Sublime Text and iTerm.

So I went on the hunt. I've built a few client projects using Jekyll in the past so I naturally started there first. Dipped my foot in the water with a few others but eventually landed on Hugo. It was super easy to get started with and if nothing else the speed with which it compiles/builds your site is by far the quickest of the bunch (in my experience).

### First Step
First thing I needed to do was get my existing content out of WordPress. That was actually pretty easy with the help of (insert plugin link). From there it was a matter of doing a tiny bit of clean up - organizing the front matter, reimplementing any embeded Gists, and reconfiguring some meta information. (Yeah the plugin seems to strip embeded js which was kind of a bummer but could have been worse so I'll take it.)