### Best Practices
- Local Code should only reside in `src/` folder.
    - Following this, you should have a parent folder to any code you have. 

- Stay out of the core, you can extend the core, or use the event features (`EventListeners`)

- EventListeners, as most aptly named classes, will be found by the autoloader, no need to register, only configure inside `app/events.yml`.
	Currently the system supports the following events:
	- `after_kernel`: 
	    - Args: [`Kernel Instance`] 
	    - Description: Called after the kernel instantiates, all services are available to call
	- `before_request`: 
	    - Args: [`Response Instance`]
	    - Description: Called after the Response instance has been configured, but before any body is set (ie Controller Action has yet to be called).
	- `before_render`:
	    -  Args: [`Templates Instance`]
	    -  Description: Use this to add, modify, or remove from the dictionary used on the templates. Most common use case includes, but is not limited too, adding standard (global) variables for templates.
	- `after_request`:
	    -  Args: [`Response Instance`]
	    -  Description: Called after the Controller Action is completed and the Response has been built. The Response.body can be altered just before it is sent to the client, to name just a single common use.