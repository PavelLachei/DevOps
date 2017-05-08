# Dockerfile

# The container must use the nginx image.
FROM nginx

# Set the maintainer of the Dockerfile to your name and email address.
LABEL maintainer="Pavel Lachei"
LABEL emailaddress="lach0028@stthomas.edu"

# The container should expose port 80.
EXPOSE 80

# Copy the files from the html directory you created earlier in the assignment to the /usr/share/nginx/html directory in the container.
COPY html/index.html /usr/share/nginx/html

# The container should have an environment variable mapping the key NGINX_PORT to the value 80.
ENV NGINX_PORT=80
