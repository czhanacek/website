FROM jekyll/minimal as buildstage
RUN apk add --update git
RUN git clone https://github.com/czhanacek/website
WORKDIR website
RUN jekyll build

FROM nginx as runstage
COPY --from=buildstage /website/site/ /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


