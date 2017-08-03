FROM bwnyasse/ubuntu

COPY profile/.bashrc /root/
COPY profile/.fuchsia_profile /root/

COPY setup.sh /

RUN chmod +x setup.sh \
    && /bin/bash /setup.sh




