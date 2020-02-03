#!/bin/bash

(setxkbmap -query | grep -q "layout:\s\+de") && setxkbmap ru || setxkbmap de mac
