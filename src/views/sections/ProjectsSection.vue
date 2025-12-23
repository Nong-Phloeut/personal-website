<template>
  <v-container id="projects" class="py-16">
    <div class="text-center mb-12">
      <h2 class="text-h3 font-weight-bold mb-2">Featured Projects</h2>
      <p class="text-medium-emphasis">
        A collection of systems I've designed and developed
      </p>
    </div>

    <v-row>
      <v-col
        v-for="project in projects"
        :key="project.title"
        cols="12"
        sm="6"
        md="6"
        lg="4"
      >
        <v-hover v-slot="{ isHovering, props }">
          <v-card
            v-bind="props"
            :elevation="isHovering ? 12 : 2"
            class="project-card h-100 overflow-hidden"
            rounded="xl"
          >
            <v-img :src="project.image" height="220" cover class="align-end">
              <v-fade-transition>
                <div
                  v-if="isHovering"
                  class="d-flex transition-fast-in-fast-out bg-primary-darken-2 v-card--reveal text-h2"
                  style="
                    height: 100%;
                    opacity: 0.9;
                    position: absolute;
                    width: 100%;
                    bottom: 0;
                    background: rgba(var(--v-theme-primary), 0.9);
                  "
                >
                  <v-btn
                    variant="flat"
                    color="white"
                    :href="project.live"
                    target="_blank"
                    class="mx-2"
                  >
                    View Demo
                  </v-btn>
                </div>
              </v-fade-transition>
            </v-img>

            <v-card-item>
              <v-card-title class="font-weight-bold text-h6">
                {{ project.title }}
              </v-card-title>
            </v-card-item>

            <v-card-text>
              <p class="text-body-2 text-medium-emphasis mb-4">
                {{ project.description }}
              </p>

              <div class="d-flex flex-wrap gap-2">
                <v-chip
                  v-for="tech in project.tech"
                  :key="tech"
                  size="x-small"
                  variant="tonal"
                  color="primary"
                  class="font-weight-bold"
                >
                  {{ tech }}
                </v-chip>
              </div>
            </v-card-text>

            <v-divider class="mx-4 opacity-50"></v-divider>

            <v-card-actions class="pa-4">
              <v-btn
                prepend-icon="mdi-github"
                variant="text"
                size="small"
                class="text-capitalize"
                :href="project.github"
              >
                Source Code
              </v-btn>
              <v-spacer />
              <v-btn
                icon="mdi-open-in-new"
                variant="text"
                size="small"
                :href="project.live"
              ></v-btn>
            </v-card-actions>
          </v-card>
        </v-hover>
      </v-col>
    </v-row>
  </v-container>
</template>

<script setup>
const projects = [
  {
    title: "Inventory Pro",
    description:
      "A full-scale warehouse management system with real-time stock tracking and automated PDF reporting.",
    tech: ["Vue 3", "Laravel", "PostgreSQL", "Tailwind"],
    image:
      "https://images.unsplash.com/photo-1586528116311-ad8dd3c8310d?q=80&w=800",
    github: "#",
    live: "#",
  },
  {
    title: "EduTrack System",
    description:
      "Comprehensive school management platform featuring attendance tracking, grade portals, and teacher schedules.",
    tech: ["Vue 3", "Vuetify", "Firebase", "Node.js"],
    image:
      "https://images.unsplash.com/photo-1509062522246-3755977927d7?q=80&w=800",
    github: "#",
    live: "#",
  },
  {
    title: "Health-Sync API",
    description:
      "A Dockerized Laravel API for medical clinics, supporting secure patient data encryption and RESTful architecture.",
    tech: ["Laravel", "Docker", "MySQL", "Redis"],
    image:
      "https://images.unsplash.com/photo-1576091160550-2173dba999ef?q=80&w=800",
    github: "#",
    live: "#",
  },
];
</script>

<style scoped>
.project-card {
  transition: all 0.3s ease;
  border: 1px solid rgba(var(--v-border-color), 0.05);
}

.project-card:hover {
  transform: translateY(-8px);
}

.gap-2 {
  gap: 8px;
}

.v-card--reveal {
  align-items: center;
  bottom: 0;
  justify-content: center;
  position: absolute;
  width: 100%;
}
</style>
