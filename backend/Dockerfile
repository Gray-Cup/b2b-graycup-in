FROM node:20-alpine

WORKDIR /app/medusa

# Enable Corepack for Yarn v4
RUN corepack enable
RUN corepack prepare yarn@4.4.0 --activate

# Install Medusa CLI
RUN npm install -g @medusajs/medusa-cli@latest

# Copy only dependency files first (better caching)
COPY package.json yarn.lock ./

# Install deps using Yarn Berry
RUN yarn install --immutable

# Now copy the rest of the app
COPY . .

EXPOSE 9000 5173

ENTRYPOINT ["sh", "./start.sh"]
