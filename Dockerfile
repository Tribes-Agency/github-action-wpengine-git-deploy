FROM debian:11.2-slim

LABEL "com.github.actions.name"="GitHub Action for WP Engine Git Deployment"
LABEL "com.github.actions.description"="An action to deploy your repository to a WP Engine site via git."
LABEL "com.github.actions.icon"="chevrons-right"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/Tribes-Agency/github-action-wpengine-git-deploy"
LABEL "maintainer"="Tribes Agency <tech@tribes.agency>"

RUN apt-get update && apt-get install -y git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
