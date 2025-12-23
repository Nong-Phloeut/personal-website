<template>
  <v-container id="skills" class="py-16">
    <div class="text-center mb-12">
      <h2 class="text-h3 font-weight-bold mb-2">Tech Stack</h2>
      <p class="text-medium-emphasis">
        Technologies I use to bring ideas to life
      </p>
    </div>

    <v-row>
      <v-col v-for="skill in skills" :key="skill.name" cols="6" sm="4" md="2">
        <v-hover v-slot="{ isHovering, props }">
          <v-card
            v-bind="props"
            :elevation="isHovering ? 2 : 0"
            :class="{ 'on-hover': isHovering }"
            class="pa-6 text-center skill-card transition-swing"
            rounded="xl"
          >
            <v-avatar size="60" class="mb-4 pa-2">
              <v-img :src="skill.icon" :alt="skill.name" contain></v-img>
            </v-avatar>

            <div class="text-subtitle-1 font-weight-bold">{{ skill.name }}</div>
            <div class="text-caption text-primary">{{ skill.level }}</div>
          </v-card>
        </v-hover>
      </v-col>
    </v-row>
  </v-container>
</template>

<script setup>
const skills = [
  {
    name: "Vue 3",
    level: "Expert",
    icon: "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vuejs/vuejs-original.svg",
  },
  {
    name: "Vuetify",
    level: "Advanced",
    icon: "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vuetify/vuetify-original.svg",
  },
  {
    name: "Laravel",
    level: "Expert",
    icon: "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/laravel/laravel-original.svg",
  },
  {
    name: "MySQL",
    level: "Intermediate",
    icon: "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg",
  },
  {
    name: "Docker",
    level: "Intermediate",
    icon: "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg",
  },
  {
    name: "Git",
    level: "Advanced",
    icon: "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg",
  },
];
</script>

<style scoped>
.skill-card {
  border: 1px solid rgba(var(--v-border-color), 0.1);
  background: rgba(var(--v-theme-surface), 0.8);
  transition: transform 0.3s ease-in-out;
}

.skill-card.on-hover {
  transform: translateY(-10px);
  border-color: rgb(var(--v-theme-primary));
}

/* Grayscale logos that turn to color on hover is a very "pro" touch */
.v-avatar img {
  filter: grayscale(100%);
  transition: filter 0.3s ease;
}

.on-hover .v-avatar img {
  filter: grayscale(0%);
}
</style>
