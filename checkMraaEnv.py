#!/usr/bin/env python3
import subprocess
from distutils import sysconfig as sysConf
import os
from pathlib import *


def checkSwig():
	output = subprocess.run(["swig3.0", '-version'],capture_output=True)
	ret = output.stdout.decode('utf-8')
	arr = ret.splitlines()
	if "command not found" in ret:
		print("[Error]: Please install [swig3.0]")
		return
	ver = arr[1].split()
	major,minor,patch= ver[2].split(".")
	if (int(major) == 3) and (int(minor) == 0) and (int(patch) >= 5):
		print("[Success]:",arr[1])
	else:
		print("[Error]: Please make swig3.0 >= 3.0.5")
		
def checkCmake():
	output = subprocess.run(["cmake", "--version"], capture_output=True)
	ret = output.stdout.decode('utf-8')
	arr = ret.splitlines()
	if "command not found" in ret:
		print("Please install cmake 3.1+")
		return
	ver = arr[0].split()
	major,minor,patch = ver[2].split('.')
	if (int(major) == 3) and (int(minor) >= 1):
		print("[Success]:", arr[0])
	else:
		print("[Error]: Please make cmake >= 3.1") 

def checkPython3():
	dir = sysConf.get_config_vars()['INCLUDEPY']
	p = PurePath(dir)
	p = p.joinpath("Python.h")	
	if os.path.exists(p):
		print("[Success]: python3-dev has been installed")
	else:
		print("[Error]: Please install python3-dev")
	

if __name__ == "__main__":
	checkSwig()
	checkCmake()
	checkPython3()
