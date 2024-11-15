# Elysia with Bun, Prisma, and Docker

A learning project exploring modern TypeScript backend development with Bun runtime and Elysia framework.

## 🚀 Tech Stack

- **Runtime** : [Bun](https://bun.sh/) - Ultra-fast JavaScript runtime and toolkit
- **Framework** : [Elysia](https://elysiajs.com/) - TypeScript HTTP framework for Bun
- **Database** : PostgreSQL 16
- **ORM** : Prisma - Next-generation Node.js and TypeScript ORM
- **Containerization**: Docker & Docker Compose

## 📋 Prerequisites

- [Bun](https://bun.sh/) installed
- [Docker](https://www.docker.com/) and Docker Compose
- Basic understanding of TypeScript and REST APIs

## 🗃️ Database Schema

```prisma
model Notes {
  id        String   @id @default(cuid())
  title     String
  content   String
  createdAt DateTime @default(now())
  updatedAt DateTime @updatedAt
}
```

## 🚀 Getting Started

1. **Clone the repository**

```bash
git clone https://github.com/naufaldi/docker-elysia-simple
cd docker-elysia-simple
```

2. **Install dependencies**

```bash
bun install
```

3. **Start the Docker containers**

```bash
docker compose up --build
```

4. **Run database migrations**

```bash
bunx prisma migrate dev
```

5. **Seed the database**

```bash
bun run seed
```

## 🛠️ Development

The application will be available at:

- API: http://localhost:3000
- Database: localhost:5433 (PostgreSQL)

### Environment Variables

Create a `.env` file:

```env
DATABASE_URL="postgresql://postgres:postgres@localhost:5433/elysia-db"
```

### Available Scripts

- `bun run dev` - Start development server
- `bun run seed` - Seed the database
- `bunx prisma studio` - Open Prisma Studio

## 🐳 Docker Configuration

The project uses Docker Compose for local development with two services:

1. **App Service**

   - Bun runtime
   - Hot reload enabled
   - Connected to PostgreSQL

2. **Database Service**
   - PostgreSQL 16
   - Persistent volume storage
   - Health checks enabled

### Docker Commands

```bash
# Start services
docker compose up

# Rebuild containers
docker compose up --build

# Stop services
docker compose down

# View logs
docker compose logs -f
```

## 📝 Learning Notes

### Key Concepts Learned

1. **Bun & Elysia Integration**

   - Modern TypeScript HTTP framework
   - Fast development workflow
   - Type-safe API development

2. **Prisma Setup**

   - Schema definition
   - Migration management
   - Seeding strategies

3. **Docker Development Environment**

   - Multi-container setup
   - Volume management
   - Environment configuration
   - Port mapping

4. **Database Management**
   - PostgreSQL configuration
   - Connection handling
   - Data persistence

## 🤝 Contributing

Feel free to submit issues and enhancement requests!

## 📜 License

This project is [MIT](LICENSE) licensed.
