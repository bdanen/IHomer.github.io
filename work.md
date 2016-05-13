---
layout: default
title: Wat wij doen
permalink: /work/
---
# Wat wij doen
Hier komt een algemene intro&hellip;

{% for post in site.categories.work %}
## {{ post.title }}
{{ post.excerpt | remove: '<p>' | remove: '</p>' }}

[Meer over {{ post.title }}]({{ post.url | prepend: site.baseurl }})
{% endfor %}
