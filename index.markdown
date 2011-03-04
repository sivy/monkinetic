---
layout: default
title: monkinetic weblog
---
#[{{site.name}}]({{site.url}})

{% for post in site.posts limit:10 %}
## {{ post.title }}
<div class="content">
	{{ post.content }}
	<p class='meta'>published <a href="{{ post.url }}">{{ post.date | date: "%Y/%m/%d" }}</a></p>
</div>
{% endfor %}
