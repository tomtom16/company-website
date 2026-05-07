# =========================
# Build Stage
# =========================
FROM node:22-alpine AS builder

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# Build argument
ARG PUBLIC_GOOGLE_MAPS_API_KEY
ARG PUBLIC_GOOGLE_PLACE_ID

# Make available to Astro build
ENV PUBLIC_GOOGLE_MAPS_API_KEY=$PUBLIC_GOOGLE_MAPS_API_KEY
ENV PUBLIC_GOOGLE_PLACE_ID=$PUBLIC_GOOGLE_PLACE_ID

RUN npm run build


# =========================
# Production Stage
# =========================
FROM nginx:stable-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]