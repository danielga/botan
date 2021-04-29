#!/usr/bin/env python3

import os

starting_dir = "src/lib/"

previous_root = None
previous_root_indents = 1
previous_root_contains_code = False

print("s.subspec 'lib' do |sp|")

for root, subdirs, files in os.walk(starting_dir):
    path = root[len(starting_dir):]
    path_parts = path.split("/")
    name = path_parts[-1]
    root = root + "/"

    if len(name) == 0:
        continue

    indents = len(path_parts)

    if previous_root != None and not root.startswith(previous_root):
        print("{}end".format("    " * previous_root_indents))

        if indents < previous_root_indents:
            for tabs in range(previous_root_indents, indents, -1):
                print("{}end".format("    " * (tabs - 1)))

    contains_code = False
    for file in files:
        if file.endswith(".h") or file.endswith(".cpp"):
            contains_code = True
            break

    if len(subdirs) != 0 or contains_code:
        if previous_root_contains_code:
            print()

        print("{2}{1}p.subspec '{0}' do |{1}sp|".format(name, "s" * indents, "    " * indents))
    else:
        root = None

    if contains_code:
        print("{3}    {2}sp.source_files = '{1}*.{{h,cpp}}'\n{3}    {2}sp.private_header_files = '{1}*.h'\n{3}    {2}sp.header_mappings_dir = 'src/lib'".format(name, root, "s" * indents, "    " * indents))

    previous_root = root
    previous_root_indents = indents
    previous_root_contains_code = contains_code

for tabs in range(previous_root_indents, -1, -1):
    print("{}end".format("    " * tabs))
