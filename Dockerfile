FROM amazon/opendistro-for-elasticsearch:0.8.0
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch repository-s3 ; elasticsearch-plugin install analysis-icu --batch; elasticsearch-plugin install analysis-kuromoji --batch; elasticsearch-plugin install analysis-phonetic --batch; elasticsearch-plugin install analysis-smartcn --batch; elasticsearch-plugin install analysis-ukrainian --batch; elasticsearch-plugin install analysis-stempel --batch; elasticsearch-plugin install ingest-attachment --batch; elasticsearch-plugin install mapper-size --batch; elasticsearch-plugin install mapper-murmur3 --batch;  echo \"AKI2T57AA\" | elasticsearch-keystore add s3.client.default.access_key -xf; echo \"sKOjRMsTkSGGeWIUA9\" | elasticsearch-keystore add s3.client.default.secret_key -xf;
