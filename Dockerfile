FROM jekyll/jekyll
MAINTAINER Zach Latta <zach@hackedu.us>

COPY . /srv/jekyll/

EXPOSE 8080
ENTRYPOINT ["jekyll", "serve", "-P", "8080"]
