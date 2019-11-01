FROM continuumio/anaconda3:latest

RUN conda create -n fastai-env python=3.6 \
    && echo "source activate fastai-env" >> /root/.bashrc

RUN conda install -n fastai-env conda jupyter \
    && conda install -n fastai-env -c pytorch -c fastai fastai pytorch \
    && git clone https://github.com/fastai/course-v3 /home/fastai_course \
    && mkdir /home/mydata

SHELL ["/bin/bash"]
CMD jupyter notebook \
    --no-browser \
    --port=8888 \
    --ip='*' \
    --notebook-dir=/home \
    --allow-root