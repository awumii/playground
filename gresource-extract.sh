#!/bin/sh
mkdir -p ${PWD}/theme-extracted/assets/scalable
mkdir -p ${PWD}/theme-extracted/windows-assets

for resource in `gresource list gtk.gresource`; do
        gresource extract gtk.gresource $resource > ${PWD}/theme-extracted/${resource#\/org\/gnome\/theme/}
done
