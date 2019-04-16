#!/usr/bin/env python
import os, sys, ssl, datetime, json

basepath = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
# Append to sys.
corepath = os.path.join(basepath, 'vendor', 'tv', 'core')
sys.path.append(corepath)
import atom, common

class Test():
	def __init__(self):
		tools = common.Tools()
		self.kernel = atom.buildKernel() #once the kernel is loaded all paths have been appended
		try:
			folder = self.kernel.get('tvmfolder')
			f1 = folder.find(13)
			print(f1.toJson(), f1.parent_folder_id.getValue())
			f2 = folder.find(19)
			print(f2.toJson(), f2.parent_folder_id.getValue())
		except Exception as ex:
			print(str(ex))

if __name__ == '__main__':
	Test()
