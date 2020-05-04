<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <!-- <h1>{{ 'ini buah ...'|upper }}</h1> -->
    <!-- {# 'ini comment' #}
    {{ 'ini bukan comment' }} -->
    <!-- FOR LOOP-->
    <!-- <h1>Buahs</h1>
    <ul>
        {% for buah in buahs %}
            <li>
                {{ buah.nama|e }}
                <br>
                {{buah.keterangan|upper}}
            </li>
        {% endfor %}
    </ul> -->

    <!--FOR LOOP WITH ELSE-->
    <!-- <h4>FOR LOOP WITH ELSE</h4>
    <ul>​
        {% for index, buah in buahs %}​
            {% if index is odd %}​
            <li> {{ buah.nama|upper }} </li>​
            {% else %}​
            <li> {{ buah.nama|e }} </li>​
            {% endif %}​
        {% endfor %}​
    </ul>​ -->

    <!--FOR LOOP WITH CONTINUE/BREAK-->
    <!-- <h4>FOR LOOP WITH CONTINUE/BREAK</h4>
    {% for index, buah in buahs %}
    {% if index is even %}
      {%  continue %}
    {% endif %}
    Nama: {{ buah.nama }} Index: {{ index }}<br>  
    {% endfor %} -->

    <!-- <h1>If</h1>
    <ul>
        {% for buah in buahs %}
            {% if buah.jenis is sameas('Citrus') %}
            <li>
                {{ buah.id ~ ' = ' ~ buah.nama }}

            </li>
            {% endif %}
        {% endfor %}
    </ul> -->

    <!--SWITCH-->
    <!-- <h4>SWITCH</h4>
    {% set value = 2 %}

    {%switch value %}
    {% case 1 %}
        "number" is less than 2<br>
        {% break %}
    {% case 2 %}
        "number" is less than 3 but more than 1 <br>
        {% break %}
    {% case 3 %}
        "number" is 3 <br>
        {% break %}
    {% default %}
        "number" is {{ value }} <br>
    {% endswitch %} -->

   <!-- <h4>LOOP INDEX</h4>
    {% for buah in buahs %}
    {% if loop.first %}
        <table>
            <tr>
                <th>#</th>
                <th>Id</th>
                <th>Name</th>
            </tr>
    {% endif %}
            <tr>
                <td>{{ loop.index }}</td>
                <td>{{ buah.id }}</td>
                <td>{{ buah.nama }}</td>
            </tr>
    {% if loop.last %}
        </table>
    {% endif %}
    {% endfor %} -->


<h4>MACROS</h4>
{% macro make_ul(lists) %}
    <ul>
        {% for list in lists %}
            <li>
                {{ list }}
            </li>
        {% endfor %}
    </ul>
{% endmacro %}

{% set cookies = ['Walnut Cookie', 'Milk Cookie', 'Spinach Cookie', 'Cocoa Cookie'] %}
{% set pets = ['Dog', 'Cat', 'Fish', 'Hamster', 'Garry'] %}

{# Print list of cookies #}
{{ make_ul(cookies) }}

<div>This is the content</div>

{# Print List of pets #}
{{ make_ul(pets) }}


</body>
</html>