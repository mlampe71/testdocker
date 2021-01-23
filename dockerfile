FROM nodered/node-red
RUN npm i ttb-node-red-counter --production
RUN npm i node-red-node-random
RUN npm install node-red-dashboard
RUN mkdir certs
RUN mkdir info
ADD flows.json /data/flows.json
ADD settings.js /data/settings.js
ADD iot_ca_cert.cer certs/iot_ca_cert.cer
ADD 5380_chain.pem certs/5380_chain.pem
ADD 5380_priv.pem certs/5380_priv.pem
ADD 5380.pem certs/5380.pem
ADD cert_key.txt certs/cert_key.txt
ADD deviceinfo.txt info/deviceinfo.txt