# ベースイメージ
FROM node:18

WORKDIR /app

# パッケージコピー（pnpm）
COPY ../../package.json ../../pnpm-lock.yaml ./

# apps/web 配下をコピー
COPY . .

RUN npm install -g pnpm
RUN pnpm install --frozen-lockfile
RUN pnpm build

CMD ["pnpm", "start"]
