module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  plugins: [require("daisyui")],
  daisyui: {
    themes: [
      "fantasy",
    ],
    mytheme: {
      "primary": "#c9371a",
      "secondary": "#64e5d0",
      "accent": "#2cba6c",
      "neutral": "#211b23",
      "base-100": "#fcfdfd",
      "info": "#21ace8",
      "success": "#1aa892", 
      "warning": "#ee8011",
      "error": "#e25061",
      },
    },
  }
