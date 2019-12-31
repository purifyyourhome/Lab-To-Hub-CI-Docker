# This file is a template, and might need editing before it works on your project.
# This Dockerfile installs a compiled binary into a bare system.
# You must either commit your compiled binary into source control (not recommended)
# or build the binary first as part of a CI/CD pipeline.

FROM alpine:3.5

# We'll likely need to add SSL root certificates
RUN apk --no-cache add ca-certificates

# WORKDIR /usr/local/bin

# Change `app` to whatever your binary is called
# Add app .
# CMD ["./app"]

RUN apk add --no-cache bash git openssh-client

ADD git-push /usr/local/bin/