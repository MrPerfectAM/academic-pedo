#!/bin/bash

# Author: Aditya Tomar (24BCY10153)

# FOSS Package Inspector

# Detect Package Manager
if [ -x "$(command -v apt)" ]; then
  PACKAGE_MANAGER="apt"
elif [ -x "$(command -v yum)" ]; then
  PACKAGE_MANAGER="yum"
else
  echo "Unsupported package manager"
  exit 1
fi

# Define Python Package Name Based on Package Manager
if [ "$PACKAGE_MANAGER" = "apt" ]; then
  PYTHON_PACKAGE="python3"
else
  PYTHON_PACKAGE="python3"
fi

# Check Installation Status and Extract Version
if command -v $PYTHON_PACKAGE &> /dev/null; then
  echo "================================================================================"
  echo "                   Python AUDIT - PACKAGE INSPECTOR                 "
  echo "================================================================================"
  echo "Status: $PYTHON_PACKAGE is INSTALLED on this $(lsb_release -si) system."
  PYTHON_VERSION=$($PYTHON_PACKAGE --version | cut -d ' ' -f 2)
  echo "Version: $PYTHON_VERSION"
  echo "--------------------------------------------------------------------------------"
  echo "FOSS Philosophy Notes:"
  echo " - Python: The Zen of Python, by Tim Peters"
  echo "   Beautiful is better than ugly."
  echo "   Explicit is better than implicit."
  echo "   Simple is better than complex."
  echo "   Complex is better than complicated."
  echo "   Flat is better than nested."
  echo "   Sparse is better than dense."
  echo "   Readability counts."
  echo "   Special cases aren't special enough to break the rules."
  echo "   Although practicality beats purity."
  echo "   Errors should never pass silently."
  echo "   Unless explicitly silenced."
  echo "   In the face of ambiguity, refuse the temptation to guess."
  echo "   There should be one—and preferably only one—obvious way to do it."
  echo "   Although that way may not be obvious at first unless you're Dutch."
  echo "   Now is better than never."
  echo "   Although never is often better than *right* now."
  echo "   If the implementation is easy to explain, it may be a good idea."
  echo "   Namespaces are one honking great idea—let's do more of those!"
  echo " - Git: "Git is a free and open source distributed version control system."
  echo " - Linux: "Linux is a free and open-source operating system."
  echo " - Bash: "Bash is a Unix shell and command-line interpreter."
  echo "================================================================================"
else
  echo "$PYTHON_PACKAGE is not installed"
fi

