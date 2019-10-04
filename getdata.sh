#!/bin/bash

if [ ! -d data/color ] && [ ! -d data/segmented ];
then 
	if [ ! -d leafdata];
	then
		git clone git@github.com:spMohanty/PlantVillage-Dataset.git leafdata
	fi
	mkdir data/
	mv leafdata/raw/color data/
	mv leafdata/raw/segmented data/

else
	echo "data already exists"
fi

