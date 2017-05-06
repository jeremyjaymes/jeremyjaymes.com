---
title: Swapping Sidebars in a Genesis Template
description: "How to replace Genesis default sidebars and use custom sidebars without a plugin."
author: Jeremy
type: post
date: 2014-10-17T16:34:23+00:00
url: /swapping-sidebars-genesis-template/
dsq_thread_id:
  - 3127318151
dsq_needs_sync:
  - 1
categories:
  - Code

---
If you do any sort of complex development using the Genesis framework you will likely find yourself requiring additional sidebars outside of the packaged primary and secondary sidebars. Typically I&#8217;d recommend using the [Genesis Simple Sidebars][1] plugin.

But for some that might seem like overkill when you only require a single additional widget area on a single page template, and for that purpose I&#8217;d agree. This is how I handle swapping out sidebars in a Genesis child theme.

**Context:**
  
For the project that I&#8217;ll be using as an example I had a custom post type that required a custom post template to display the single posts for this post type. On these pages I needed a new widget area that would accommodate several widgets specific to the posts.

**Step 1**
  
First thing you&#8217;ll want to do is register your new widget area, pretty basic knowledge required. For example:

<script src="https://gist.github.com/jeremyjaymes/2cfe9924e4166e351a99.js"></script>

**Step 2**
  
The following two functions are added to my child theme&#8217;s custom single template, e.g. **single-custom_post.php**. Keep in mind that my custom post type required a custom template for other reasons so I am adding these functions directly to the template. This isn&#8217;t necessarily required as these functions could be used in your functions.php with some modification.

Please read the code comments for an explanation of each.

<script src="https://gist.github.com/jeremyjaymes/3de69a2ebbd82c924ca3.js"></script>

You should now have a fully functional custom widget area on your single-post_type.php custom template. 

And like I said, for anything more complex I&#8217;d definitely recommend that you check out the plugin I mentioned above.

 [1]: https://wordpress.org/plugins/genesis-simple-sidebars/