FROM continuumio/anaconda3:latest

RUN conda create -n fastai python=3.6 &&\
    echo "source activate fastai" >> /root/.bashrc

RUN conda install conda \
    && conda install -c pytorch -c fastai fastai pytorch \
    && git clone https://github.com/fastai/course-v3 /home/fastai_course \
    && mkdir /home/mydata

CMD jupyter notebook \
    --no-browser \
    --port=8888 \
    --ip='*' \
    --notebook-dir=/home \
    --allow-root