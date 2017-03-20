FROM python:3.6-slim
MAINTAINER Vishwa <hello@vishwa.be>

# Env's
ENV DEBIAN_FRONTEND noninteractive
ENV TF_PYTHON_URL https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.0.1-cp36-cp36m-linux_x86_64.whl
ENV NB_PASSWORD password
ENV TINI_VERSION v0.6.0

# Update & install required base packages
RUN apt-get -y update && \
    apt-get install --no-install-recommends -y build-essential \
    software-properties-common \
    vim \
    libpng-dev \
    libfreetype6-dev && \
    apt-get clean

# Remove apt-cache
RUN rm -rf /var/lib/apt/lists/*

# Install pip packages & tensorflow
RUN pip install -U pip setuptools && \
    pip install \
    numpy \
    scipy \
    scikit-learn \
    pandas \
    matplotlib \
    nltk \
    gensim \
    theano \
    jupyter \
    pbr \
    funcsigs \
    keras && \
    pip install ${TF_PYTHON_URL}


# Tini operates as a process subreaper for jupyter. 
# This prevents kernel crashes.
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

# Expose ports & volumes
VOLUME /appdata
EXPOSE 8888
WORKDIR /appdata

COPY jupyter_notebook_config.py /root/.jupyter/
COPY start_jupyter.sh /
RUN chmod +x /start_jupyter.sh

CMD ["/start_jupyter.sh"]