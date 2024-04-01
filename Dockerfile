FROM nginx:alpine
WORKDIR ../ATOM
COPY ./index.html .
COPY ./Style/styles.css .
COPY ./Scripts/script.js .

EXPOSE 80

LABEL Name="atom-app" \
      Version="1.0" \
      Description="Web application for project management"

# Command to run the nginx server
CMD ["nginx", "-g", "daemon off;"]
