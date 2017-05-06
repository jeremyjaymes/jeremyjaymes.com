---
title: 'Scripts, Performance & WordPress Themes'
author: Jeremy
type: post
date: 2015-05-12T14:35:47+00:00
url: /scripts-performance-wordpress-themes/
description: "Simple tips to optimize your WordPress theme code by paing attention to script loading."
categories:
  - Code

---
WordPress performance and optimization starts at the code. Long before I consider caching, and even before I think about things like image optimization, I&#8217;m looking at the code behind the site. One of the areas I most often see &#8220;under optimized&#8221; is in script and style loading and it shouldn&#8217;t be since the time investment to optimize is minimal. 

Here are a couple of very, to moderately easy methods for ensuring that your scripts and styles are being served in a way that allows you to squeeze a little extra performance out of your theme. (In some cases a lot extra.) 

<!--more-->

## Minify and combine where possible.

Tools like Grunt and Gulp make it extremely easy to maintain an uncompressed development copy of your scripts while loading a minified version for optimal performance. 

Here&#8217;s an example Gruntfile that watches both the main.css file as well as the main.js file for changes and creates a minified version with the help of grunt-contrib-cssmin and grunt-contrib-uglify. 

<script src="https://gist.github.com/jeremyjaymes/8b6a9fd5dcd568a3c875.js"></script>

If you are using 3rd party libraries in your theme or plugin always be sure to grab the minified version. If for some reason it&#8217;s not provided with the package, consider minifying it yourself. Again you can use Grunt if that&#8217;s part of your workflow, or try one of the many online [compressors][1].

_Keep in mind that if you are developing a theme with the intention that it will be submitted to WordPress.org for review, you will need to provide an uncompressed version of all scripts and styles._

## Be mindful of where you are loading.

I see this issue a lot&#8230;  Use conditionals, use templates tags, use the appropriate hooks, custom code it (shouldn&#8217;t need to ), but make sure that you&#8217;re only enqueueing scripts where they are needed.

For example, I recently had a look at a theme that required a handful of scripts and styles be loaded on it&#8217;s custom options page. The developer correctly targeted the admin dashboard but could have taken it one step further by ensuring that the scripts where being enqueued on the options page only. Instead they were being loaded on every page which results in an entirely avoidable performance hit for the dashboard.

There&#8217;s a great, albeit brief overview in the codex <a href="https://codex.wordpress.org/Plugin_API/Action_Reference/admin_enqueue_scripts#Example:_Target_a_Specific_Admin_Page" target="_blank">here</a> with a more in depth tutorial <a href="https://pippinsplugins.com/loading-scripts-correctly-in-the-wordpress-admin/" target="_blank">here</a>.

## Look to Core

WordPress core comes with a few dozen pre-packaged scripts and popular libraries; I suggest you look <a href="https://codex.wordpress.org/Function_Reference/wp_enqueue_script#Default_Scripts_Included_and_Registered_by_WordPress" target="_blank">there</a> before considering a 3rd party library. You won&#8217;t always find what you need but you&#8217;d be surprise how often you will, especially when it comes to providing functionality in the dashboard.

**Off topic:** Some people will scream, _replace core libraries with a CDN version for performance_. I&#8217;m not going to express my opinion one way or the other. But, should you decide to replace core libraries (e.g. jQuery) be mindful of how you&#8217;re doing it as well as how it will be maintained. Replacing core libraries can and _will_ break things if not properly maintained. 

## Delay Loading

CSS will in most cases need to be loaded in the head of the page document (but not [always][2]), that is not however always the case with js files. Test and consider delaying the load of javascript until the bulk of the page renders by enqueueing your scripts in the footer by setting `$in_footer` to true.

e.g. 
<script src="https://gist.github.com/jeremyjaymes/4ae8f740b02d9373c20f.js"></script>

## Clean up after yourself.

If you started with my-fancy-navigation.js and, after developing for a while decide that my-other-fancy-navigation.js is going to do a job better&hellip; job, don&#8217;t forget to remove the first. 

This seems obvious but I&#8217;ve seen it a number of times in taking over a project. Spend an hour trying to understand why abc.js is being loaded to the page only to find out that it was replaced by xyz.js at some point but never removed. (Also, why not just remove the file all together. No need to ship the project with code remnants.)

## Be Tidy

Kind of like the above. When you&#8217;re writing your css be tidy. Remove unused or unnecessary classes, things change, it&#8217;s going to happen. Try to reuse rather than reinvent, consider reusable classes where possible. This takes a little more thinking about the project as a whole but it&#8217;s worth the extra effort.

Why? Because this will not only lead to more maintainable code but it will also (hopefully) cut down on file size allowing you to serve a smaller and speedier website. Every little bit counts.

## That&#8217;s a wrap.

A few tips for your consideration when you start the next WordPress theme or plugin project.

 [1]: http://jscompress.com/
 [2]: https://www.google.com/search?q=critical+css