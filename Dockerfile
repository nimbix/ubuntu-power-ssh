FROM nimbix/ubuntu-cuda-ppc64le:latest

ADD url.txt /etc/NAE/url.txt
ADD help.html /etc/NAE/help.html
ADD AppDef.json /etc/NAE/AppDef.json
RUN wget --post-file=/etc/NAE/AppDef.json --no-verbose https://api.jarvice.com/jarvice/validate -O -

