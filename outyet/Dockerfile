FROM golang:onbuild

# Copy the local package files to the container's workspace.
ADD . /go/src/github.com/golang/example/outyet

# Build the outyet command inside the container.
# (You may fetch or manage dependencies here,
# either manually or with a tool like "godep".)
RUN go install github.com/golang/example/outyet

# Run the outyet command by default when the container starts.
CMD /go/bin/outyet

EXPOSE 8080
