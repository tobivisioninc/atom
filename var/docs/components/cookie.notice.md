### Cookie Notice

> With privacy being an ongoing discussion, it is always best to let visitors know they can, and likely will be tracked somehow. For convinience we included a simple template with full functionality. And it uses a `config param` for displaying your desired message. All you need to do is style it with CSS.

Just include this in your template (`*.tpl`) file's `<body>`:
```smarty
{% if app.serviceExists('cookieNotice') %}
    {{ app.cookieNotice.render }}
{% endif %}
```
```yaml 
# app/config/parameters_[ENV].yml
cookieText: 'This site uses cookies, would you accept?'
```