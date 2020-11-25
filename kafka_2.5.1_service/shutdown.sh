#!/bin/bash
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
echo "Gracefully shutting down kafka cluster service\n"
docker-compose exec kfk_node01 sh kafka_service_shutdown.sh 
docker-compose exec kfk_node02 sh kafka_service_shutdown.sh
docker-compose exec kfk_node03 sh kafka_service_shutdown.sh
sleep 20
echo "Gracefully shutting down zookeeper cluster service\n"
docker-compose exec zk_node01 sh zk_service_shutdown.sh 
docker-compose exec zk_node02 sh zk_service_shutdown.sh 
docker-compose exec zk_node03 sh zk_service_shutdown.sh 