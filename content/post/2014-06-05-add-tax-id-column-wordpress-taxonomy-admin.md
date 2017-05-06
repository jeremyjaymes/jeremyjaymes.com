---
title: Add Tax ID Column to WordPress Taxonomy Admin Columns
author: Jeremy
type: post
date: 2014-06-05T21:30:21+00:00
url: /add-tax-id-column-wordpress-taxonomy-admin/
categories:
  - Code

---
**Problem:** In a recent WordPress project we needed to provide an easy way for the site manager to locate the numerical ID associated with a custom taxonomy.

As WordPress developers we have a handful of methods at our disposal to recover that ID  but those options are not _always_ that easy to explain to our clients.

So let&#8217;s make it easier.

**Solution:** Add the Tax ID as a custom column in the WordPress admin.

<script src="https://gist.github.com/jeremyjaymes/3e418a883c94360d21ec.js"></script>

In the first function we set up our new column with the header &#8220;ID&#8221;. We decided to filter the entire default list since you&#8217;ll notice that we also omitted the standard description column. For our particular use case we would not be using taxonomy descriptions so we decided to reduce the column clutter and remove it all together.

<img class="alignright wp-image-1671 size-medium" src="/images/2014/06/tax-id-column-168x300.png" alt="tax-id-column" width="168" height="300" /> 

In the second function we go ahead and return our taxonomy ID for use in the new custom column.

Finally we use the appropriate hooks for adding and managing our custom columns.

The sortable column may not be useful as it just sorts the taxonomies by ID but I&#8217;ve included it here none the less.

In the end you end up with something like you see in the screenshot on the right, a much easier method for retrieving the ID associated with individual custom taxonomies.