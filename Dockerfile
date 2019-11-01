FROM pytorch/pytorch:1.3-cuda10.1-cudnn7-runtime

RUN conda install jupyter \
    && conda install -c fastai fastai \
    && git clone https://github.com/fastai/course-v3 /workspace

SHELL ["/bin/bash"]
CMD jupyter notebook \
    --no-browser \
    --port=8888 \
    --ip='*' \
    --notebook-dir=/workspace \
    --allow-root