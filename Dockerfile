FROM jekyll/jekyll:latest
MAINTAINER Zach Latta <zach@hackedu.us>

RUN rm -rf /srv/jekyll/
COPY . /srv/jekyll/
RUN chown -R jekyll:jekyll /srv/jekyll/

EXPOSE 8080
ENTRYPOINT ["jekyll", "serve", "-P", "8080"]
