PodcastRSS
=======

What is this?
----------
I wanted to publish a podcast and have hands-on control over the rss feed, which Feedburner doesn't let me do. I also wanted to buff up my Rails skills and try out a heroku deployment.

The plan right now is very simple: quickly create items that will be added to the rss feed by supplying a name, description, and source file URL. All the iTunes RSS tags will be included in the feed.

Current Status
------------
Not done yet. Still usable though. Just configure the index.rss.erb file by hand to set the top level metadata for your feed.

TODO
----
* Sort items by time posted
* Add configuration options
* Add XML entity escaping for special characters
* Add user auth to prevent the feed from being publicly editable
