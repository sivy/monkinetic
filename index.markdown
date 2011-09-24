---
layout: default
title: monkinetic weblog
---
#[{{site.name}}]({{site.url}})

{% for post in site.posts limit:1 %}
## {{ post.title }}
<div class="content">
	{{ post.content }}
	<p class='meta'>published <a href="{{ post.url }}">{{ post.date | date: "%Y/%m/%d" }}</a></p>
</div>
{% endfor %}

## Older Posts

{% for post in site.posts limit:100 %}
* <a href="{{ post.url }}">{{ post.title }}</a> | {{ post.date | date: "%Y/%m/%d" }}
{% endfor %}
