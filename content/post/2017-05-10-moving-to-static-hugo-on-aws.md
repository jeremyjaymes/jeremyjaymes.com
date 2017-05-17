---
date: "2017-05-10T21:46:23-05:00"
title: "Migrating from WordPress to a Static Site with Hugo on AWS"
description: "Migrating from WordPress to Hugo and hosting it all on Amazon Web Services"
url: /static-site-with-hugo-on-aws
author: Jeremy
categories: ["Code"]

---

When it comes to content creation, I've been a pretty dedicated WordPress user (and devloper), for the better part of the last 10 years. Heck, I've built a good chunk of my business around WordPress - I owe a lot to WordPress.

I've also always advocated the right tool for the job. I don't blindly lead people to WordPress just because.

So when I started to realize that WordPress had become far more than I needed or wanted to maintain for my own purposes I decided to follow my own advice.

### And so, I decided to move everything to Hugo&hellip;
If I was going to do anything with this site other than let it act as an archive for content I wrote years ago, I was going to need something that better suited my nerdy developer workday.

### Requirements
I spend about 75% of my work week between Sublime Text and iTerm. If you can give me something that keeps me where I'm comfortable, I'm sold. 

Quickly change a few lines of code, compile locally on the fly, work on a post draft and publish with a simple git push. No syncing databases, environments, or plugin versions to make sure my local is still synced with production. That's appealing.

### What else...
- I'm not interested in a database. I'm in and out of databases all day just give me something simple. Flat, static files is all I need.
- I don't want to check for plugin updates anymore.
- In fact, I don't even want to login to a dashboard.
- I'd really like to simplify and modernize my hosting stack.
- And while I'm at it I'd like to modernize and automate deployments.
- And hey, why not toss a cdn into the mix.
- Oh and ultimately I'd like a little more control over dependencies.

### Finding the right fit
I've built a few client projects using Jekyll and a handful of other static site systems so I naturally started there first. Had a look at few more in between, but eventually landed on Hugo. 

Hugo was easy to pick up and run with, met all of the requirements, and the build speed is crazy fast.

So Hugo it is.

### First Step
By the time I made the decision to go with Hugo I had already got my hands dirty. I set up a couple of test sites. I also read a fair bit of documentation and other Hugo related content.

Next up was the process of freeing my existing content from WordPress. Having attempted and scuttled a few previous migrations due to clunky content extraction, I feared this would be my undoing, but I was determined.

To my delight, it was easy with the help of the [WordPress to Hugo Exporter](https://github.com/SchumacherFM/wordpress-to-hugo-exporter).

There was and is a tiny bit of clean up required. The front matter needed some adjusting and I had to reimplement any embeded Gists. For the most part however, I was able to reposition the extracted content in Hugo with minimal effort.

### Prepare the theme
Hugo has a number of well designed themes available, a few of which I tinkered with during the decision process. I tried hard to convice myself to choose one. Avoid the urge, don't get caught up in the code, it's about the content. 

But, I couldn't resist, had to get my hands dirty. I like to know something about the system I'm working with and usually understanding the templating system is a pretty good way to do that.

And here again, Hugo is extremely flexible and enjoyable to work with.

By the time it was all said and done I had what I feel like is a pretty nice site with a system that is perfectly tailored to my daily workflow.

### Coming up next&hellip;
Next up I'll try to dive a bit deeper into my Hugo experience. Talk a bit about automated deployments using Github and Circle CI. And cover the AWS setup that hosts this new site. 