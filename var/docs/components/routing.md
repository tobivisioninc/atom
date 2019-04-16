### Routing

### Annotation Routing

> Routing is preferred through annotation, right inside the controllers. We understand this might not always be desired for some reason, so there is a traditional config way, both explained:


```py
def someAction(self, request):
	"""
	@description("Some Index")
	@route("/admin", "get_index")
	@method("GET")
	@template("company_bundle:index")
	@security(actions="require_login",on_false="/")
	"""
	return self.render(dict({
		'user': self.get('session').get('user')
	}))

```
Explained:

- `@description(string[description])` 
	
	>> `[description]` Describes the function, this is optional and is used for generating documentation and debugging

- `@route(string[endpoint], string[name])` 

	>> `[endpoint]` Will be matched, use {variable_name} for arguments

	>> `[name]` Is optional, for usage with named routes

- `@method(mixed[stringOrList])`
	
	>> `[stringOrList]` Use `ANY` for accepting all methods, else a single one, or a list of several. Options are `GET`, `POST`, `PUT`, `PATCH`, `DELETE`, `HEAD`, `OPTIONS`

- `@template(string[template])` 
	
	>> `[template]` Reference to the template, in `[company]_[bundle]:template.tpl`

- `@route(arg1[x=y],arg2[x=y], etc..)` 
	
	>> `[arg1]` In form of `security_option=value` see security documentation for options 

#### Route Prefixes

> You can add a prefix to a controller, like so:
```py
class Mycontroller(Controller):
	"""
	@route(prefix="/my")
	"""
```
> This will apply the prefix to all methods inside the class.

### Configuration Routing

> This way is more oldschool, but will allow external (vendor) bundles to inject and make routing available. Here is a route we defined in `app/config/routes.yml`

```yaml
tv_core:
  tv:
    index: 
      response_type: "html"
      methods: ["GET"]
      uri: "/core-index"
      priority: -1

```

###### We refer you to the GIT source for the `tv/core/cache.py` for the supported functionality. 