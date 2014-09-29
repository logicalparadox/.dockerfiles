FROM logicalparadox/supervisor
MAINTAINER Jake Luer "jake@alogicalparadox.com"

# upgrade
RUN apt-get -q update
RUN apt-get -qy upgrade
RUN apt-get -qy install python-setuptools

# Prevent initialization by installer
RUN mkdir /etc/foundationdb
RUN touch /etc/foundationdb/fdb.cluster

# Add in the client
ADD https://foundationdb.com/downloads/I_accept_the_FoundationDB_Community_License_Agreement/key-value-store/2.0.9/foundationdb-clients_2.0.9-1_amd64.deb /tmp/
RUN dpkg -i /tmp/foundationdb-clients_2.0.9-1_amd64.deb

# Add in the server
ADD https://foundationdb.com/downloads/I_accept_the_FoundationDB_Community_License_Agreement/key-value-store/2.0.9/foundationdb-server_2.0.9-1_amd64.deb /tmp/
RUN dpkg -i /tmp/foundationdb-server_2.0.9-1_amd64.deb

# Cleanup install files
RUN rm -f /tmp/*

# Add scripts
ADD foundationdb-start.sh /usr/lib/foundationdb/foundationdb-start.sh
ADD foundationdb.sv.conf /etc/supervisor/conf.d/foundationdb.sv.conf

# Reset config for volume
RUN mv /etc/foundationdb/foundationdb.conf /usr/lib/foundationdb/foundationdb.conf.orig
RUN rm -rf /etc/foundationdb /var/lib/foundationdb/data
VOLUME ["/etc/foundationdb", "/fdb-data"]

# Expose Service
EXPOSE 4500
