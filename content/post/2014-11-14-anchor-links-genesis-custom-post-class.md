---
title: Anchor Links and Hashed Urls with Genesis Custom Post Class
description: "Create anchor links in Genesis using custom post class and Creep.js"
author: Jeremy
type: post
date: 2014-11-14T18:39:28+00:00
url: /anchor-links-genesis-custom-post-class/
categories:
  - Code

---
Here is a simple way to use the Genesis custom post class field to set up a nice little anchor link and hashed url.

**Background**
  
Recently I was involved in a project where the about (team) page required a nice smooth scroll that would link an employee&#8217;s headshot to an anchored position further down the page where more info about the employee could be found. We also wanted to keep in place a nice human readable hash so that the bio could be linked to directly (for those of you asking why we&#8217;re not using the_ID() to accomplish this). 

With a few anchor links and a little jQuery this is typically pretty easy to pull off but it gets a little more challenging when you have consider the loop and intend to keep things dynamic.

After exploring Genesis and racking my brain for a bit I came up with a pretty decent solution.

**The Solution**
  
Employees are a custom post type, Genesis layout enabled, employees entered individually.

For each employee I enter a unique identifier in the Layout Settings &#8211; Custom Post Class. Could be the person&#8217;s last name or maybe their title, whatever works. Example &#8220;smith&#8221;.

With the class assigned above now accessible from within the loop it&#8217;s just a matter of using it to set up your anchors.

Usage will probably vary so I won&#8217;t go into detail with the code but here&#8217;s the general scenario.

For the page we created a custom template. In that template we have two loops. The first loop sets up a grid of all employees, headshot, name and title. Inside that loop we create the anchor link by echoing the custom post class and adding a hash, see step 1.

Further down the page we have the second loop. Single column, each employee listed out with additional information like their bio, a short video etc. Here we do the same thing only this time we echo out the custom post class as a div id wrapping each employee.

Code example truncated for brevity:

<script src="https://gist.github.com/jeremyjaymes/59fbb68397a6353de9ad.js"></script>

With that you have your anchor links set up!

Next I of course invoked some jquery to set up my smooth scroll, I prefer http://jpederson.com/Creep.js/, and we&#8217;re good to go.