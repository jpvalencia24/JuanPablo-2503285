FROM nginx
RUN mkdir /juanvalencia-2503285
RUN chmod 777 /juanvalencia-2503285
COPY recursos/img3.jpg /juanvalencia-2503285
COPY main.sh /juanvalencia-2503285
RUN chmod +x /juanvalencia-2503285/main.sh
RUN /juanvalencia-2503285/main.sh
COPY /5/* /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]