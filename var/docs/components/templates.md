### Templates

> Atom implements it's own templating engine, but we did stick to similir concepts compared to some popular ones out there.

For example, you can:

```smarty
# basic variable
{{ variable }}
```

```smarty
# from a dictionary
{{ variable.key }}
```

```smarty
# call on service
{{ app.exampleService.exampleMethod }}
```

```smarty
# iterate dictionary
{% for key,value in dictionary %}
	{{ value }}
{% endfor %}
```

```smarty
# iterate list
{% for value in somelist %}
	{{ value }}
{% endfor %}
```

```smarty
# if conditions
{% if x == "y" %} # x is a variable set to the template
	Something
{% endif %}
```

```smarty
# more complex loop and if condition

{% for value in somelist %}
	{% if app.env.getEnvName == "dev" and some_variable == value %}
		{{ value }}
	{% endif %}
{% endfor %}
```

```smarty
# nested for loops
{% for somedict in some_list %}
	{% for key, value in somedict %}
		{{ somedict[key] }} # yes is the same as the value, but shows the usage variable subkeys
	{% endfor %}
{% endfor %}
```

> More is there, and more is to come, and requests are welcome!