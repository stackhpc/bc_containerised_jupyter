echo "c.ServerApp.base_url = '/node/$host_node/8888/'" >> jupyter/jupyter_server_config.py
echo "c.ServerApp.notebook_dir = '${HOME}'" >> jupyter/jupyter_server_config.py
singularity run --bind jupyter:/etc/jupyter docker://ghcr.io/stackhpc/jupyter-docker-stacks:12af9d7
