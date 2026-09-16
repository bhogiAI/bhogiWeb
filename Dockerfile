FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html privacy-policy.html /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/
COPY fonts/ /usr/share/nginx/html/fonts/
COPY styles/ /usr/share/nginx/html/styles/

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
