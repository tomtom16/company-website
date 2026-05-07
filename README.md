# Acme Corp Website

A modern, responsive company website built with **Astro** and **Tailwind CSS**.

## Pages

| Route | File | Description |
|-------|------|-------------|
| `/` | `src/pages/index.astro` | Landing page (hero, stats, services, testimonials, CTA) |
| `/about` | `src/pages/about.astro` | About us (story, values, team) |
| `/services` | `src/pages/services.astro` | Services overview with pricing tiers |
| `/contact` | `src/pages/contact.astro` | Contact info + map placeholder |
| `/contact-form` | `src/pages/contact-form.astro` | Contact form with validation |
| `/data-protection` | `src/pages/data-protection.astro` | GDPR-compliant privacy policy |
| `/imprint` | `src/pages/imprint.astro` | Legal imprint (§ 5 ECG Austria) |

## Getting Started

### Prerequisites
- Node.js 18+

### Install dependencies
```bash
npm install
```

### Start dev server
```bash
npm run dev
```
Visit [http://localhost:4321](http://localhost:4321)

### Build for production
```bash
npm run build
```
Output goes to `./dist/` — deploy to any static host (Netlify, Vercel, GitHub Pages, etc.)

### Preview production build
```bash
npm run preview
```

## Customization

### Branding
- **Colors**: Edit `tailwind.config.mjs` → `theme.extend.colors.brand` and `accent`
- **Company name**: Search & replace `Acme Corp` across all `.astro` files
- **Fonts**: Change Google Fonts import in `BaseLayout.astro` and update `fontFamily` in Tailwind config

### Content
- All page content is in `src/pages/*.astro` files
- Navigation links are defined in `src/layouts/BaseLayout.astro`
- Hero images use Unsplash URLs — replace with your own images in `src/assets/`

### Images
Store local images in `src/assets/` and import them:
```astro
---
import heroImg from '../assets/hero.jpg';
import { Image } from 'astro:assets';
---
<Image src={heroImg} alt="Hero" width={700} height={400} />
```
Astro's built-in `<Image>` component handles optimization automatically.

### Contact Form
The form currently shows a success message on submit (frontend only). To send emails:
- **Netlify**: Use [Netlify Forms](https://docs.netlify.com/forms/setup/) — add `netlify` attribute to `<form>`
- **Formspree**: Change form `action` to your Formspree endpoint
- **EmailJS**: Add EmailJS SDK for client-side email sending

## Tech Stack
- [Astro](https://astro.build) v5 — static site generator
- [Tailwind CSS](https://tailwindcss.com) v3 — utility-first CSS
- [Inter](https://fonts.google.com/specimen/Inter) + [Plus Jakarta Sans](https://fonts.google.com/specimen/Plus+Jakarta+Sans) — fonts
- [Unsplash](https://unsplash.com) — placeholder images

## Deployment

This is a fully static site. Build output (`./dist/`) can be deployed to:
- **Netlify**: `netlify deploy --dir=dist`
- **Vercel**: `vercel --prod`
- **GitHub Pages**: use the `astro.config.mjs` `site` option
- **Any web server**: just serve the `dist/` folder
