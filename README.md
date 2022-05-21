# Nginx + autoreload

Image of Nginx which automatically reloads on configuration changes
and exposes port 443.

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

## License

View [license information][8] for the software contained in this
image.

As with all Docker images, these likely also contain other software
which may be under other licenses (such as Nginx, etc from the base
image, along with any direct or indirect dependencies of the primary
software being contained).

As for any pre-built image usage, it is the image user's
responsibility to ensure that any use of this image complies with any
relevant licenses for all software contained within.

[8]: https://github.com/rockstorm101/nginx-autoreload/blob/master/LICENSE
