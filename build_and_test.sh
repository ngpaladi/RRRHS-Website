#!/bin/sh

jekyll build && jekyll serve --host $(/sbin/ip -o -4 addr list enp4s0 | awk '{print $4}' | cut -d/ -f1)