### Exceptions and Error Handling

> Exceptions are a `service`, which can be called from any `Kernelaware` class object.

```py
#!/usr/bin/env python
from kernelAware import Kernelaware
class myclass(Kernelaware):
	def __init__(self, kernel):
		Kernelaware.__init__(self, kernel)

		# Example per Type

		# This error is really for the system, but if you have anything you want to handle outside the basic application use this.
		self.get('exceptions').kernel('Some Kernel Error', 12345) 
	
		# Any General Application Errors
		self.get('exceptions').app('Some Application Error', 23456) 

 		# Session related errors, think on a failed login or data not found errors
		self.get('exceptions').session('Some Session Error', 34567)

		# Route related errors, used by the system to show RouteNotFound, but can be used to also handle bad arguments or parameters
		self.get('exceptions').route('Some Route Error', 45678) 

		# Package related errors, thrown by the system when errors occur initialzing packages
		self.get('exceptions').package('Some Package Error', 56789)
```

###### `code`, the second argument, is fully customizable, and documentation can be generated, especially when using unique codes

> No further config needed, easy as TVPY

###### We refer you to the GIT source for the `tv/exceptions/exceptions.py` for the supported functionality. 