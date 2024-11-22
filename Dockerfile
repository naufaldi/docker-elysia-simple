FROM oven/bun

WORKDIR /app

COPY ./package.json .
COPY ./bun.lockb .
COPY ./prisma ./prisma

RUN bun install
RUN bunx prisma migrate dev --name init
# Add the Prisma seed command
RUN bun run seed

COPY . .

CMD ["bun", "run", "dev"]

EXPOSE 3020