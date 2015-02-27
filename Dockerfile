FROM dockerfile/python
MAINTAINER Jevon Wild <jevon@delectable.com>


# Install Node.js
RUN \
  cd /tmp && \
  wget http://nodejs.org/dist/v0.11.9/node-v0.11.9.tar.gz && \
  tar xvzf node-v0.11.9.tar.gz && \
  rm -f node-v0.11.9.tar.gz && \
  cd node-v* && \
  ./configure && \
  CXX="g++ -Wno-unused-local-typedefs" make && \
  CXX="g++ -Wno-unused-local-typedefs" make install && \
  cd /tmp && \
  rm -rf /tmp/node-v* && \
  npm install -g npm && \
  echo -e '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bashrc

# Install Bower & Gulp
RUN npm install -g bower gulp

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
