---
# You don't need to edit this file, it's empty on purpose.
# Edit theme's home layout instead if you wanna make some changes
# See: https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: page
regenerate: true
title: My posts in reverse chronological order
permalink: post-index.html
---

<p>My posts in reverse chronological order</p>
<ul class="list-group">
<br />
{% for post in site.posts %}
    <a class="list-item" href="{{post.url}}">
        <li class="list-group-item">
            <p class="posttitle">{{post.title}}</p>
            <p class="subtitle">{{ post.date | date_to_string }}
            {% if post.last-updated %}
                (Last updated {{ post.last-updated | date_to_string }})
            {% endif %}
            </p>
        </li>
    </a>
{% endfor %}
</ul>
