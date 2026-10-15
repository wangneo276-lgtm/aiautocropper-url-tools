FROM busybox:1.36.1
LABEL org.opencontainers.image.title="aiautocropper-url-tools" \
      org.opencontainers.image.description="Offline URL builder for AI Auto Cropper scan-splitting workflows. Not an official SDK." \
      org.opencontainers.image.url="https://aiautocropper.com/" \
      org.opencontainers.image.source="https://github.com/bbwdadfg/aiautocropper-url-tools" \
      org.opencontainers.image.version="0.1.0" \
      org.opencontainers.image.licenses="MIT"
COPY docker/cli.sh /usr/local/bin/aiautocropper-url-tools
RUN chmod +x /usr/local/bin/aiautocropper-url-tools
ENTRYPOINT ["/usr/local/bin/aiautocropper-url-tools"]
