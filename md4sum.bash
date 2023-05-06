#!/bin/bash
openssl dgst -md4 $1 | cut -d ' ' -f 2
