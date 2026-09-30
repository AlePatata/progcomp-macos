FROM debian:bookworm-slim

RUN apt-get update \
     && apt-get install -y --no-install-recommends \
         g++ \
         gdb \
         git \
         curl \
         ca-certificates \
         make \
         vim \
     && rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1 https://github.com/catppuccin/vim.git /root/.vim/pack/themes/start/catppuccin

COPY vimrc /root/.vimrc

WORKDIR /work

CMD ["bash"]
