FROM php:7.4-alpine

LABEL version="1.0.0"
#LABEL repository="https://github.com/dral3x/action-stringslint"
#LABEL homepage="https://github.com/dral3x/action-stringslint"
#LABEL maintainer="Alessandro Calzavara <alessandro.calzavara@gmail.com>"

LABEL "com.github.actions.name"="GitHub Action for SiteTranslationsLint"
#LABEL "com.github.actions.description"="Ensure your localized strings are complete and never unused."
#LABEL "com.github.actions.icon"="shield"
#LABEL "com.github.actions.color"="orange"

COPY linter.php /
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
