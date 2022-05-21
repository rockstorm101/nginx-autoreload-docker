Image of Nginx which auto-reloads on configuration changes and exposes
port 443.

## Usage

Use as a normal Nginx image. Add environment variable
`AUTORELOAD_FILES` to track these files and auto-reload Nginx when any
of this files gets modified. Example docker-compose.yml:

```yaml
services:
  nginx:
    image: rockstorm/nginx

    environment:
      AUTORELOAD_FILES: "/etc/nginx/nginx.conf /etc/nginx/conf.d"
```

Note that `AUTORELOAD_FILES` can contain multiple files and folders
separated by a space. However, no spaces are allowed on the
file/folder names.

## Build Arguments

By default, this image uses the stable and Alpine-based Nginx image as
a base. Use build argument `NGINX_VERSION` to change the base Nginx
Docker image being built upon.
