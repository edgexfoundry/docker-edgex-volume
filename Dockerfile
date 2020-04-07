###############################################################################
# Copyright 2016-2017 Dell Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
###############################################################################
# Create a Docker volume for use by Mongo data files, 
# micro service log files, and Consul config and data files
FROM ubuntu:latest
MAINTAINER Cloud Tsai <Cloud.Tsai@Dell.com>

# standard mongo db data dir directories
RUN mkdir -p /data/db
RUN echo "this directory is reserved for EdgeX database files" > /data/db/README

# EdgeX shared directories
ENV EDGEX_BASE=/edgex
RUN mkdir -p $EDGEX_BASE/logs
RUN echo "this directory is reserved for EdgeX log files" > $EDGEX_BASE/logs/README

ENTRYPOINT /usr/bin/tail -f /dev/null
