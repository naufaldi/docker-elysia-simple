FROM oven/bun

WORKDIR /app

COPY ./package.json .
COPY ./bun.lockb .
COPY ./prisma ./prisma

RUN bun install

# Copy the startup script
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

# Use the script as the entrypoint
CMD ["/app/start.sh"]

EXPOSE 3020