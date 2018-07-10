FROM python:3.5-alpine3.7

COPY requirements.txt /tmp/

RUN echo -e 'https://mirror.tuna.tsinghua.edu.cn/alpine/v3.7/main/\nhttps://mirror.tuna.tsinghua.edu.cn/alpine/v3.7/community/'> /etc/apk/repositories \
&& apk add --no-cache \
    libev \
    python3-dev \
	build-base \
	libxml2-dev \
	libxslt-dev \
&& pip install  -i https://pypi.tuna.tsinghua.edu.cn/simple -r /tmp/requirements.txt

CMD ["python", "/PriceMonitor/"]


VOLUME /PriceMonitor
