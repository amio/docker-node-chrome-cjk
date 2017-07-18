FROM amio/node-chrome
LABEL name="node-chrome-cjk"

# Install Fonts

WORKDIR /usr/share/fonts/opentype/noto
RUN wget -O noto.zip "https://github.com/googlei18n/noto-cjk/blob/master/NotoSansCJK.ttc.zip?raw=true" \
    && apt-get install -y unzip \
    && unzip noto.zip \
    && rm noto.zip \
    && fc-cache -f -v
