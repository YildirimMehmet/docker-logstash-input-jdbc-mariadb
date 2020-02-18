FROM docker.elastic.co/logstash/logstash:7.5.0

# install dependency
RUN /usr/share/logstash/bin/logstash-plugin install logstash-input-jdbc
RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-aggregate
RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-jdbc_streaming
RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-mutate

# copy lib database jdbc jars
COPY ./mariadb-java-client-2.5.4.jar /usr/share/logstash/logstash-core/lib/jars/mariadb-java-client-2.5.4.jar