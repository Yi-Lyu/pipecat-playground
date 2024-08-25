
# Pipecat Playground

An interactive chatbot project with voice interaction capabilities.

Provide pipecat playground for non-technical personnel to debug the product to achieve the ideal state.

[中文说明](#pipecat-playground-中文说明)

## Quick Start

### 1. Clone the Repository

```bash
git clone https://github.com/Yi-Lyu/pipecat-playground.git
cd pipecat-playground
```

### 2. Configure Environment Variables

Copy the `dot-env.template` file and rename it to `.env`. Then fill in the necessary configuration information:

- `CHATBOT_NAME`: Name of the chatbot
- `DAILY_API_KEY`: API key from the Daily platform
- `ELEVENLABS_API_KEY`: API key from the ElevenLabs platform
- `ELEVENLABS_VOICE_ID`: Selected audio ID from ElevenLabs
- `OPENAI_API_KEY`: OpenAI API key
- `OPENAI_MODEL`: OpenAI model name (default is gpt-4-mini)

### 3. Run the Project

There are two ways to run the program:

#### Option 1: Using Python

1. Ensure Python 3.10 or higher is installed
2. Create and activate a virtual environment:

```bash
python -m venv python-env
source python-env/bin/activate  # On Windows use: python-env\Scripts\activate
```

3. Install dependencies:

```bash
cd app
pip install -r requirements.txt
```

4. Copy the `.env` file to the `app` directory
5. Run the program:

```bash
python3 server.py
```

#### Option 2: Using Docker

1. Ensure Docker is installed
2. Build the Docker image:

```bash
docker build -t pipecat-app .
```

3. Run the Docker container:

```bash
docker run -p 7860:7860 pipecat-app
```

### 4. Using the Chatbot

1. Visit http://localhost:7860/start to create a new chat room
2. The system will automatically create a daily chat room, and the bot will join and start voice interaction with you

## Customizing Bot Prompts

To customize the bot's system prompt, modify the `app/bot_prompt.txt` file. The content of this file will serve as the bot's initial prompt.

Note: If you're running the program using Docker, you need to rebuild the Docker image and run the container again after modifying the `bot_prompt.txt` file.

## Important Notes

- Ensure all necessary API keys are correctly configured in the `.env` file
- When running via Docker, rebuild the image after modifying configuration files
- Access http://localhost:7860/start to begin a new chat session

## Environment Requirements

- Python 3.10 or higher (for Python method)
- Docker (for Docker method)
- Internet connection for API access

## Troubleshooting

If you encounter any issues:
1. Check that all API keys are correct and have sufficient permissions
2. Ensure all dependencies are correctly installed
3. Verify that the required ports are not in use by other applications

For further assistance, please open an issue on the GitHub repository.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.






# Pipecat Playground 中文说明

这是一个交互式聊天机器人项目，支持语音交互。

为非技术人员提供 pipecat 操作平台，以调试产品，达到理想状态。

[English Version](#pipecat-playground)

## 快速开始

### 1. 克隆项目

```bash
git clone https://github.com/Yi-Lyu/pipecat-playground.git
cd pipecat-playground
```

### 2. 配置环境变量

复制 `dot-env.template` 文件并重命名为 `.env`，然后填写必要的配置信息：

- `CHATBOT_NAME`: 机器人名称
- `DAILY_API_KEY`: Daily 平台的 API 密钥
- `ELEVENLABS_API_KEY`: ElevenLabs 平台的 API 密钥
- `ELEVENLABS_VOICE_ID`: ElevenLabs 选择的音频 ID
- `OPENAI_API_KEY`: OpenAI 的 API 密钥
- `OPENAI_MODEL`: OpenAI 的模型名称（默认使用 gpt-4-mini）

### 3. 运行项目

有两种方式可以运行程序：

#### 方式一：使用 Python

1. 确保已安装 Python 3.10 或更高版本
2. 创建并激活虚拟环境：

```bash
python -m venv python-env
source python-env/bin/activate  # 在 Windows 上使用 python-env\Scripts\activate
```

3. 安装依赖：

```bash
cd app
pip install -r requirements.txt
```

4. 将 `.env` 文件复制到 `app` 目录下
5. 运行程序：

```bash
python3 server.py
```

#### 方式二：使用 Docker

1. 确保已安装 Docker
2. 构建 Docker 镜像：

```bash
docker build -t pipecat-app .
```

3. 运行 Docker 容器：

```bash
docker run -p 7860:7860 pipecat-app
```

### 4. 使用聊天机器人

1. 访问 http://localhost:7860/start 来创建一个新的聊天室
2. 系统会自动创建一个 daily 聊天室，并且机器人会自动加入并开始与您进行语音互动

## 自定义机器人提示

如果您想自定义机器人的系统提示，可以修改 `app/bot_prompt.txt` 文件。该文件的内容将作为机器人的初始提示。

注意：如果您使用 Docker 运行程序，每次修改 `bot_prompt.txt` 文件后，需要重新构建 Docker 镜像并运行容器。

## 注意事项

- 确保所有必要的 API 密钥都已正确配置在 `.env` 文件中
- 使用 Docker 方式运行时，修改配置文件后需要重新构建镜像
- 访问 http://localhost:7860/start 来开始新的聊天会话

