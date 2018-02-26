import os
from IPython.lib import passwd

c.NotebookApp.ip = '*'
c.NotebookApp.port = 8888
c.NotebookApp.open_browser = False
c.NotebookApp.allow_root = True
c.NotebookApp.password = passwd(os.environ['NB_PASSWORD'])
c.Spawner.default_url = '/lab'
