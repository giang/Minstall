#!/bin/bash
# Functions For Checking Package/Repository Installation Status In Ubuntu Linux

# Check If Package Installed
function check_package() {
	dpkg -l $1 > /dev/null 2>&1
}

# Check If Repository Installed
function check_repository() {
	grep -iq $1 /etc/apt/sources.list || [ -f /etc/apt/sources.list.d/$1.list ]
}
