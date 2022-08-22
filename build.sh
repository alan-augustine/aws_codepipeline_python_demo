#!/bin/bash
echo "Test $(date)"
zip -r myapp.zip scripts/ myapp/ appspec.yml requirements.txt
