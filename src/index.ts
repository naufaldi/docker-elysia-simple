import { Elysia } from 'elysia';
import { prisma } from './utils/prisma';

const app = new Elysia()
  .get('/notes', () => {
    return prisma.notes.findMany();
  })
  .get('/', () => 'Hello Elysia')
  .listen(3000);

console.log(
  `🦊 Elysia is running at ${app.server?.hostname}:${app.server?.port}`
);
