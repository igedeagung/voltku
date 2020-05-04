{# templates/base.volt #}
<!DOCTYPE html>
<html>
    <head>
        {% block head %}
            <link rel='stylesheet' href='style.css' />
        {% endblock %}

        <title>{% block title %}{% endblock %} - My Webpage</title>
    </head>

    <body>
    <div class="container">{{ flashSession.output() }}</div>
        <div id='content'>{% block content %}{% endblock %}</div>

        <div id='footer'>
            {% block footer %}
                &copy; Copyright 2012-present. 
                All rights reserved.
            {% endblock %}
        </div>
    </body>
</html>


