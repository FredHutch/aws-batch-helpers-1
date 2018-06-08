# This image is in Docker Hub as fredhutch/r-with-url-fetch-and-run:latest

FROM fredhutch/ls2_r:3.5.0

# curl is already installed

USER root
ADD fetch_and_run.sh /usr/local/bin/fetch_and_run.sh

USER neo

ENTRYPOINT ["/usr/local/bin/fetch_and_run.sh"]
