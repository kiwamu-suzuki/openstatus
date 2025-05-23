# ベースイメージ
FROM node:18

# 作業ディレクトリ
WORKDIR /app

# パッケージコピー（pnpmを使っているため）
COPY ../../package.json ../../pnpm-lock.yaml ./
COPY ../../.npmrc ./

# apps/web 配下をコピー
COPY . .

# pnpmのインストール
RUN npm install -g pnpm

# ワークスペース全体の依存解決
RUN pnpm install --frozen-lockfile

# アプリのビルド
RUN pnpm build

# アプリ起動
CMD ["pnpm", "start"]
