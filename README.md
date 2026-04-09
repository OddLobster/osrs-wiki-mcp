# OSRS MCP Server

> Forked from [JayArrowz/mcp-osrs](https://github.com/JayArrowz/mcp-osrs)

MCP Server for interacting with the Old School RuneScape (OSRS) Wiki API and game data files through the Model Context Protocol.

## Changes from upstream

- **Wiki pages converted to clean markdown** — Wiki page content is fetched as HTML and converted to readable markdown using [Turndown](https://github.com/mixmark-io/turndown), with aggressive stripping of images, navboxes, edit links, table of contents, and other wiki chrome. The original upstream returns raw HTML.
- **Search result snippets cleaned** — HTML tags are stripped from wiki search result snippets so they're readable in plain text.

## Tools

This server implements the following tools:

### OSRS Wiki Methods
1. `osrs_wiki_search` - Search the OSRS Wiki for pages matching a search term
2. `osrs_wiki_get_page_info` - Get information about specific pages on the OSRS Wiki
3. `osrs_wiki_parse_page` - Get the parsed content of a specific OSRS Wiki page as clean markdown

### Game Data Search Methods
4. `search_varptypes` - Search for player variables (varps) that store player state and progress
5. `search_varbittypes` - Search for variable bits (varbits) that store individual bits from varps
6. `search_iftypes` - Search for interface definitions used in the game's UI
7. `search_invtypes` - Search for inventory type definitions in the game
8. `search_loctypes` - Search for location/object type definitions in the game world
9. `search_npctypes` - Search for NPC (non-player character) definitions
10. `search_objtypes` - Search for object/item definitions in the game
11. `search_rowtypes` - Search for row definitions used in various interfaces
12. `search_seqtypes` - Search for animation sequence definitions
13. `search_soundtypes` - Search for sound effect definitions in the game
14. `search_spottypes` - Search for spot animation (graphical effect) definitions
15. `search_spritetypes` - Search for sprite image definitions used in the interface
16. `search_tabletypes` - Search for interface tab definitions

### Generic Data File Methods
17. `search_data_file` - Search any file in the data directory for matching entries
18. `get_file_details` - Get details about a file in the data directory
19. `list_data_files` - List available data files in the data directory

## Installation

### Prerequisites
- Node.js (v16 or later)
- npm or yarn

### Using npx
```bash
npx -y @oddlobster/osrs-wiki-mcp
```

### Global install
```bash
npm install -g @oddlobster/osrs-wiki-mcp
```

### From source
```bash
git clone https://github.com/oddlobster/osrs-wiki-mcp.git
cd osrs-wiki-mcp
npm install
npm run build
```

## Usage with Claude Code

### Via npx
```bash
claude mcp add osrs --scope user -- npx -y @oddlobster/osrs-wiki-mcp
```

### Via global install
```bash
npm install -g @oddlobster/osrs-wiki-mcp
claude mcp add osrs --scope user -- osrs-wiki-mcp
```

### Troubleshooting

If the `npx` command doesn't work when adding the MCP server, find your local `npx` binary path and use the full path instead:

```bash
which npx
# e.g. /usr/local/bin/npx

claude mcp add osrs --scope user -- /usr/local/bin/npx -y @oddlobster/osrs-wiki-mcp
```

## Examples

Once the MCP server is added, you can ask Claude Code things like:

- "What's the item ID for dragon scimitar?"
- "Search the wiki for Abyssal whip"
- "What are the stats of the Bandos chestplate?"
- "Find all NPCs with 'dragon' in their name"
- "What varbits are related to quest completion?"
- "List all available game data files"

## Development
```bash
# Install dependencies
npm install

# Start the server in development mode
npm start

# Build the server
npm run build

# Inspect the server
npx @modelcontextprotocol/inspector node dist/index.js
```

## License
This MCP server is licensed under the MIT License. This means you are free to use, modify, and distribute the software, subject to the terms and conditions of the MIT License. For more details, please see the LICENSE file in the project repository.
