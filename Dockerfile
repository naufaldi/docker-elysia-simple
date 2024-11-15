# Use the official Bun image
FROM oven/bun

# Set working directory
WORKDIR /app

# Copy package files first for better caching
COPY package.json bun.lockb ./

# Install dependencies
RUN bun install

# Generate Prisma client
COPY prisma ./prisma
RUN bunx prisma generate

# Copy the rest of the application
COPY . .

# Expose port 3000
EXPOSE 3000

# Run database migrations and start the application
CMD bunx prisma migrate deploy && bun run dev