FROM alpine

RUN set -x \
  && apk update \
  && apk upgrade \
  && apk add vim git npm yarn \
  && npm install -g degit \
  && degit chromaui/intro-storybook-react-template taskbox
WORKDIR /taskbox
RUN set -x \
 && yarn
