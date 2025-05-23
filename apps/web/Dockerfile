# ベースイメージ
FROM node:18

WORKDIR /app

# パッケージコピー（pnpm）
COPY ../../package.json ./

# apps/web 配下をコピー
COPY . .

RUN npm install -g pnpm
RUN pnpm install
RUN pnpm build

CMD ["pnpm", "start"]
