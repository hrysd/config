#!/bin/bash

portagedir='/etc/portage'

configfiles=(
  /usr/src/linux/.config
  /var/lib/portage/world
  ${portagedir}/package.mask
  ${portagedir}/package.unmask
  ${portagedir}/package.use
  ${portagedir}/make.conf
)

for file in ${configfiles[@]}
do
  cp $file `pwd`/
done
