FROM ruby:2.6 as buildstage
RUN apt-get update 
ENV LANG C.UTF-8
RUN apt-get -y install nodejs 

RUN git clone https://github.com/czhanacek/website

WORKDIR website

RUN git checkout master
RUN bundle install
ENV LANG C.UTF-8
RUN bundle exec jekyll build
RUN pwd

FROM nginx as runstage
ENV LANG C.UTF-8
COPY --from=buildstage /website/_site/ /usr/share/nginx/html/
COPY --from=buildstage /website/resume.pdf /usr/share/nginx/html/ 
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


