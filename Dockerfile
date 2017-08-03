FROM bwnyasse/ubuntu

COPY setup.sh /

RUN chmod +x setup.sh \
    && /bin/bash /setup.sh




