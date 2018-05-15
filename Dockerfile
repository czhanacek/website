FROM jekyll/jekyll as buildstage
RUN apk add --update git
RUN git clone https://github.com/czhanacek/website
RUN git checkout dev
WORKDIR website
RUN jekyll build --incremental
RUN ls /srv/jekyll/website/
RUN pwd

FROM nginx as runstage
COPY --from=buildstage /srv/jekyll/website/_site/ /usr/share/nginx/html/ 
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


