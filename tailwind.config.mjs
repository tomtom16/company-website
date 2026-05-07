/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        cream: {
          50:  '#fffef7',
          100: '#fdf8ed',
          200: '#faf0d7',
          300: '#f5e4b8',
          DEFAULT: '#fdf8ed',
        },
        brand: {
          50:  '#fdf8ed',
          100: '#faf0d7',
          200: '#f5e4b8',
          300: '#e8c97a',
          400: '#d4a843',
          500: '#b8882a',
          600: '#8a6420',
          700: '#5c4216',
          800: '#3d2c0e',
          900: '#2a1e09',
          950: '#1a1209',
        },
        ink: '#1a1a1a',
        accent: {
          400: '#d4a843',
          500: '#b8882a',
          600: '#8a6420',
        },
      },
      fontFamily: {
        sans: ['Inter', 'system-ui', 'sans-serif'],
        display: ['"Plus Jakarta Sans"', 'Inter', 'sans-serif'],
      },
    },
  },
  plugins: [],
};
