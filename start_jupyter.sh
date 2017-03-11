#!/bin/bash
echo "Jupyter notebook is now running at http://0.0.0.0:8888 (default password: password)"
exec jupyter notebook "$@" > /var/log/jupyter_nb.log 2>&1
