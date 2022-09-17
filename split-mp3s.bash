#!/bin/bash
find . -type f -iname \*mp3 -exec splitmp3 {} \;
