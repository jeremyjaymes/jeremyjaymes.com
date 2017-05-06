---
title: Display Attachment File Type in WordPress Theme
author: Jeremy
type: post
date: 2014-06-09T21:25:20+00:00
url: /display-attachment-file-type-wordpress-theme/
dsq_thread_id:
  - 3005651956
dsq_needs_sync:
  - 1
categories:
  - Code

---
Let&#8217;s say we have a list of downloadable items listed on a post or page, case studies for example. To help the end user understand what they will be downloading we&#8217;d like to display a file type adjacent to a download link.

e.g. [Click to Download][1] | PDF

**Background:** In this particular example our Case Studies are going to be a custom post type and the file attachments (downloads) are going to be added to each individual custom post type using custom fields. These custom fields are generated using the excellent <a href="https://github.com/WebDevStudios/Custom-Metaboxes-and-Fields-for-WordPress" target="_blank">Custom Metaboxes and Fields for WordPress</a>.

This bit of information is important because by using Custom Metaboxes and Fields we are able to easily retrieve the **attachment ID**, which is what we really need to make this work. (see <a href="https://github.com/WebDevStudios/Custom-Metaboxes-and-Fields-for-WordPress/wiki/Field-Types#file" target="_blank">this example</a>)

So, keep that in mind, the following can be used as long as you have that attachment ID.

<script src="https://gist.github.com/jeremyjaymes/9ee1505f346d15578bb6.js"></script>

**Explanation:** The above assumes that we&#8217;re in a loop of some sort and have already retrieved our attachment id, e.g. `$file_id = get_post_meta( get_the_ID(), '_my_download_id', 1)`.

Then we use wp\_get\_attachment\_url( $file\_id ); to get the url for our attachment. We need this to generate the actual download link but we also want to save it as a variable so that we can use it in the wp\_check\_filetype( $file\_url ) function. wp\_check_filetype() returns an array of values containing the extension and mime type. 

We then use the $filetype variable to output the extension with `$filetype['ext']`.

I might expand on this a bit more in the future to explain in detail how this was used but there should be enough there to be potentially useful.

 [1]: #