module.exports = {
  purge: [
    "./app/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/javascript/**/*.vue",
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        theme_dark_red: "#8f0c00",
        theme_pink: "#ff998b",
        theme_beige: "#f8eece",
        theme_blue: "#0a3959",
        theme_red: "#cc0f16",
        theme_text1: "#f2f2f2",
        theme_text2: "#bfbfbf",
        theme_text3: "#8c8c8c",
        theme_text4: "#404040",
        theme_text5: "#0d0d0d",
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
