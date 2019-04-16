### Notifications

> Notifications depend on `sessions`, and will store the messages in the user's session, which will be cleared upon retrieval as the default behavior. Let's take a look at our example inside `src/app/controllers/appcontroller.py`, which shows messages out of the box.

```py
#!/usr/bin/env python
from controller import Controller

class Appcontroller(Controller):
	def __init__(self, kernel):
		Kernelaware.__init__(self, kernel)

	def testIndexAction(self, request):
		# create a basic `info` type message, the default
		self.get('notifications').set('Message Info') 
		# pass a second parameter to change the message type, options come from the "bootstrap framework", meaning 
		# ['primary', 'secondary', 'success', 'danger', 'warning', 'info', 'light', 'dark']
		self.get('notifications').set('Message Danger', 'danger')
		return self.setTemplate('app:something').render(dict({
			"name": "Atom Developer"
		}))


```

> Notifications accept 2 arguments, the first is required, and should be a string message. The second is optional, and would be the message type.

> Notifications can be "rendered" inside any template, our example can be found in the base template `tv/core/templates/base.tpl`

```smarty
{{ app.notifications.render }}
```
> Once it is rendered, the messages are cleared, so you only see them on the intended result page

###### We refer you to the GIT source for the `tv/services/notifications.py` for the supported functionality. 