## Naming Conventions

### Local Application `[ROOT]/src/`
> Any python file should be case-insensitive unique. 

### Vendors
> Vendors should keep in mind that local application should get "naming preference". This means that slightly more complex names for models should be used.
```py
#!/usr/bin/env python
# Good Example vendor/companya/moduleb/companyaFileSearch
from kernelAware import Kernelaware
class  Companyfilesearch(Kernelaware)
	def __init__(self, kernel):
		Kernelaware.__init__(self, kernel)

	def someMethod(self):
		pass
```
The above is good, but the below is too generic:
```py
#!/usr/bin/env python
# Bas Example vendor/companya/moduleb/filesearch
from kernelAware import Kernelaware
class filesearch(Kernelaware)
	def __init__(self, kernel):
		Kernelaware.__init__(self, kernel)

	def someMethod(self):
		pass
```

> As the autoloader currently functions, it is important you stick to the conventions to prevent application errors.
