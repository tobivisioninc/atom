### Caching

> Can be called simply by being in a `KernelAware` class, which Controller is, and then calling:

```py
#!/usr/bin/env python
from controller import Controller

class Mycontroller(Controller):
	def __init__(self, kernel):
		Controller.__init__(self, kernel)
		
	def exampleAction(self, request):
	    cache = self.get('cache')
	    cache.set('key', 'value')
	    value = cache.get('key')

```

###### We refer you to the GIT source for the `tv/core/cache.py` for the supported functionality. 