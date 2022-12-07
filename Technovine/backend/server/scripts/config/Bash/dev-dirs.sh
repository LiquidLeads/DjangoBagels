#!/usr/bin/bash/env bash

declare -g -x GDev="/Dev"

declare -g -x VDevData="/vol/server-data/Dev"
declare -g -x VDevStorage="/vol/server-storage/Dev"

mkdir -p "$GDev"
mkdir -p "$VDevData"
mkdir -p "$VDevStorage"