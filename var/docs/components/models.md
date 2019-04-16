### Models

> A `model` is found automatically by the system by the fact of being an instance of `Model` itself:
```py
#!/usr/bin/env python
from model import Model
class Mymodel(Model):
```

> The table for this model is defined inside the model itself. Below a simple example for a "download link".

```py
#!/usr/bin/env python
from model import Model
from model import CharField

class Download(Model):
	table = 'downloads'
	link = CharField(512)
	name = CharField()

	def __init__(self, kernel):
		Model.__init__(self, kernel)


```
> As you may notice, no `primary key` field was created, however it will get one. This field is named `id`, but if you need to use a different field, simply do this:
```py
...
from model import KeyField
...
	id = None
	myIdField = KeyField(32)
```

> Currently Atom supports the following field types:
```py
class BooleanField # default length 1

class CharField # default length 255

class DateField # default length = 24

class DateTimeField # default length = 32

class IntField # default length = 10

class TextField 

class KeyField 

class ForeignKeyField
 
class RelationField

class HasOneField

class HasManyField

class HasAndBelongsToManyField
```

## Querying data

> We hate to repeat, but easy as tvpy. Using `Mymodel` from above, inside any `Kernelaware` and `Controller` class
```py
results = self.get('mymodel').findAll()
```
> Or a search
```py
results = self.get('mymodel').findBy(dict({ "x": "y"}))
```

## Creating Data
```py
newInstance = self.get('mymodel').create(dict({ "x": "y"}))
```

