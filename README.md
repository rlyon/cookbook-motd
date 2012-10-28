Description
===========
Adds a dynamically updating motd banner.  Adds a motd.d directory to /etc and puts a head and tail file in the directory.  A cron job updates the motd by combining the head, tail and generated system information.

Requirements
============
Tested on CentOS 5.x, CentOS 6.x

Required cookbooks:
* cron

Attributes
==========
See attributes/default.rb for default values.
* default['motd']['name'] - The name of the facility
* default['motd']['alert'] - An alert message to append to the tail
* default['motd']['contact'] - Your contact information to send requests, questions and issues
* default['motd']['templates'] - The templates directory
* default['motd']['head'] - The head file in the templates directory
* default['motd']['tail'] - The tail file in the templates directory
* default['motd']['cputime'] - The command to get the CPU usage percentage
* default['motd']['cpucores'] - The command to get the total number of cores
* default['motd']['freemem'] - The command to get total free memory
* default['motd']['loadavg'] - The command to get the 1,5, and 15 minute load averages
* default['motd']['realmem'] - The command to get the free 'real' memory
* default['motd']['cachemem'] - The command to get the cached memory
* default['motd']['swapmem'] - The command to get the swap memory
* default['motd']['poll'] - The poll time for cron

Usage
=====
In the node or role add the site attributes:

    "default_attributes": {
      "motd": {
        "name": "My Computing Facility",
        "contact": "nosignsoflifehere@gmail.com"
      }
    }

Then add the recipe:

    recipe[motd]


