# --------------------------------
# base image from docker registry
# --------------------------------
FROM mirror.gcr.io/alpine:latest

# --------------------------------
# ansible-core and dependencies install
# --------------------------------
RUN apk add \
    ansible-core \
    sshpass \
    py3-netaddr \
    openssh-client \
    ansible-lint && \
    rm -rf /var/cache/apk/*

# --------------------------------
# hosts file and ansible.cfg default location is /etc/ansible/
# --------------------------------
COPY configs/ /etc/ansible/

# --------------------------------
# copy playbooks dir to workdir
# --------------------------------
COPY . /Ansible
WORKDIR /Ansible

CMD ["/bin/sh"]
