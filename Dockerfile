FROM blargathon/kithnkin:16.x-5.0.1-focal

ARG branch_name=test
ARG node_env=dev
WORKDIR /usr/src/app

COPY . .

ENV GIT_BRANCH=${branch_name}
ENV NODE_ENV=${node_env}
ENV PORT=8080

EXPOSE 8080

CMD ./setup.sh