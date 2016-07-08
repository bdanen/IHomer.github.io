---
layout: default
title: Wat wij doen
permalink: /work/
---
# Wat wij doen
Hier komt een algemene intro&hellip;

{% assign teams = site.categories.work | sort: 'title' %}
{% for team in teams %}
## {{ team.title }}
{{ team.excerpt | remove: '<p>' | remove: '</p>' }}

[Meer over {{ team.title }}]({{ team.url | prepend: site.baseurl }})
{% endfor %}
