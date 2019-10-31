FROM continuumio/anaconda3:latest

RUN conda create -n fastai-env python=3.6 &&\
    echo "source activate fastai-env" >> /root/.bashrc

RUN conda install -n fastai-env conda \
    && conda install -n fastai-env -c pytorch -c fastai fastai pytorch \
    && conda install -n fastai-env jupyter\
    && git clone https://github.com/fastai/course-v3 /home/fastai_course \
    && mkdir /home/mydata

CMD jupyter notebook \
    --no-browser \
    --port=8888 \
    --ip='*' \
    --notebook-dir=/home \
    --allow-root