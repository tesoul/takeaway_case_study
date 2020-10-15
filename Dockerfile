FROM ubuntu
RUN ["apt-get","update"]
RUN ["apt-get","-y","install","openjdk-8-jdk"]
RUN ["apt-get","-y","install","wget"]
WORKDIR /home/takeaway
COPY ./transformations ./transformations
##RUN ["rm","-r","pdi"]
##RUN ["rm","pdi.zip"]
##RUN ["wget","-O","pdi.zip","https://sourceforge.net/projects/pentaho/files/Pentaho%209.1/client-tools/pdi-ce-9.1.0.0-324.zip/download?use_mirror=deac-ams&download=&failedmirror=jztkft.dl.sourceforge.net"]
##RUN ["wget","-O","pdi.zip","https://i0.wp.com/itsfoss.com/wp-content/uploads/2020/05/apt-search-apt-show-example.png?resize=800%2C493&ssl=1"]
##RUN ["apt-get","-y","install","unzip"]
RUN ["apt-get","-y","install","postgresql-client"]
##RUN ["unzip","pdi.zip","-d","pdi"]
ENV POSTGRES_PASSWORD=SX
ENV PGPASSWORD=SX
ENTRYPOINT [ "./transformations/run_all.sh"]