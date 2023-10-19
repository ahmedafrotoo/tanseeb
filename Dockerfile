FROM ahmedafrotoo/afrotootlethon:slim-buster

#clonning repo 
RUN git clone https://github.com/ahmedafrotoo/afrotootlethon.git /root/Afrotoo
#working directory 
WORKDIR /root/Afrotoo

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/Afrotoo/bin:$PATH"

CMD ["python3","-m","Afrotoo"]
