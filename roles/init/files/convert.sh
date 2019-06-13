#!/bin/bash
#
for crt_file in $(ls crts); 
do 
    openssl x509 -hash -in crts/$crt_file -out /usr/local/share/ca-certificates/${crt_file/cer/crt};
done 
update-ca-certificates
