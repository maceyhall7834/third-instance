# Dockerfile
# -----------
# 1. Use the official Cobalt image as our base
# 2. Copy in any custom config / assets you need
# 3. Expose port 9000 and define the default command

FROM ghcr.io/imputnet/cobalt:11 AS base

# (optional) If you have custom static assets, translations, or config:
# COPY ./my-config.yaml    /app/config.yaml
# COPY ./static/           /app/static/

# Expose the port Cobalt listens on
EXPOSE 9000

# If you have any ENV overrides, you can set them here:
# ENV API_URL=https://api.your-domain.com/

# Entrypoint and CMD are inherited from the upstream image, so
# you normally don't need to redefine them.  If you want to
# wrap or extend the startup, you can do so here:
#
# ENTRYPOINT ["/entrypoint.sh"]
# CMD ["cobalt", "--config", "/app/config.yaml"]

