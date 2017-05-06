---
title: Managing Multiple SSH Keys for Git Push On WP Engine
author: Jeremy
type: post
date: 2017-01-06T13:18:22+00:00
url: /managing-multiple-ssh-keys-git-push-wp-engine/
description: "Because sometimes you need to manage multipe Git Push users on WP Engine using ssh config."
categories: ["Code"]

---
If you ever find yourself in a situation where you need to manage multiple &#8220;Git Push&#8221; users, i.e. keys on the WP Engine platform, here&#8217;s a handy little trick to make things more manageable on your local system (Instructions for Mac based system, adjust as necessary.).

`$ cd ~/.ssh/` &#8211; Find and navigate to your ssh directory ($ indicates prompt)
  
`$vim config` &#8211; open/edit your config file

Add an entry similar to the following:
  
```
Host mywpeuser  
Hostname git.wpengine.com  
PreferredAuthentications publickey
IdentityFile ~/.ssh/key_file
IdentitiesOnly yes
```

Repeat that step for additional users/keys replacing Host and IdentityFile with the appropriate info where host indicates an arbitrary name that helps to identify the host/user and IdentityFile indicates the path to your ssh key.

Next you&#8217;ll want to add or re-add your remote to the local repo like this:
  
`$ git add remote production mywpeuser:production/install-name.git.`

This will allow you to push to multiple git remotes across different WPE accounts using different keys while avoiding any conflicts that may occur if you follow the instructions in the WPE dashboard verbatim, i.e. 

```
$git add remote production git@git.wpengine.com:production/install.git
```

Note: The instructions in WPE are not incorrect by any means they might just not work perfectly depending on your set up and considering the potential for multiple keys in use. Also note that the above applies in any case where you might find yourself needing to manage multiple identities on a single system.

If that all makes sense to you and helps then this is probably as far as you need to read. If however you&#8217;re interested in why I&#8217;m writing this then read on.

## Why am I worrying about multiple keys on WPE?

That&#8217;s a longer and less exciting story that ultimately boils down to my weirdness about naming conventions and how things appear to a client.

**On a related note.** If there is one feature I&#8217;d like to see on WPE it would be better key management for the end user. If adding my key to the system makes it globally available then I&#8217;d personally like to be able to have a central user management feature that would allow me to remove said key from an install regardless of whether or not I have continued access to that install.

Anyway, hope the above helps.