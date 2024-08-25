# 使用 Python 3.10 作为基础镜像
FROM python:3.10-slim

# 设置工作目录
WORKDIR /app

# 复制 app 目录到容器中
COPY app .

# 复制 dot-env.template 到 app 目录并重命名为 .env
COPY .env ./.env

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 暴露 7860 端口
EXPOSE 7860

# 运行 server.py
CMD ["python3", "server.py"]
