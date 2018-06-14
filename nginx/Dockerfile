FROM nginx:1.15
ARG ORO_USER_ID
ARG ORO_USER_GROUP_ID

RUN groupadd --gid $ORO_USER_GROUP_ID oro \
        && useradd --uid $ORO_USER_ID --gid $ORO_USER_GROUP_ID --create-home oro

COPY nginx.conf /etc/nginx/
COPY conf.d /etc/nginx/conf.d

