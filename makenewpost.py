#!/usr/bin/env python
import argparse
import fileinput
import datetime
from titlecase import titlecase
import os

parser = argparse.ArgumentParser()
parser.add_argument("title", help="the title of the post")
parser.add_argument("--date", "-d", help="Assign a custom date (defaults to true)")


args = parser.parse_args()
if(args.title):
    title = args.title.lower()
    now = datetime.datetime.now()
    date = str(now.year) + "-" + str(now.month) + "-" + str(now.day)
    date_title_string = title.split()
    date_title_string = date + "-" + "-".join(date_title_string)
    file_path = os.getcwd() + "/_posts/" + date_title_string + ".md"
    new_post_file = open(file_path, "w+")
    new_post_file.write(
"""---
layout: post
last-updated: """ + date + """
title: """ + titlecase(title) + """
---
""")
    new_post_file.close()
        

