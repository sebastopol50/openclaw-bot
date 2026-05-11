FROM node:22-alpine
RUN npm install -g openclaw@latest
ENV OPENCLAW_HTTP_PORT=10000
CMD ["openclaw", "gateway", "run"]
