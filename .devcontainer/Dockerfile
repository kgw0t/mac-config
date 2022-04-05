# syntax=docker/dockerfile:1.3-labs
FROM python:3.9.5-buster

ENV PATH /usr/local/node/bin:$PATH

RUN <<EOF
pip install --upgrade pip
pip install numpy pandas pytz python-decouple pyarrow aws_lambda_powertools awswrangler retrying diskcache
pip install flake8 autopep8 pytest pytest-cov pytest-mock moto cfn-lint ipython
pip install matplotlib notebook altair altair_saver
EOF

RUN <<EOF
curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
rm -rf awscliv2.zip
./aws/install
EOF

RUN <<EOF
apt-get update -y
apt-get install -y jq vim zsh less groff
EOF

RUN <<EOF
curl "https://nodejs.org/dist/v16.14.0/node-v16.14.0-linux-arm64.tar.xz" -o "node.tar.xz"
mkdir -p /usr/local/node
tar -C /usr/local/node -xJf node.tar.xz --strip-components=1
rm node.tar.xz
npm install -g npm
npm install -g eslint http-server 
EOF

RUN chsh -s $(which zsh)

CMD ["/bin/zsh"]
