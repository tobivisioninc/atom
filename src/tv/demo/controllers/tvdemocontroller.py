#!/usr/bin/env python
from controller import Controller

class Tvdemocontroller(Controller):

	def __init__(self, kernel):
		Controller.__init__(self, kernel)

	def indexAction(self, args):
		"""
		@description("Demo Index")
		@route("/", "demo_index_get")
		@method("GET")
		@template("tv_demo:index")
		"""
		return self.render()
