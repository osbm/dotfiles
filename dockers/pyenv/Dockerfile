FROM osbm/pyenv:latest

ARG PYTHON_VERSION
RUN pyenv install $PYTHON_VERSION
RUN pyenv global $PYTHON_VERSION
RUN pyenv rehash

RUN pip install --upgrade pip

# Optional : Checks Pyenv version on container start-up
# ENTRYPOINT [ "pyenv","version" ]
RUN eval "$(pyenv init -)"

ENTRYPOINT /bin/bash