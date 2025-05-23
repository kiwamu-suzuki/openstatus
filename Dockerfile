FROM node:18

# 作業ディレクトリを設定
WORKDIR /app

# 依存ファイルをコピー
COPY . .

# pnpmをグローバルインストール
RUN npm install -g pnpm

# 依存関係を解決（Monorepoの全体をインストール）
RUN pnpm install --frozen-lockfile

# Webアプリをビルド
WORKDIR /app/apps/web
RUN pnpm build

# Webアプリを起動
CMD ["pnpm", "start"]
