FROM alpine

ENV TERM=xterm-color \
    PAGER=less \
    PS1="\w \$ "

RUN apk --no-cache upgrade \
    && apk --no-cache add \
        man man-pages mdocml-apropos \
        bash bash-doc bash-completion \
        less less-doc \
        coreutils coreutils-doc \
        findutils findutils-doc \
        grep grep-doc \
        ca-certificates

CMD ["/bin/bash"]