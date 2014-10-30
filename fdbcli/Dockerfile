FROM logicalparadox/ubuntu:14.04
MAINTAINER Jake Luer "jake@alogicalparadox.com"

# upgrade
RUN apt-get -qy install python-setuptools

# Prevent initialization by installer
RUN mkdir /etc/foundationdb
RUN touch /etc/foundationdb/fdb.cluster

# Add in the client
ADD https://foundationdb.com/downloads/I_accept_the_FoundationDB_Community_License_Agreement/key-value-store/2.0.9/foundationdb-clients_2.0.9-1_amd64.deb /tmp/
RUN dpkg -i /tmp/foundationdb-clients_2.0.9-1_amd64.deb

# Cleanup install files
RUN rm -f /tmp/*

# Reset config for volume
RUN rm -rf /etc/foundationdb /var/lib/foundationdb/data
VOLUME ["/etc/foundationdb" ]

ENTRYPOINT [ "/usr/bin/fdbcli" ]
