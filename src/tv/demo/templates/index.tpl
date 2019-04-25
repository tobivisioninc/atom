{% extends tv_core:base %}
{% block head %}
    <title>{% block title %}Atom - TVPY Example{% endblock %}</title>

    {% block meta %}
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    {% endblock %}
  
    {% block css %}
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <!--link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" /-->
        <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.8.1/css/all.css" />
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.css" />
        {% cssasset tv_core:atom %}
    {% endblock %}

    {% block javascripts %}
        {% jsasset tv_core:jquery.min %}
        <!--script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script-->
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        {% jsasset tv_core:atom %}
        <script src="//cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.js"></script>
        {% jsasset tv_users:users %}
    {% endblock %}

{% endblock %}

{% block navlinks %}
    <li><a href="/" id="home-a">Home</a></li>
{% endblock %}

{% block login_area %}
    <ul class="nav navbar-nav navbar-right">
        <li>
        	<a>
        		Hi! I'm a Link
        	</a>
        </li>
    </ul>
{% endblock %}

{% block center_content %}
<div class="col-md-7 text-center">
	<h3>Atom</h3> 
	<h4>A TV Python MVC Rapid Development Framework</h4>
	<img src="{% imgasset tv_demo:atom-large-with-text.png %}" width="100%" />
</div>
{% endblock %}

{% block sidebar_left %}
<div class="col-sm-2 col-md-2 sidenav text-center">
</div>
{% endblock %}

{% block footer %}
    <footer class="container-fluid text-center">
        <p><small>Please note that TobiVision Inc, or any Atom related code, is in active development. No guarentee or warranty exists for usage. Atom is brought to you by <a target="_blank" href="https://www.tobivision.co">TobiVision, Inc.</a></small></p>
    </footer>
{% endblock %}

