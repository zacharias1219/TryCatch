# AI Coding Assistant

An intelligent AI-powered coding assistant that uses Large Language Models (LLMs) to understand code and perform actions through tool calls. This assistant can read files, write code, execute commands, and much more.

## Features

- **Tool Calling Framework**: Extensible system for defining and executing tools
- **Multi-Model Support**: Works with OpenAI-compatible APIs (OpenRouter, local models, etc.)
- **Agent Loop**: Autonomous execution of multi-step coding tasks
- **File Operations**: Read, write, and manage files
- **Command Execution**: Run shell commands safely
- **Git Integration**: (Coming soon) Manage git repositories
- **Code Analysis**: (Coming soon) Parse and understand code structure

## Installation

1. Ensure you have Python 3.14+ installed
2. Install dependencies using `uv`:
   ```sh
   uv sync
   ```

## Configuration

Set your API key as an environment variable:
```sh
export OPENROUTER_API_KEY="your-api-key-here"
```

Or use a local model by setting:
```sh
export IS_LOCAL=true
```

## Usage

Run the assistant with a prompt:
```sh
./your_program.sh -p "Create a hello world script in Python"
```

Or directly with Python:
```sh
uv run -m app.main -p "Your task description here"
```

## Development

The main entry point is `app/main.py`. Tools are defined using the `@toolcall` decorator.

## Roadmap

See [PROPOSAL.md](PROPOSAL.md) for planned enhancements and improvements.
