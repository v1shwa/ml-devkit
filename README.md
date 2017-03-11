# Python Machine Learning Devkit
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
    
    You can now access the jupyter notebook at http://localhost:8888/

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

## License
[The MIT License](https://github.com/v1shwa/ml-devkit/blob/master/LICENSE)
