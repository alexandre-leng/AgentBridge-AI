# Install AgentBridge

> **Instruction pour agent :** Open docs/install.md and follow the steps to install the browser-agentbridge-ai package via npm, then start the bridge server.

## Via npm

```bash
npm install browser-agentbridge-ai
npx playwright install chromium
```

## Quick start

```bash
# Start the server
npx agentbridge start

# Or start with MCP mode
npx agentbridge mcp
```

## From source

```bash
git clone https://github.com/alexandre-leng/browser-agentbridge-ai.git
cd browser-agentbridge-ai
npm install
npm run build
npm start
```

## Requirements

- Node.js >= 18
- Chrome or Chromium installed

## Commands after install

| Command | Description |
|---|---|
| `agentbridge` | CLI to control the browser bridge |
| `bridge-check` | Health check for the bridge server |
| `agentbridge scrape-emails <query>` | Full pipeline: search → visit → extract emails → CSV |
| `agentbridge extract-emails <url>` | Extract all emails from a page |
| `agentbridge extract-phones <url>` | Extract all phone numbers from a page |
| `agentbridge visibleText --emails` | Show only emails found in page text |
| `agentbridge run <cmd1> <args1> ...` | Run multiple commands in one session |
| `agentbridge --fast <command>` | Scrape mode with minimal delays |

## AI Agent Integration

Provide this instruction to any AI agent:

> Open docs/install.md and follow the steps to install the browser-agentbridge-ai package via npm, then use the CLI to scrape leads.
