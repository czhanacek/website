FROM ruby:2.3 as buildstage
RUN apt-get update 
RUN apt-get -y install nodejs 
RUN pwd
RUN git clone https://github.com/czhanacek/website

WORKDIR website

RUN git checkout dev
RUN bundle install
RUN bundle exec jekyll build
RUN pwd

FROM nginx as runstage
COPY --from=buildstage /website/_site/ /usr/share/nginx/html/ 
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


