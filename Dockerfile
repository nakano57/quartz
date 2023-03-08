FROM alpine:3.16

RUN apk add --no-cache go hugo git make perl
RUN go install github.com/nakano57/hugo-obsidian@latest
ENV PATH="/root/go/bin:$PATH"
RUN git clone https://github.com/nakano57/quartz.git /quartz

WORKDIR /quartz

CMD ["make", "serve"]
