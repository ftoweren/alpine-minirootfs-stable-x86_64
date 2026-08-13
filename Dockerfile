FROM scratch
ENV LANG=C.UTF-8
#https://dl-cdn.alpinelinux.org/alpine/latest-stable/releases/x86_64/
ADD latest-stable/alpine-minirootfs-3.23.0-x86_64.tar.gz /
RUN apk add --no-cache openssh
#RUN add 'PermitRootLogin yes' in line37 using sed -i
#to sshd_config (can't write here) before running build proccess
RUN ssh-keygen -A
RUN apk cache clean && rm -rf /var/cache/apk/*
EXPOSE 22
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/sh"]
