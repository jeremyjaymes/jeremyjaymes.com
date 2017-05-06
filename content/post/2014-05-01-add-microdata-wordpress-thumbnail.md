---
title: Add Microdata to WordPress Thumbnails
author: Jeremy
type: post
date: 2014-05-01T14:09:28+00:00
url: /add-microdata-wordpress-thumbnail/
dsq_thread_id:
  - 3076881861
dsq_needs_sync:
  - 1
categories:
  - Code

---
In a recent custom WordPress build I needed to add microdata to all images output by the\_post\_thumbnail inside of a custom template and where a catch all function did not make sense. 

Specifically I needed to add itemtype=&#8221;photo&#8221; to thumbnail images associated with a &#8220;Place&#8221; in a custom place listings template but these are implementation specific details that will vary based on your needs. 

As it turns out, adding microdata to WordPress thumbnail images using the\_post\_thumbnail function is actually quite easy. You can accomplish this by using the $attr parameter of [the\_post\_thumbnail function][1].

In the example below &#8220;image-size&#8221; is the required thumbnail size parameter and itemprop is the microdata attribute pair specified in the $attr parameter.

Again, these values will depend on your requirements.

<script src="https://gist.github.com/jeremyjaymes/418003f5849719e17fae.js"></script>


This is a very simple, no frills implementation but it get&#8217;s the job done.

 [1]: http://codex.wordpress.org/Function_Reference/the_post_thumbnail