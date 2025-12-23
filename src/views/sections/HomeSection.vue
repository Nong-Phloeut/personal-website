<template>
  <v-container id="home" class="fill-height hero-section">
    <v-row align="center" justify="center">
      <v-col cols="12" md="8" class="text-center">
        <v-chip
          color="primary"
          variant="tonal"
          class="mb-6 px-6 font-weight-bold animate-up"
          label
        >
          🚀 Available for new opportunities
        </v-chip>

        <h1 class="text-md-h1 font-weight-black mb-4 animate-up-delay-1">
          Hi, I'm <span class="text-gradient">Nong</span>
        </h1>

        <p class="mb-8 animate-up-delay-2">
          I build <span class="text-high-emphasis font-weight-bold">scalable web applications</span> 
          with <span class="text-primary font-weight-bold">Vue 3</span> and 
          <span class="text-primary font-weight-bold">Laravel</span>.
        </p>

        <div class="d-flex flex-wrap justify-center gap-4 animate-up-delay-3">
          <v-btn
            color="primary"
            size="x-large"
            rounded="lg"
            elevation="1"
            prepend-icon="mdi-download"
            href="/cv.pdf"
            download
            class="px-8 text-capitalize font-weight-bold"
          >
            Download CV
          </v-btn>

          <v-btn
            variant="outlined"
            size="x-large"
            rounded="lg"
            href="#projects"
            class="px-8 text-capitalize font-weight-bold ml-sm-4"
          >
            View Projects
          </v-btn>
        </div>

        <div class="mt-12 animate-up-delay-4">
          <v-btn icon="mdi-github" variant="text" size="large" href="https://github.com/Nong-Phloeut" target="_blank" />
          <v-btn icon="mdi-linkedin" variant="text" size="large" href="https://www.linkedin.com/in/nong-phloeut-34314b275/" target="_blank" />
          <v-btn icon="mdi-twitter" variant="text" size="large" href="#" target="_blank" />
        </div>
      </v-col>
    </v-row>
  </v-container>
</template>

<style scoped>
.hero-section {
  min-height: 90vh; /* Takes up most of the screen */
  position: relative;
}

/* Stunning Gradient Text */
.text-gradient {
  background: linear-gradient(90deg, #6366f1, #a855f7);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

/* Modern Spacing */
.gap-4 {
  gap: 16px;
}

/* Subtle Entry Animations */
.animate-up {
  animation: fadeUp 0.8s ease forwards;
}
.animate-up-delay-1 { animation: fadeUp 0.8s ease 0.1s forwards; opacity: 0; }
.animate-up-delay-2 { animation: fadeUp 0.8s ease 0.2s forwards; opacity: 0; }
.animate-up-delay-3 { animation: fadeUp 0.8s ease 0.3s forwards; opacity: 0; }
.animate-up-delay-4 { animation: fadeUp 0.8s ease 0.4s forwards; opacity: 0; }

@keyframes fadeUp {
  from {
    opacity: 0;
    transform: translateY(20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

/* Responsive Font Adjustment */
@media (max-width: 600px) {
  .text-h2 {
    font-size: 3rem !important;
  }
}
</style>