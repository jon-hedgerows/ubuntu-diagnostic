if [ "$1" = "x86" ]; then
    docker pull --platform linux/amd64 ghcr.io/jon-hedgerows/ubuntu-diagnostic
    docker run -d --name diag --platform linux/amd64 ghcr.io/jon-hedgerows/ubuntu-diagnostic
else
    docker pull ghcr.io/jon-hedgerows/ubuntu-diagnostic
    docker run -d --name diag ghcr.io/jon-hedgerows/ubuntu-diagnostic
fi
