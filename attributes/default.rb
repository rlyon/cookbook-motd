#
# Cookbook Name:: motd
# Attributes:: motd
#
# Copyright 2012, Rob Lyon
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Add an alert that will be appended to the tail file
default['motd']['name']       = "Public Systems"
default['motd']['alert']      = ""
default['motd']['contact']    = "dev@null.com"

# You shouldn't need to change these
default['motd']['templates']  = "/etc/motd.d"
default['motd']['head']       = "motd.head"
default['motd']['tail']       = "motd.tail"

# Commands to get system info
default['motd']['cputime']    = %q{ps -eo pcpu | awk 'NR>1' | awk '{tot=tot+$1} END {print tot}'}
default['motd']['cpucores']   = %q{cat /proc/cpuinfo | grep -c processor}
default['motd']['loadavg']    = %q{cat /proc/loadavg | awk '{print $1 "  " $2 "  " $3}'}
default['motd']['freemem']    = %q{free -m | head -n 2 | tail -n 1 | awk '{ print $2 }'}
default['motd']['realmem']    = %q{free -m | head -n 2 | tail -n 1 | awk '{ print $3 }'}
default['motd']['cachemem']   = %q{free -m | head -n 3 | tail -n 1 | awk '{ print $4 }'}
default['motd']['swapmem']    = %q{free -m | tail -n 1 | awk {'print $3'}}

# in minutes
default['motd']['poll'] = 5