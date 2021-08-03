# syntax=docker/dockerfile:1.3-labs
FROM python:3.9.5-buster

RUN <<EOF
pip install --upgrade pip
pip install numpy pandas pytz python-decouple pyarrow aws_lambda_powertools awswrangler
pip install flake8 autopep8 pytest pytest-cov pytest-mock moto cfn-lint ipython
EOF

RUN <<EOF
curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
rm -rf awscliv2.zip
./aws/install
EOF

RUN <<EOF
apt-get update -y
apt-get install -y jq vim zsh
EOF

RUN chsh -s $(which zsh)

CMD ["/bin/zsh"]
