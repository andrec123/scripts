#!/usr/bin/env python

import subprocess
import optparse

parser = optparse.OptionParser()

parser.add_option("-i", "--interface", dest="interface", help="Interface to change MAC Address")

parser.parse_args()

subprocess.call("ifconfig", shell=True)
interface = input("[+] Enter interface > ")
new_MAC = input("[+] Enter your desired MAC Address > ")

print("[+] Changing MAC address for " + interface + " to " + new_MAC)

subprocess.call(["ifconfig", interface, "down"])
subprocess.call(["ifconfig", interface, "hw", "ether", new_MAC])
subprocess.call(["ifconfig", interface, "up"])
subprocess.call("ifconfig | grep ether", shell=True)





# C Copyrights to Andres Carpio
