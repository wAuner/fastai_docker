FROM continuumio/anaconda3:latest

RUN conda create -n fastai python=3.6 \
    && conda activate fastai \
    && conda install conda \
    && conda install -c pytorch -c fastai fastai pytorch \
    && git clone https://github.com/fastai/course-v3 /home \
    && mkdir /home/mydata
