FROM nginx

MAINTAINER  S. Mathew Thomas

VOLUME /foo/bar
RUN touch /foo/bar/baz
RUN echo "ehlo baz" >> /foo/bar/baz

COPY nginx.conf /etc/nginx/nginx.conf

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80

ENV TERM xterm


