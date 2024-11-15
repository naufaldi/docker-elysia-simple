import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  try {
    // Clean the database first
    await cleanDatabase();

    // Seed your data
    await seedData();

    console.log('🌱 Seeding completed successfully');
  } catch (error) {
    console.error('❌ Error seeding the database:', error);
    throw error;
  } finally {
    await prisma.$disconnect();
  }
}

async function cleanDatabase() {
  await prisma.notes.deleteMany();
  console.log('🧹 Database cleaned');
}

async function seedData() {
  const notes = await prisma.notes.createMany({
    data: [
      {
        title: 'Welcome Note',
        content: 'Welcome to your new note-taking app!',
      },
      {
        title: 'Getting Started',
        content: 'Here are some tips to get started with your notes...',
      },
      {
        title: 'Features Overview',
        content: 'Explore the various features available in this application.',
      },
    ],
  });

  console.log(`📝 Created ${notes.count} notes`);
}

// Execute the seeder
main().catch((error) => {
  console.error(error);
  process.exit(1);
});
