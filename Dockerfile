# Because I always forget https://docs.docker.com/engine/reference/builder

FROM python:3-slim
LABEL maintainer='Charles Bitter <cbitter78+github@gmail.com>'
LABEL org.opencontainers.image.source=https://github.com/cbitter78/qr_code
LABEL org.opencontainers.image.description="Docker container to create qr codes using the qrcode pip module"
LABEL org.opencontainers.image.licenses=MIT

WORKDIR /qrcode
ADD ./* /qrcode/
RUN pip install --no-cache-dir -r ./requirements.txt
VOLUME ["/output"]

ENTRYPOINT ["/qrcode/qr"]