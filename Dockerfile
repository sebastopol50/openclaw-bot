FROM node:22-alpine
RUN npm install -g openclaw@latest
RUN mkdir -p /root/.openclaw
COPY .openclaw/openclaw.json /root/.openclaw/openclaw.json
EXPOSE 10000
ENV OPENCLAW_HTTP_PORT=10000
CMD ["openclaw", "gateway", "run"]
