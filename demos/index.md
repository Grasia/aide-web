---
layout: default
title: Demos
group: main_menu
position: 3
---
<h2 class="title">Demos</h2>
<div class="post" >
	
	{% for post in site.categories.demos %}
<p>
	<div class="entry-demo">
		<div class="desc-demo">
		{{ post.date | date_to_string }}</span> &raquo; <a href="{{ site.url }}{{ post.url }}"><strong>{{ post.title }}</strong></a><br/>{{ post.content | strip_html | truncatewords: 50 | strip_html }} <a href="{{ site.url }}{{ post.url }}">more</a>
		</div>

		{% if post.videothumb %}
		<div class="image-demo" align="center">
		<img src="{{ post.videothumb }}" width="400" height="200"/>
		</div>
		{% endif %}
		<div class="clear"></div>
	</div>
</p>

{% endfor %}
</div>


