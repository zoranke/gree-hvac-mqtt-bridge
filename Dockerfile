ARG BUILD_FROM=hassioaddons/base-amd64:1.3.3
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache jq nodejs=8.9.3-r0 nodejs-npm && \
npm set unsafe-perm true

# Copy data for add-on
WORKDIR /usr/src/app
COPY . .
RUN chmod +x run.sh

CMD [ "./run.sh" ]
