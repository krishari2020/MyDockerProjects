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

echo "Starting broker\n"
exec sh zookeeper-server-start.sh ../config/zookeeper.properties &
exec sh kafka-server-start.sh ../config/server.properties --override listeners=$kafka_listeners --override advertised.listeners=$kafka_advertised_listeners --override zookeeper.connect=$kafka_zookeeper_connect --override broker.id=$kafka_broker_id
