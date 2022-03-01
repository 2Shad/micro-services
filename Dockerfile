# base image
FROM nginx

# label to communicate with team members
LABEL MAINTAINER=SHADMAN

# copy data to container
COPY index.html /usr/share/nginx/html/

# expose ports
EXPOSE 80

# create a container
CMD [ "nginx", "-g", "daemon off;" ]