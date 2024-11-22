#!/bin/sh

# Run Prisma migrations
bunx prisma migrate dev --name init

# Seed the database
bun run seed

# Start the application
bun run dev