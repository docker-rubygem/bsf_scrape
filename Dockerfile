FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.8

RUN gem install bsf_scrape --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bsf_scrape_long"]
CMD ["--help"]
