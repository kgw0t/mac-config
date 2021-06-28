FROM python:3.9.5-buster

WORKDIR /root

RUN pip install --upgrade pip
RUN pip install numpy
RUN pip install pandas
RUN pip install pytz
RUN pip install python-decouple
RUN pip install pyarrow
RUN pip install aws_lambda_powertools
RUN pip install awswrangler

RUN pip install flake8
RUN pip install autopep8
RUN pip install pytest pytest-cov pytest-mock
RUN pip install moto
RUN pip install cfn-lint

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && rm -rf awscliv2.zip \
    && ./aws/install

RUN apt-get update -y
RUN apt-get install -y jq
RUN apt-get install -y vim
RUN apt-get install -y zsh

RUN chsh -s $(which zsh)

RUN mkdir -p /root/develop

WORKDIR /root/develop

CMD ["/bin/zsh"]
