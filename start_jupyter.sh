#!/bin/bash
echo "Jupyter lab is now running at http://0.0.0.0:8888 (default password: password)"
exec jupyter lab "$@" > /var/log/jupyter_nb.log 2>&1
