{% extends tv_core:base %}

{% block navlinks %}
    <li><a href="/" id="home-a">Home</a></li>
    <li><a href="/docs">Documentation</a></li>
{% endblock %}


{% block center_content %}
    <h1>Welcome</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    <hr>
    <p>Lorem ipsum...</p>
{% endblock %}

{% block sidebar_right %}
<div class="well">
    <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top" style="max-width:50px">
        <input type="hidden" name="cmd" value="_s-xclick">
        <input type="hidden" name="hosted_button_id" value="JFXVLAS3BWM5A">
        <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!" style="max-width:125px">
        <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
    </form>
</div>
<a href="http://confluence.opcenter.io/display/TVPY/Atom" target="_blank" title="Atom Issue Page">
    <div class="well">
        <p>Issues</p>
    </div>
</a>
{% endblock %}


{% block footer %}
    <footer class="container-fluid text-center">
        <p><small>Please note that TobiVision Inc, or any Atom related code, is in active development. No guarentee or warranty exists for usage. Atom is brought to you by <a target="_blank" href="https://www.tobivision.co">TobiVision, Inc.</a></small></p>
    </footer>
{% endblock %}