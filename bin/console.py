#!/usr/bin/env python
import os, sys, ssl, datetime, json

__version__ = "0.1.0"

__all__ = [
	"Console"
]


basepath = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
# Append to sys.
vendorpath = os.path.join(basepath, 'vendor', 'tv', 'core')
sys.path.append(vendorpath)
import atom, common, server

class Console():
	def __init__(self):
		try:
			tools = common.Tools()
			self.kernel = atom.buildKernel() #once the kernel is loaded all paths have been appended
			#meaning we need no import
			ormpath = os.path.join(self.kernel.get('config').get('paths').get('vendor'), 'tv', 'orm')
			sys.path.append(ormpath)
			from dbSchema import DBSchema
			self.dbschema = DBSchema(self.kernel)
		except Exception as ex:
			print(str(ex))
			import traceback;print(traceback.format_exc())
			import pdb;pdb.set_trace()

		try:
			scriptName = sys.argv.pop(0)
			self.operation = sys.argv.pop(0)
		except Exception as ex:
			print("Error, you must give an operation (`install`, `update`, `server`)")
			sys.exit(0)

		print("Performing %s" % self.operation)
		try:
			getattr(self, self.operation)(sys.argv)
		except Exception as ex:
			print(str(ex))
			import pdb;pdb.set_trace()

		print("Completed %s" % self.operation)

	def server(self, args):
		self.server = server.Server(self.kernel)
		self.server.run(args)

	def install(self, *args):
		try:
			fname = os.path.join(self.kernel.get('config').get('paths').get('app'), 'lock')
			if not os.path.isfile(fname):
				print('Lock not in place, installing components')			
				res = self.kernel.get('config').checkPackage(True)
				d_date = datetime.datetime.now()
				res['datetime'] = d_date.strftime("%Y-%m-%d %I:%M:%S %p")
				f = open(fname,"w+")
				f.write(json.dumps(res))
			else:
				print('Lock in Place, skipping installation')
		except Exception as err:
			print(err)

	def schema(self, *args):
		function = getattr(self.dbschema, args[0].pop(0))
		return function()

	def update(self, *args):
		fname = os.path.join(self.kernel.get('config').get('paths').get('app'), 'lock')
		if os.path.isfile(fname):
			os.remove(fname)

		print('Updating Components')
		self.install(True)

	def clear(self, *args):
		what = args[0].pop(0)
		return {
			'cache': self.kernel.get('cache').clear()
		}.get(what)    # 9 is default if x not found

if __name__ == '__main__':
	Console()
