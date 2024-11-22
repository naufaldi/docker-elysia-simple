#!/bin/sh

# Run Prisma migrations
bunx prisma migrate dev --name init

# Start the application
bun run dev