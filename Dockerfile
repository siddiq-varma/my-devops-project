# simple multi-stage not required; single-stage is fine
FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# Only copy package.json first for layer caching
COPY package.json ./

# Install (production). If your app needs dev deps, change accordingly.
RUN npm ci --omit=dev || true

# Copy rest of files
COPY . .

# Default command
CMD ["node", "index.js"]
