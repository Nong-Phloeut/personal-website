<template>
  <v-app :theme="theme">
    <v-app-bar flat class="px-md-10 navbar-blur" border="b">
      <v-toolbar-title class="font-weight-bold">
        <span class="text-primary">&lt;</span>
        DevPort
        <span class="text-primary"> /&gt;</span>
      </v-toolbar-title>

      <v-spacer />

      <div class="hidden-sm-and-down">
        <v-btn
          v-for="item in navItems"
          :key="item.title"
          :href="item.href"
          variant="text"
          class="mx-1 text-capitalize"
        >
          {{ item.title }}
        </v-btn>
      </div>

      <v-btn icon @click="toggleTheme" class="ml-2">
        <v-icon>{{
          theme === "light" ? "mdi-weather-night" : "mdi-weather-sunny"
        }}</v-icon>
      </v-btn>

      <v-app-bar-nav-icon class="hidden-md-and-up" @click="drawer = !drawer" />
    </v-app-bar>

    <v-navigation-drawer v-model="drawer" temporary location="right">
      <v-list>
        <v-list-item
          v-for="item in navItems"
          :key="item.title"
          :href="item.href"
          @click="drawer = false"
        >
          <v-list-item-title>{{ item.title }}</v-list-item-title>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>

    <v-main>
      <div class="bg-glow"></div>

      <v-container fluid class="pa-0">
        <HomeSection id="home" />
        <AboutSection id="about" />
        <SkillsSection id="skills" />
        <ProjectsSection id="projects" />
        <ContactSection id="contact" />
      </v-container>
    </v-main>

    <v-footer
      border="t"
      class="justify-center py-4 text-body-2 text-medium-emphasis"
    >
      © {{ new Date().getFullYear() }} — Built with Vuetify & Vue 3
    </v-footer>
  </v-app>
</template>

<script setup>
import { ref } from "vue";
import HomeSection from "./views/sections/HomeSection.vue";
import AboutSection from "./views/sections/AboutSection.vue";
import SkillsSection from "./views/sections/SkillsSection.vue";
import ProjectsSection from "./views/sections/ProjectsSection.vue";
import ContactSection from "./views/sections/ContactSection.vue";

const theme = ref("dark");
const drawer = ref(false);

const navItems = [
  { title: "Home", href: "#home" },
  { title: "About", href: "#about" },
  { title: "Skills", href: "#skills" },
  { title: "Projects", href: "#projects" },
  { title: "Contact", href: "#contact" },
];

function toggleTheme() {
  theme.value = theme.value === "light" ? "dark" : "light";
}
</script>

<style>
/* Smooth Scrolling for the whole page */
html {
  scroll-behavior: smooth;
}

/* Glassmorphism Effect for Navbar */
.navbar-blur {
  background-color: rgba(var(--v-theme-surface), 0.7) !important;
  backdrop-filter: blur(12px);
  -webkit-backdrop-filter: blur(12px);
}

/* Modern Background "Glow" */
.bg-glow {
  position: fixed;
  top: 0;
  left: 50%;
  transform: translateX(-50%);
  width: 100%;
  max-width: 1200px;
  height: 600px;
  background: radial-gradient(
    circle at 50% -20%,
    rgba(var(--v-theme-primary), 0.15) 0%,
    transparent 70%
  );
  pointer-events: none;
  z-index: 0;
}

/* Typography polish */
.v-application {
  font-family: "Poppins", sans-serif !important;
}
</style>
