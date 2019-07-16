FROM node:10

LABEL "com.github.actions.name"="GPR Publish"
LABEL "com.github.actions.description"="Publish to GPR using NPM"
LABEL "com.github.actions.icon"="message-circle"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/test-gpr"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="bryancross <bryancross@github.com>"


COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
