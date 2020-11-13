FROM openjdk:8
ENV kfk_port=9093
ENV zk_port=2181
ENV kafka_listeners=PLAINTEXT://:${kfk_port}
ENV kafka_advertised_listeners=PLAINTEXT://localhost:${kfk_port}
ENV kafka_zookeeper_connect=localhost:${zk_port}
ENV kafka_broker_id=1
RUN mkdir /usr/harim/
ADD kafka_2.12-2.5.1/ /usr/harim/kafka_2.12-2.5.1
RUN chmod -R 777 /usr/harim/
WORKDIR /usr/harim/kafka_2.12-2.5.1/bin
EXPOSE ${kfk_port}
EXPOSE ${zk_port}
CMD sh run_kafka_broker.sh
