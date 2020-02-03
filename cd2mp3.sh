#!/bin/sh

for t in *.wav; do lame "$t"; done
