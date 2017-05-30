# Python Machine Learning Devkit   [![Codacy Badge](https://api.codacy.com/project/badge/Grade/5694da45e0a54b09ba71031570b00e0a)](https://www.codacy.com/app/v1shwa/ml-devkit?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=v1shwa/ml-devkit&amp;utm_campaign=Badge_Grade)    [![Build Status](https://travis-ci.org/v1shwa/ml-devkit.svg?branch=master)](https://travis-ci.org/v1shwa/ml-devkit)     [![Docker Automated buil](https://img.shields.io/docker/automated/v1shwa/ml-devkit.svg)](https://hub.docker.com/r/v1shwa/ml-devkit)
Docker image for data analysis and machine learning with python.

## Usage
  - Pull Image
   
        docker pull v1shwa/ml-devkit    
  - Launch a jupyter notebook in detached mode
  
        docker run -p 8888:8888 -d v1shwa/ml-devkit
  - Mount current directory as data volume
        
        docker run -p 8888:8888 -v $(pwd):/appdata -d v1shwa/ml-devkit
  - Set a custom password for jupyter notebook. (default: `password`)
        
        docker run -p 8888:8888 -v $(pwd):/appdata -e NB_PASSWORD="mynewpass"  -d v1shwa/ml-devkit
    
    You can now access the jupyter notebook at [localhost:8888](http://localhost:8888/)

## What's in it?
 - Python 3.6
 - pip
 - numpy
 - scipy
 - scikit-learn
 - pandas
 - matplotlib
 - nltk
 - gensim
 - theano
 - jupyter
 - tensorflow
 - keras

## License
[The MIT License](./LICENSE)
