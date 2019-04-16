### Controllers and Annotation Routing

> Can be called simply by being in a `Controller` class, and then your class can look like this:

```py
#!/usr/bin/env python
from controller import Controller

class Mycontroller(Controller):
	def __init__(self, kernel):
		Controller.__init__(self, kernel)
		
	def indexAction(self, request):
		"""
		@description("Some Index")
		@route("/index/{person}", "get_index")
		@method("GET")
		@template("company_bundle:index")
		"""
		return self.render(dict({
			'person': request.data.get('person')
		}))
```
###### Notice that the `request` is passed as an argument, and a named paremeter, in this case `person` is made available through the route definition using `{person}`. After which it became accessable to the `request.data` dictionary


> No further config needed, easy as TVPY

###### We refer you to the GIT source for the `tv/core/controllers.py` for the supported functionality. 