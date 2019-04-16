#!/usr/bin/env python
import sys, os

'''
Start of the framework
'''
basepath = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..")
vendorpath = os.path.join(basepath, 'vendor', 'tv', 'core')
sys.path.append(vendorpath)
import atom
atom.init()
### CLOSE ANYTHING LEFT ###
atom.close()
