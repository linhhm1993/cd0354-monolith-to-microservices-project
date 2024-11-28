# Sử dụng Node.js làm base image
FROM node:16

# Thiết lập thư mục làm việc
WORKDIR /usr/src/app

# Sao chép package.json và cài đặt dependencies
COPY package*.json ./
RUN npm install

# Sao chép toàn bộ mã nguồn
COPY . .

# Build dự án (nếu cần)
RUN npm run build

# Expose cổng ứng dụng
EXPOSE 3000

# Chạy ứng dụng
CMD ["npm", "start"]
