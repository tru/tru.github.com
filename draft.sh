#!/bin/sh
jekyll
rsync --progress --recursive _site/ home.hieta.se:public_html/blog
