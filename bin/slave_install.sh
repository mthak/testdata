#!/bin/bash
/usr/sbin/groupadd jenkins
/usr/sbin/useradd -m -u 2500 -g jenkins -d /var/lib/jenkins jenkins
sudu -u  jenkins mkdir -p /var/lib/jenkins/.ssh
su  jenkins -c 'ssh-keygen -t rsa -N "" -f /var/lib/jenkins/.ssh/id_rsa'
su jenkins -c 'echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGmm9fL0+GGW4ucI/lI3XxSdTj6BNXw5kYECnXi1d6tDuEDbSz8ha4U4s+Wu+Uiy/HxP8fg6r6ZZeU4wf0cpJUWlYm55Mb+MlhjGPOL8H0+T7sXtXDuWGFEAbdztkqpIXjXfoudymZdy58jmHV1bO19LqUIw/oJLwXR5FP8kyk+zoCtQqU309LcTfNG6DB/MpgY4dQmIwcSfbhCNc59UKrP2L0+P+vM6xE24C2MATUmfUDPDgH9muxnVoY2GJMkD9fjfBcKVxwEsj77QeonM8q9Y0eI7Qif7ncKaKf/aZLsEVMO8grdwfrpzpG0wv0nHtTozB2/akVyHj7eNh8Y0k1 jenkins@ip-172-31-27-65" >> /var/lib/jenkins/.ssh/authorized_keys'
