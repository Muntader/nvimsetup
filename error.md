==============================================================================
CopilotChat:                                                              3 ⚠️

CopilotChat.nvim [core] ~
- ✅ OK nvim: NVIM v0.12.2
  Build type: RelWithDebInfo
  LuaJIT 2.1.1767980792
  Run ":verbose version" for more info
- ✅ OK initialized: true
- ✅ OK temp dir: writable (/tmp/lua_ViSI74)

CopilotChat.nvim [commands] ~
- ✅ OK curl: curl 8.18.0 (x86_64-pc-linux-gnu) libcurl/8.18.0 OpenSSL/3.6.1 zlib/1.3.2 brotli/1.2.0 zstd/1.5.7 libidn2/2.3.8 libpsl/0.21.5 libssh2/1.11.1 nghttp2/1.68.0 ngtcp2/1.20.0 nghttp3/1.15.0 mit-krb5/1.21.3
  Release-Date: 2026-01-07
  Protocols: dict file ftp ftps gopher gophers http https imap imaps ipfs ipns mqtt pop3 pop3s rtsp scp sftp smb smbs smtp smtps telnet tftp ws wss
  Features: alt-svc AsynchDNS brotli GSS-API HSTS HTTP2 HTTP3 HTTPS-proxy IDN IPv6 Kerberos Largefile libz NTLM PSL SPNEGO SSL threadsafe TLS-SRP UnixSockets zstd
- ✅ OK git: git version 2.53.0
- ✅ OK rg: ripgrep 15.1.0

  features:+pcre2
  simd(compile):+SSE2,-SSSE3,-AVX2
  simd(runtime):+SSE2,+SSSE3,+AVX2

  PCRE2 10.45 is available (JIT is available)
- ⚠️ WARNING lynx: missing, optional for improved fetching of url contents. See "https://lynx.invisible-island.net/".
- ✅ OK gh: gh version 2.87.3 (2026-02-24)
  https://github.com/cli/cli/releases/tag/v2.87.3

CopilotChat.nvim [dependencies] ~
- ✅ OK plenary: installed
- ✅ OK copilot: copilot.lua
- ✅ OK vim.ui.select: overridden by `@/home/ox/.local/share/nvim/lazy/telescope-ui-select.nvim/lua/telescope/_extensions/ui-select.lua`
- ⚠️ WARNING tiktoken_core: missing, optional for accurate token counting. See README for installation instructions.
- ✅ OK treesitter[markdown]: installed
- ✅ OK treesitter[markdown/copilotchat]: found
- ⚠️ WARNING treesitter[diff]: missing, optional for better diff highlighting. Install `nvim-treesitter/nvim-treesitter` plugin and run `:TSInstall diff`.

==============================================================================
auto-session:                                                               ✅

Setup ~
- ✅ OK setup() called

Lazy.nvim settings ~
- ✅ OK Lazy.nvim support is enabled
- ✅ OK auto-session is not lazy loaded

Config ~
- ✅ OK No config issues detected

Current Config ~
- You have old config names. You can update your config to:
  {
    auto_restore = true,
    auto_restore_last_session = false,
    auto_save = true,
    bypass_save_filetypes = { "neo-tree", "dashboard", "help", "terminal" },
    log_level = "error",
    pre_save_cmds = { "Neotree close", "AerialClose" },
    root_dir = "/home/ox/.local/share/nvim/sessions/",
    suppressed_dirs = { "~/", "~/Downloads", "/" }
  }

  You can also remove any vim global config settings

General Info ~
- Session directory: /home/ox/.local/share/nvim/sessions/
- Current session: 
- Current session file: 
- Selected picker: telescope

==============================================================================
conform:                                                                  1 ⚠️

conform.nvim report ~
- Log file: /home/ox/.local/state/nvim/conform.log
- ✅ OK gofumpt ready (go)
- ✅ OK goimports ready (go)
- ✅ OK prettier ready (svelte, markdown, yaml, scss, javascript, typescript, typescriptreact, vue, css, html, json, javascriptreact)
- ⚠️ WARNING prettierd unavailable: Command 'prettierd' not found
- ✅ OK sql_formatter ready (sql)
- ✅ OK stylua ready (lua)
- ✅ OK templ ready (templ)

==============================================================================
copilot:                                                                  2 ⚠️

{copilot.lua} ~
- {copilot.lua} GitHub Copilot plugin for Neovim

Copilot Dependencies ~
- ✅ OK `node` found: v24.15.0

Copilot Authentication ~
- No environment token set (`GITHUB_COPILOT_TOKEN` or `GH_COPILOT_TOKEN`)
- ✅ OK Local credentials file found
- Location: `/home/ox/.config/github-copilot/apps.json`

Copilot LSP Status ~
- ✅ OK LSP client is available and running
- Client ID: 1
- ⚠️ WARNING LSP authentication status: not authenticated
- For detailed authentication status, run `:Copilot status`

Copilot Configuration ~
- ⚠️ WARNING Suggestions disabled in configuration
- Enable with `suggestion = { enabled = true }` in setup()
- Panel disabled in configuration
- Enable with `panel = { enabled = true }` in setup()
- Log file: /home/ox/.local/state/nvim/copilot-lua.log

==============================================================================
lazy:                                                                     2 ⚠️

lazy.nvim ~
- {lazy.nvim} version `11.17.5`
- ✅ OK {git} `version 2.53.0`
- ✅ OK no existing packages found by other package managers
- ✅ OK packer_compiled.lua not found

luarocks ~
- checking `luarocks` installation
- ✅ OK no plugins require `luarocks`, so you can ignore any warnings below
- ✅ OK {luarocks} `/usr/bin/luarocks 3.13.0`
- ⚠️ WARNING `lua` version `5.1` needed, but found `Lua 5.4.8  Copyright (C) 1994-2025 Lua.org, PUC-Rio`
- ⚠️ WARNING {lua5.1} or {lua} or {lua-5.1} version `5.1` not installed

==============================================================================
lspconfig:                                                                  ✅

- Skipped. This healthcheck is redundant with `:checkhealth vim.lsp`.

==============================================================================
luasnip:                                                                    ✅

luasnip ~
- ✅ OK jsregexp is installed

==============================================================================
mason:                                                                    1 ⚠️

mason.nvim ~
- ✅ OK mason.nvim version v2.3.0
- ✅ OK PATH: prepend
- ✅ OK Providers: 
    mason.providers.registry-api
    mason.providers.client
- ✅ OK neovim version >= 0.10.0

mason.nvim [Registries] ~
- ✅ OK Registry `github.com/mason-org/mason-registry version: 2026-05-25-frilly-bait` is installed.
- ✅ OK Registry `SynthesizedRegistrySource` is installed.

mason.nvim [Core utils] ~
- ✅ OK unzip: `UnZip 6.00 of 20 April 2009, by Info-ZIP.  Maintained by C. Spieler.  Send`
- ✅ OK wget: `GNU Wget 1.25.0, a non-interactive network retriever.`
- ✅ OK curl: `curl 8.18.0 (x86_64-pc-linux-gnu) libcurl/8.18.0 OpenSSL/3.6.1 zlib/1.3.2 brotli/1.2.0 zstd/1.5.7 libidn2/2.3.8 libpsl/0.21.5 libssh2/1.11.1 nghttp2/1.68.0 ngtcp2/1.20.0 nghttp3/1.15.0 mit-krb5/1.21.3`
- ✅ OK gzip: `gzip 1.14-modified`
- ✅ OK tar: `tar (GNU tar) 1.35`
- ✅ OK bash: `GNU bash, version 5.3.9(1)-release (x86_64-pc-linux-gnu)`

mason.nvim [Languages] ~
- ✅ OK cargo: `cargo 1.93.1 (083ac5135 2025-12-15) (Arch Linux rust 1:1.93.1-1)`
- ✅ OK Go: `go version go1.26.0-X:nodwarf5 linux/amd64`
- ✅ OK Ruby: `ruby 3.4.8 (2025-12-17 revision 995b59f666) +PRISM [x86_64-linux]`
- ✅ OK luarocks: `/usr/bin/luarocks 3.13.0`
- ✅ OK PHP: `PHP 8.5.3 (cli) (built: Feb 12 2026 16:29:14) (NTS)`
- ✅ OK node: `v24.15.0`
- ✅ OK Composer: `Composer version 2.9.5 2026-01-29 11:40:53`
- ⚠️ WARNING julia: not available
  - ADVICE:
    - spawn: julia failed with exit code - and signal -. Could not find executable "julia" in PATH.

- ✅ OK RubyGem: `3.6.9`
- ✅ OK python: `Python 3.14.5`
- ✅ OK java: `openjdk version "21.0.10" 2026-01-20`
- ✅ OK npm: `11.12.1`
- ✅ OK JAVA_HOME: `openjdk version "21.0.10" 2026-01-20`
- ✅ OK javac: `javac 21.0.10`
- ✅ OK pip: `pip 26.0.1 from /usr/lib/python3.14/site-packages/pip (python 3.14)`
- ✅ OK python venv: `Ok`

==============================================================================
mason-lspconfig:                                                            ✅

mason-lspconfig.nvim ~
- ✅ OK Neovim v0.11
- ✅ OK mason.nvim v2

==============================================================================
neo-tree:                                                                   ✅

Dependencies ~
- ✅ OK nvim-lua/plenary.nvim is installed
- ✅ OK MunifTanjim/nui.nvim is installed

Optional icons ~
- ✅ OK nvim-tree/nvim-web-devicons is installed

Optional preview image support (only need one): ~
- ✅ OK folke/snacks.nvim is installed
- 3rd/image.nvim is not installed

Optional LSP integration for commands (like copy/delete/move/etc.) ~
- antosha417/nvim-lsp-file-operations is not installed

Optional window picker (for _with_window_picker commands) ~
- s1n7ax/nvim-window-picker is not installed

Configuration ~
- ✅ OK Configuration conforms to the neotree.Config.Base schema

==============================================================================
noice:                                                                      ✅

noice.nvim ~
- ✅ OK *Neovim* >= 0.9.0
- ✅ OK You're using a GUI that should work ok
- ✅ OK *vim.go.lazyredraw* is not enabled
- ✅ OK `snacks.nvim` is installed
- ✅ OK `nvim-notify` is installed
- ✅ OK {TreeSitter} `vim` parser is installed
- ✅ OK {TreeSitter} `regex` parser is installed
- ✅ OK {TreeSitter} `lua` parser is installed
- ✅ OK {TreeSitter} `bash` parser is installed
- ✅ OK {TreeSitter} `markdown` parser is installed
- ✅ OK {TreeSitter} `markdown_inline` parser is installed
- ✅ OK `vim.notify` is set to **Noice**
- ✅ OK `vim.lsp.buf.hover` is set to **Noice**
- ✅ OK `vim.lsp.buf.signature_help` is set to **Noice**
- ✅ OK `vim.lsp.util.convert_input_to_markdown_lines` is set to **Noice**
- ✅ OK `vim.lsp.util.stylize_markdown` is set to **Noice**
- ✅ OK `cmp.entry.get_documentation` is set to **Noice**

==============================================================================
nvim-treesitter:                                                            ✅

Installation ~
- ✅ OK `tree-sitter` found 0.25.3 (2a835ee029dca1c325e6f1c01dbce40396f6123e) (parser generator, only needed for :TSInstallFromGrammar)
- ✅ OK `node` found v24.15.0 (only needed for :TSInstallFromGrammar)
- ✅ OK `git` executable found.
- ✅ OK `cc` executable found. Selected from { vim.NIL, "cc", "gcc", "clang", "cl", "zig" }
  Version: cc (GCC) 16.1.1 20260430
- ✅ OK Neovim was compiled with tree-sitter runtime ABI version 15 (required >=13). Parsers must be compatible with runtime ABI.

OS Info:
{
  machine = "x86_64",
  release = "6.18.9-arch1-2",
  sysname = "Linux",
  version = "#1 SMP PREEMPT_DYNAMIC Mon, 09 Feb 2026 17:16:33 +0000"
} ~

Parser/Features         H L F I J
  - ada                 ✓ ✓ ✓ . ✓
  - agda                ✓ . ✓ . ✓
  - angular             ✓ ✓ ✓ ✓ ✓
  - apex                ✓ ✓ ✓ . ✓
  - arduino             ✓ ✓ ✓ ✓ ✓
  - asm                 ✓ . . . ✓
  - astro               ✓ ✓ ✓ ✓ ✓
  - authzed             ✓ . . . ✓
  - awk                 ✓ . . . ✓
  - bash                ✓ ✓ ✓ . ✓
  - bass                ✓ ✓ ✓ ✓ ✓
  - beancount           ✓ . ✓ . ✓
  - bibtex              ✓ . ✓ ✓ ✓
  - bicep               ✓ ✓ ✓ ✓ ✓
  - bitbake             ✓ ✓ ✓ ✓ ✓
  - blade               ✓ . ✓ ✓ ✓
  - blueprint           ✓ . . . ✓
  - bp                  ✓ ✓ ✓ ✓ ✓
  - brightscript        ✓ . ✓ ✓ ✓
  - c                   ✓ ✓ ✓ ✓ ✓
  - c_sharp             ✓ ✓ ✓ . ✓
  - caddy               ✓ . ✓ ✓ ✓
  - cairo               ✓ ✓ ✓ ✓ ✓
  - capnp               ✓ ✓ ✓ ✓ ✓
  - chatito             ✓ ✓ ✓ ✓ ✓
  - circom              ✓ ✓ ✓ . ✓
  - clojure             ✓ ✓ ✓ . ✓
  - cmake               ✓ . ✓ ✓ ✓
  - comment             ✓ . . . .
  - commonlisp          ✓ ✓ ✓ . ✓
  - cooklang            ✓ . . . ✓
  - corn                ✓ ✓ ✓ ✓ ✓
  - cpon                ✓ ✓ ✓ ✓ ✓
  - cpp                 ✓ ✓ ✓ ✓ ✓
  - css                 ✓ . ✓ ✓ ✓
  - csv                 ✓ . . . .
  - cuda                ✓ ✓ ✓ ✓ ✓
  - cue                 ✓ ✓ ✓ ✓ ✓
  - cylc                ✓ . ✓ ✓ ✓
  - d                   ✓ ✓ ✓ ✓ ✓
  - dart                ✓ ✓ ✓ ✓ ✓
  - desktop             ✓ . ✓ . ✓
  - devicetree          ✓ ✓ ✓ ✓ ✓
  - dhall               ✓ . ✓ . ✓
  - disassembly         ✓ . . . ✓
  - djot                ✓ ✓ ✓ ✓ ✓
  - dockerfile          ✓ . . . ✓
  - dot                 ✓ . . ✓ ✓
  - doxygen             ✓ . . ✓ ✓
  - dtd                 ✓ ✓ ✓ . ✓
  - earthfile           ✓ . . . ✓
  - ebnf                ✓ . . . ✓
  - editorconfig        ✓ . ✓ . ✓
  - eds                 ✓ . ✓ . .
  - eex                 ✓ . . . ✓
  - elixir              ✓ ✓ ✓ ✓ ✓
  - elm                 ✓ . ✓ . ✓
  - elsa                ✓ ✓ ✓ ✓ ✓
  - elvish              ✓ . . . ✓
  - embedded_template   ✓ . . . ✓
  - enforce             ✓ ✓ ✓ ✓ ✓
  - erlang              ✓ . ✓ . ✓
  - facility            ✓ . ✓ ✓ ✓
  - faust               ✓ . . . ✓
  - fennel              ✓ ✓ ✓ . ✓
  - fidl                ✓ . ✓ . ✓
  - firrtl              ✓ ✓ ✓ ✓ ✓
  - fish                ✓ ✓ ✓ ✓ ✓
  - foam                ✓ ✓ ✓ ✓ ✓
  - forth               ✓ ✓ ✓ ✓ ✓
  - go                  ✓ ✓ ✓ ✓ ✓
  - gomod               ✓ . . . ✓
  - gosum               ✓ . . . .
  - gotmpl              ✓ ✓ ✓ . ✓
  - gowork              ✓ . . . ✓
  - graphql             ✓ . . ✓ ✓
  - groovy              ✓ ✓ ✓ ✓ ✓
  - html                ✓ ✓ ✓ ✓ ✓
  - ini                 ✓ . ✓ . ✓
  - javascript          ✓ ✓ ✓ ✓ ✓
  - jsdoc               ✓ . . . .
  - json                ✓ ✓ ✓ ✓ .
  - jsonc               ✓ ✓ ✓ ✓ ✓
  - lua                 ✓ ✓ ✓ ✓ ✓
  - make                ✓ . ✓ . ✓
  - markdown            ✓ . ✓ ✓ ✓
  - markdown_inline     ✓ . . . ✓
  - pem                 ✓ . ✓ . ✓
  - prisma              ✓ . ✓ . ✓
  - python              ✓ ✓ ✓ ✓ ✓
  - query               ✓ ✓ ✓ ✓ ✓
  - regex               ✓ . . . .
  - scss                ✓ . ✓ ✓ ✓
  - sql                 ✓ . ✓ ✓ ✓
  - svelte              ✓ ✓ ✓ ✓ ✓
  - templ               ✓ . ✓ . ✓
  - terraform           ✓ . ✓ ✓ ✓
  - tmux                ✓ . . . ✓
  - toml                ✓ ✓ ✓ ✓ ✓
  - tsx                 ✓ ✓ ✓ ✓ ✓
  - typescript          ✓ ✓ ✓ ✓ ✓
  - vim                 ✓ ✓ ✓ . ✓
  - vimdoc              ✓ . . . ✓
  - vue                 ✓ . ✓ ✓ ✓
  - xml                 ✓ ✓ ✓ ✓ ✓
  - yaml                ✓ ✓ ✓ ✓ ✓

  Legend: H[ighlight], L[ocals], F[olds], I[ndents], In[j]ections
         +) multiple parsers found, only one will be used
         x) errors found in the query, try to run :TSUpdate {lang} ~

==============================================================================
snacks:                                                            16 ⚠️  6 ❌

Snacks ~
- ✅ OK setup called

Snacks.bigfile ~
- ✅ OK setup {enabled}

Snacks.dashboard ~
- ⚠️ WARNING setup {disabled}

Snacks.explorer ~
- ⚠️ WARNING setup {disabled}
- ✅ OK 'trash' `0.24.5.26`
- ✅ OK 'gio' `2.86.4`
- ✅ OK 'kioclient5' `kioclient5 6.6.1`
- ✅ OK 'kioclient' `kioclient 6.6.1`
- ✅ OK System trash command found

Snacks.image ~
- ⚠️ WARNING setup {disabled}
- ❌ ERROR None of the tools found: 'kitty', 'wezterm', 'ghostty'
- ✅ OK 'magick' `Version: ImageMagick 7.1.2-15 Q16-HDRI x86_64 818ee6363:20260222 https://imagemagick.org`
- ✅ OK 'convert' `WARNING: The convert command is deprecated in IMv7, use "magick" instead of "convert" or "magick convert"`
- ✅ OK `tmux` detected and supported
- ✅ OK Terminal Dimensions:
  - {size}: `1630` x `1320` pixels
  - {scale}: `1.25`
  - {cell}: `10` x `22` pixels
- ✅ OK Available Treesitter languages:
    `css`, `html`, `javascript`, `markdown_inline`, `markdown`, `scss`, `svelte`, `tsx`, `vue`
- ⚠️ WARNING Missing Treesitter languages:
    `latex`, `norg`, `typst`
- ⚠️ WARNING Image rendering in docs with missing treesitter parsers won't work
- ✅ OK 'gs' `10.06.0`
- ✅ OK PDF files are supported
- ❌ ERROR None of the tools found: 'tectonic', 'pdflatex'
- ⚠️ WARNING `tectonic` or `pdflatex` is required to render LaTeX math expressions
- ❌ ERROR Tool not found: 'mmdc'
- ⚠️ WARNING `mmdc` is required to render Mermaid diagrams
- ❌ ERROR your terminal does not support the kitty graphics protocol
- supported terminals: `kitty`, `wezterm`, `ghostty`

Snacks.input ~
- ⚠️ WARNING setup {disabled}

Snacks.lazygit ~
- ❌ ERROR {lazygit} not installed

Snacks.notifier ~
- ⚠️ WARNING setup {disabled}
- ❌ ERROR is not ready

Snacks.picker ~
- ⚠️ WARNING setup {disabled}
- ⚠️ WARNING `vim.ui.select` for `Snacks.picker` is not enabled
- ✅ OK Available Treesitter languages:
    `regex`
- ✅ OK 'git' `git version 2.53.0`
- ✅ OK 'rg' `ripgrep 15.1.0`
- ✅ OK `Snacks.picker.grep()` is available
- ✅ OK 'fd' `fd 10.3.0`
- ✅ OK `Snacks.picker.files()` is available
- ✅ OK `Snacks.picker.explorer()` is available
- ✅ OK `SQLite3` is available

Snacks.quickfile ~
- ⚠️ WARNING setup {disabled}

Snacks.scope ~
- ⚠️ WARNING setup {disabled}

Snacks.scroll ~
- ⚠️ WARNING setup {disabled}

Snacks.statuscolumn ~
- ⚠️ WARNING setup {disabled}

Snacks.terminal ~
- ✅ OK shell configured
  - `vim.o.shell`: /usr/bin/zsh
  - `parsed`: { "/usr/bin/zsh" }

Snacks.toggle ~
- ✅ OK {which-key} is installed

Snacks.words ~
- ⚠️ WARNING setup {disabled}

==============================================================================
telescope:                                                                  ✅

Checking for required plugins ~
- ✅ OK plenary installed.

Checking external dependencies ~
- ✅ OK rg: found ripgrep 15.1.0
- ✅ OK fd: found fd 10.3.0

===== Installed extensions ===== ~

Telescope Extension: `fzf` ~
- ✅ OK lib working as expected
- ✅ OK file_sorter correctly configured
- ✅ OK generic_sorter correctly configured

Telescope Extension: `notify` ~
- No healthcheck provided

Telescope Extension: `project` ~
- No healthcheck provided

Telescope Extension: `session-lens` ~
- No healthcheck provided

Telescope Extension: `ui-select` ~
- No healthcheck provided

==============================================================================
typescript-tools:                                                           ✅

typescript-tools.nvim ~
- ✅ OK Neovim 0.12.2 (>= 0.11 required)

==============================================================================
vim.deprecated:                                                             ✅

- ✅ OK No deprecated functions detected

==============================================================================
vim.health:                                                                 ✅

System Info ~
- ✅ OK Up to date (0.12.2)
- Nvim version: `v0.12.2` 
- Operating system: Linux 6.18.9-arch1-2
- Terminal: tmux 3.6a
- $TERM: tmux-256color

Configuration ~
- ✅ OK no issues found

Runtime ~
- ✅ OK $VIMRUNTIME: /usr/share/nvim/runtime

Performance ~
- ✅ OK Build type: RelWithDebInfo

Remote Plugins ~
- ✅ OK Up to date

Terminal ~
- key_backspace (kbs) terminfo entry: `key_backspace=\177`
- key_dc (kdch1) terminfo entry: `key_dc=\E[3~`
- $TERM_PROGRAM="tmux"
- $COLORTERM="truecolor"

tmux ~
- ✅ OK escape-time: 10
- ✅ OK focus-events: on
- $TERM: tmux-256color

External Tools ~
- ✅ OK ripgrep 15.1.0 (/usr/bin/rg)
- ✅ OK vim.ui.open: handler found (xdg-open)
- ✅ OK git version 2.53.0 (/usr/bin/git)
- ✅ OK curl 8.18.0 (/usr/bin/curl)
  curl 8.18.0 (x86_64-pc-linux-gnu) libcurl/8.18.0 OpenSSL/3.6.1 zlib/1.3.2 brotli/1.2.0 zstd/1.5.7 libidn2/2.3.8 libpsl/0.21.5 libssh2/1.11.1 nghttp2/1.68.0 ngtcp2/1.20.0 nghttp3/1.15.0 mit-krb5/1.21.3
  Release-Date: 2026-01-07
  Protocols: dict file ftp ftps gopher gophers http https imap imaps ipfs ipns mqtt pop3 pop3s rtsp scp sftp smb smbs smtp smtps telnet tftp ws wss
  Features: alt-svc AsynchDNS brotli GSS-API HSTS HTTP2 HTTP3 HTTPS-proxy IDN IPv6 Kerberos Largefile libz NTLM PSL SPNEGO SSL threadsafe TLS-SRP UnixSockets zstd

==============================================================================
vim.lsp:                                                                  7 ⚠️

- LSP log level : WARN
- Log path: /home/ox/.local/state/nvim/lsp.log
- ⚠️ WARNING Log size: 929497 KB

vim.lsp: Active Features ~
- folding_range
  - Active buffers:

- inline_completion
  - Active buffers:

- document_color
  - Active buffers:

- semantic_tokens
  - Active buffers:


vim.lsp: Active Clients ~
- copilot (id: 1)
  - Version: 1.494.0
  - Root directory: ~/Projects/2026/kiro
  - Command: { "node", "--experimental-sqlite", "/home/ox/.local/share/nvim/lazy/copilot.lua/copilot/js/language-server.js", "--stdio" }
  - Settings: {
      advanced = {
        timeout = 30000
      },
      telemetry = {
        telemetryLevel = "all"
      }
    }
  - Attached buffers: 

vim.lsp: Enabled Configurations ~
- ⚠️ WARNING 'css-modules-language-server' is not executable. Configuration will not be used.
- css_modules:
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = true,
            deprecatedSupport = true,
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1, 2 }
            },
            labelDetailsSupport = true,
            preselectSupport = true,
            resolveSupport = {
              properties = { "documentation", "additionalTextEdits", "insertTextFormat", "insertTextMode", "command" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          dynamicRegistration = false,
          insertTextMode = 1
        }
      }
    }
  - cmd: { "css-modules-language-server", "--stdio" }
  - filetypes: css, scss, less
  - on_attach: <function @/home/ox/.config/nvim/lua/config/lsp.lua:40>
  - root_markers: { "package.json", ".git" }

- cssls:
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = true,
            deprecatedSupport = true,
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1, 2 }
            },
            labelDetailsSupport = true,
            preselectSupport = true,
            resolveSupport = {
              properties = { "documentation", "additionalTextEdits", "insertTextFormat", "insertTextMode", "command" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          dynamicRegistration = false,
          insertTextMode = 1
        }
      }
    }
  - cmd: { "vscode-css-language-server", "--stdio" }
  - filetypes: css, scss, less
  - init_options: {
      provideFormatter = true
    }
  - on_attach: <function @/home/ox/.config/nvim/lua/config/lsp.lua:40>
  - root_markers: { ".git" }
  - settings: {
      css = {
        validate = true
      },
      less = {
        validate = true
      },
      scss = {
        validate = true
      }
    }

- cssmodules_ls:
  - cmd: { "cssmodules-language-server" }
  - filetypes: javascript, javascriptreact, typescript, typescriptreact
  - root_markers: { "package.json" }

- dockerls:
  - cmd: { "docker-langserver", "--stdio" }
  - filetypes: dockerfile
  - root_markers: { "Dockerfile" }

- emmet_ls:
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = true,
            deprecatedSupport = true,
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1, 2 }
            },
            labelDetailsSupport = true,
            preselectSupport = true,
            resolveSupport = {
              properties = { "documentation", "additionalTextEdits", "insertTextFormat", "insertTextMode", "command" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          dynamicRegistration = false,
          insertTextMode = 1
        }
      }
    }
  - cmd: { "emmet-ls", "--stdio" }
  - filetypes: css, html, less, sass, scss, pug, eruby, xml, templ, javascriptreact, typescriptreact
  - init_options: {
      html = {
        options = {
          ["bem.enabled"] = true
        }
      }
    }
  - on_attach: <function @/home/ox/.config/nvim/lua/config/lsp.lua:40>
  - root_markers: { ".git" }

- ⚠️ WARNING Unknown filetype 'gotmpl' (Hint: filename extension != filetype).
- gopls:
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = true,
            deprecatedSupport = true,
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1, 2 }
            },
            labelDetailsSupport = true,
            preselectSupport = true,
            resolveSupport = {
              properties = { "documentation", "additionalTextEdits", "insertTextFormat", "insertTextMode", "command" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          dynamicRegistration = false,
          insertTextMode = 1
        }
      }
    }
  - cmd: { "gopls" }
  - filetypes: go, gomod, gowork, gotmpl
  - on_attach: <function @/home/ox/.config/nvim/lua/config/lsp.lua:40>
  - root_dir: <function @/home/ox/.local/share/nvim/lazy/nvim-lspconfig/lsp/gopls.lua:92>
  - root_markers: { "go.work", "go.mod", ".git" }
  - settings: {
      gopls = {
        analyses = {
          nilness = true,
          shadow = true,
          unusedparams = true,
          unusedwrite = true
        },
        codelenses = {
          gc_details = true,
          generate = true,
          regenerate_cgo = true,
          tidy = true,
          upgrade_dependency = true
        },
        completeUnimported = true,
        diagnosticsDelay = "500ms",
        directoryFilters = { "-**/node_modules", "-**/.git", "-**/vendor" },
        experimentalPostfixCompletions = true,
        experimentalWorkspaceModule = true,
        gofumpt = true,
        hints = {
          assignVariableTypes = true,
          compositeLiteralFields = true,
          constantValues = true,
          functionTypeParameters = true,
          parameterNames = true,
          rangeVariableTypes = true
        },
        matcher = "Fuzzy",
        staticcheck = true,
        templateExtensions = { "templ" },
        usePlaceholders = true
      }
    }

- html:
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = true,
            deprecatedSupport = true,
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1, 2 }
            },
            labelDetailsSupport = true,
            preselectSupport = true,
            resolveSupport = {
              properties = { "documentation", "additionalTextEdits", "insertTextFormat", "insertTextMode", "command" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          dynamicRegistration = false,
          insertTextMode = 1
        }
      }
    }
  - cmd: { "vscode-html-language-server", "--stdio" }
  - filetypes: html, templ
  - init_options: {
      configurationSection = { "html", "css", "javascript" },
      embeddedLanguages = {
        css = true,
        javascript = true
      },
      provideFormatter = true
    }
  - on_attach: <function @/home/ox/.config/nvim/lua/config/lsp.lua:40>
  - root_markers: { ".git" }
  - settings: {}

- ⚠️ WARNING 'htmx-lsp' is not executable. Configuration will not be used.
- htmx:
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = true,
            deprecatedSupport = true,
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1, 2 }
            },
            labelDetailsSupport = true,
            preselectSupport = true,
            resolveSupport = {
              properties = { "documentation", "additionalTextEdits", "insertTextFormat", "insertTextMode", "command" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          dynamicRegistration = false,
          insertTextMode = 1
        }
      }
    }
  - cmd: { "htmx-lsp" }
  - filetypes: html, templ
  - on_attach: <function @/home/ox/.config/nvim/lua/config/lsp.lua:40>
  - root_markers: { ".git" }

- jsonls:
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = true,
            deprecatedSupport = true,
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1, 2 }
            },
            labelDetailsSupport = true,
            preselectSupport = true,
            resolveSupport = {
              properties = { "documentation", "additionalTextEdits", "insertTextFormat", "insertTextMode", "command" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          dynamicRegistration = false,
          insertTextMode = 1
        }
      }
    }
  - cmd: { "vscode-json-language-server", "--stdio" }
  - filetypes: json, jsonc
  - init_options: {
      provideFormatter = true
    }
  - on_attach: <function @/home/ox/.config/nvim/lua/config/lsp.lua:40>
  - root_markers: { ".git" }
  - settings: {
      json = {
        validate = {
          enable = true
        }
      }
    }

- lua_ls:
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = true,
            deprecatedSupport = true,
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1, 2 }
            },
            labelDetailsSupport = true,
            preselectSupport = true,
            resolveSupport = {
              properties = { "documentation", "additionalTextEdits", "insertTextFormat", "insertTextMode", "command" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          dynamicRegistration = false,
          insertTextMode = 1
        }
      }
    }
  - cmd: { "lua-language-server" }
  - filetypes: lua
  - on_attach: <function @/home/ox/.config/nvim/lua/config/lsp.lua:40>
  - root_markers: { ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml", ".git" }
  - settings: {
      Lua = {
        codeLens = {
          enable = true
        },
        diagnostics = {
          globals = { "vim" }
        },
        hint = {
          enable = true,
          semicolon = "Disable"
        },
        telemetry = {
          enable = false
        },
        workspace = {
          checkThirdParty = false,
          library = { "/home/ox/.config/nvim", "/home/ox/.local/share/nvim/site", "/home/ox/.local/share/nvim/lazy/lazy.nvim", "/home/ox/.local/share/nvim/lazy/cmp-nvim-lsp", "/home/ox/.local/share/nvim/lazy/mason-lspconfig.nvim", "/home/ox/.local/share/nvim/lazy/mason.nvim", "/home/ox/.local/share/nvim/lazy/nui.nvim", "/home/ox/.local/share/nvim/lazy/neo-tree.nvim", "/home/ox/.local/share/nvim/lazy/github-nvim-theme", "/home/ox/.local/share/nvim/lazy/which-key.nvim", "/home/ox/.local/share/nvim/lazy/nvim-web-devicons", "/home/ox/.local/share/nvim/lazy/nvim-ts-context-commentstring", "/home/ox/.local/share/nvim/lazy/nvim-ts-autotag", "/home/ox/.local/share/nvim/lazy/nvim-treesitter-context", "/home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects", "/home/ox/.local/share/nvim/lazy/nvim-treesitter", "/home/ox/.local/share/nvim/lazy/aerial.nvim", "/home/ox/.local/share/nvim/lazy/nvim-scrollview", "/home/ox/.local/share/nvim/lazy/telescope-file-browser.nvim", "/home/ox/.local/share/nvim/lazy/telescope-fzf-native.nvim", "/home/ox/.local/share/nvim/lazy/plenary.nvim", "/home/ox/.local/share/nvim/lazy/telescope.nvim", "/home/ox/.local/share/nvim/lazy/telescope-ui-select.nvim", "/home/ox/.local/share/nvim/lazy/inc-rename.nvim", "/home/ox/.local/share/nvim/lazy/friendly-snippets", "/home/ox/.local/share/nvim/lazy/LuaSnip", "/home/ox/.local/share/nvim/lazy/winshift.nvim", "/home/ox/.local/share/nvim/lazy/scope.nvim", "/home/ox/.local/share/nvim/lazy/auto-session", "/home/ox/.local/share/nvim/lazy/snacks.nvim", "/home/ox/.local/share/nvim/lazy/catppuccin", "/home/ox/.local/share/nvim/lazy/tokyonight.nvim", "/usr/share/nvim/runtime", "/usr/share/nvim/runtime/pack/dist/opt/matchit", "/usr/lib64/nvim", "/home/ox/.local/state/nvim/lazy/readme", "/home/ox/.local/share/nvim/lazy/cmp-nvim-lsp/after", "/home/ox/.local/share/nvim/lazy/mason-lspconfig.nvim/after", "/home/ox/.local/share/nvim/lazy/catppuccin/after" }
        }
      }
    }

- sqlls:
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = true,
            deprecatedSupport = true,
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1, 2 }
            },
            labelDetailsSupport = true,
            preselectSupport = true,
            resolveSupport = {
              properties = { "documentation", "additionalTextEdits", "insertTextFormat", "insertTextMode", "command" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          dynamicRegistration = false,
          insertTextMode = 1
        }
      }
    }
  - cmd: { "sql-language-server", "up", "--method", "stdio" }
  - filetypes: sql, mysql
  - on_attach: <function @/home/ox/.config/nvim/lua/config/lsp.lua:40>
  - root_markers: { ".git" }
  - settings: {}

- stylua:
  - cmd: { "stylua", "--lsp" }
  - filetypes: lua
  - root_markers: { ".stylua.toml", "stylua.toml", ".editorconfig" }

- svelte:
  - cmd: { "svelteserver", "--stdio" }
  - filetypes: svelte
  - on_attach: <function @/home/ox/.local/share/nvim/lazy/nvim-lspconfig/lsp/svelte.lua:43>
  - root_dir: <function @/home/ox/.local/share/nvim/lazy/nvim-lspconfig/lsp/svelte.lua:31>
  - settings: {
      typescript = {
        inlayHints = {
          enumMemberValues = {
            enabled = true
          },
          functionLikeReturnTypes = {
            enabled = true
          },
          parameterNames = {
            enabled = "literals",
            suppressWhenArgumentMatchesName = true
          },
          parameterTypes = {
            enabled = true
          },
          propertyDeclarationTypes = {
            enabled = true
          },
          variableTypes = {
            enabled = true
          }
        }
      }
    }

- tailwindcss:
  - before_init: <function @/home/ox/.local/share/nvim/lazy/nvim-lspconfig/lsp/tailwindcss.lua:119>
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = true,
            deprecatedSupport = true,
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1, 2 }
            },
            labelDetailsSupport = true,
            preselectSupport = true,
            resolveSupport = {
              properties = { "documentation", "additionalTextEdits", "insertTextFormat", "insertTextMode", "command" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          dynamicRegistration = false,
          insertTextMode = 1
        }
      },
      workspace = {
        didChangeWatchedFiles = {
          dynamicRegistration = true
        }
      }
    }
  - cmd: { "tailwindcss-language-server", "--stdio" }
  - filetypes: html, templ, css, scss, javascript, javascriptreact, typescript, typescriptreact, svelte, vue
  - on_attach: <function @/home/ox/.config/nvim/lua/config/lsp.lua:40>
  - root_dir: <function @/home/ox/.local/share/nvim/lazy/nvim-lspconfig/lsp/tailwindcss.lua:125>
  - root_markers: { "tailwind.config.js", "tailwind.config.cjs", "tailwind.config.mjs", "tailwind.config.ts", ".git" }
  - settings: {
      tailwindCSS = {
        classAttributes = { "class", "className", "ngClass", "hx-class" },
        experimental = {
          classRegex = { "class:[^\\s]*", 'class="([^"]*)"', 'className="([^"]*)"', 'hx-class="([^"]*)"' }
        },
        includeLanguages = {
          eelixir = "html-eex",
          elixir = "phoenix-heex",
          eruby = "erb",
          heex = "phoenix-heex",
          htmlangular = "html",
          templ = "html"
        },
        lint = {
          cssConflict = "warning",
          invalidApply = "error",
          invalidConfigPath = "error",
          invalidScreen = "error",
          invalidTailwindDirective = "error",
          invalidVariant = "error",
          recommendedVariantOrder = "warning"
        },
        validate = true
      }
    }
  - workspace_required: true

- templ:
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = true,
            deprecatedSupport = true,
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1, 2 }
            },
            labelDetailsSupport = true,
            preselectSupport = true,
            resolveSupport = {
              properties = { "documentation", "additionalTextEdits", "insertTextFormat", "insertTextMode", "command" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          dynamicRegistration = false,
          insertTextMode = 1
        }
      }
    }
  - cmd: { "templ", "lsp" }
  - filetypes: templ
  - on_attach: <function @/home/ox/.config/nvim/lua/config/lsp.lua:40>
  - root_markers: { "go.mod", ".git" }

- ts_ls:
  - cmd: <function @/home/ox/.local/share/nvim/lazy/nvim-lspconfig/lsp/ts_ls.lua:79>
  - commands: {
      ["editor.action.showReferences"] = <function 1>
    }
  - filetypes: javascript, javascriptreact, typescript, typescriptreact
  - handlers: {
      ["_typescript.rename"] = <function 1>
    }
  - init_options: {
      hostInfo = "neovim"
    }
  - on_attach: <function @/home/ox/.local/share/nvim/lazy/nvim-lspconfig/lsp/ts_ls.lua:162>
  - root_dir: <function @/home/ox/.local/share/nvim/lazy/nvim-lspconfig/lsp/ts_ls.lua:95>

- ⚠️ WARNING Unknown filetype 'javascript.jsx' (Hint: filename extension != filetype).
- ⚠️ WARNING Unknown filetype 'typescript.tsx' (Hint: filename extension != filetype).
- typescript-tools:
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = true,
            deprecatedSupport = true,
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1, 2 }
            },
            labelDetailsSupport = true,
            preselectSupport = true,
            resolveSupport = {
              properties = { "documentation", "additionalTextEdits", "insertTextFormat", "insertTextMode", "command" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          dynamicRegistration = false,
          insertTextMode = 1
        }
      }
    }
  - cmd: <function @/home/ox/.local/share/nvim/lazy/typescript-tools.nvim/lua/typescript-tools/init.lua:31>
  - filetypes: javascript, javascriptreact, javascript.jsx, typescript, typescriptreact, typescript.tsx
  - on_attach: <function @/home/ox/.config/nvim/lua/config/lsp.lua:40>
  - root_dir: <function @/home/ox/.local/share/nvim/lazy/typescript-tools.nvim/lua/typescript-tools/init.lua:42>
  - single_file_support: true

- vue_ls:
  - cmd: { "vue-language-server", "--stdio" }
  - filetypes: vue
  - on_init: <function @/home/ox/.local/share/nvim/lazy/nvim-lspconfig/lsp/vue_ls.lua:26>
  - root_markers: { "package.json" }

- ⚠️ WARNING Unknown filetype 'yaml.docker-compose' (Hint: filename extension != filetype).
- yamlls:
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = true,
            deprecatedSupport = true,
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1, 2 }
            },
            labelDetailsSupport = true,
            preselectSupport = true,
            resolveSupport = {
              properties = { "documentation", "additionalTextEdits", "insertTextFormat", "insertTextMode", "command" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          dynamicRegistration = false,
          insertTextMode = 1
        }
      }
    }
  - cmd: { "yaml-language-server", "--stdio" }
  - filetypes: yaml, yaml.docker-compose
  - on_attach: <function @/home/ox/.config/nvim/lua/config/lsp.lua:40>
  - on_init: <function @/home/ox/.local/share/nvim/lazy/nvim-lspconfig/lsp/yamlls.lua:83>
  - root_markers: { ".git" }
  - settings: {
      redhat = {
        telemetry = {
          enabled = false
        }
      },
      yaml = {
        format = {
          enable = true
        }
      }
    }


vim.lsp: File Watcher ~
- file watching "(workspace/didChangeWatchedFiles)" disabled on all clients

vim.lsp: Position Encodings ~
- No buffers contain mixed position encodings

==============================================================================
vim.pack:                                                                   ✅

vim.pack: basics ~
- ✅ OK `vim.pack` is not used

==============================================================================
vim.provider:                                                             6 ⚠️

Clipboard (optional) ~
- ✅ OK Clipboard tool found: wl-copy

Node.js provider (optional) ~
- Node.js: 24.15.0
- ⚠️ WARNING Missing "neovim" npm (or yarn, pnpm) package.
  - ADVICE:
    - Run in shell: npm install -g neovim
    - Run in shell (if you use yarn): yarn global add neovim
    - Run in shell (if you use pnpm): pnpm install -g neovim
    - You may disable this provider (and warning) by adding `let g:loaded_node_provider = 0` to your init.vim

Perl provider (optional) ~
- ⚠️ WARNING "Neovim::Ext" cpan module is not installed
  - ADVICE:
    - See :help |provider-perl| for more information.
    - You can disable this provider (and warning) by adding `let g:loaded_perl_provider = 0` to your init.vim
- ⚠️ WARNING No usable perl executable found

Python 3 provider (optional) ~
- ⚠️ WARNING No Python executable found that can `import neovim`. Using the first available executable for diagnostics.
- ⚠️ WARNING Could not load Python :
  /usr/bin/python3 does not have the "neovim" module.
  /usr/bin/python3.14 does not have the "neovim" module.
  python3.13 not found in search path or not executable.
  /usr/bin/python3.12 does not have the "neovim" module.
  python3.11 not found in search path or not executable.
  python3.10 not found in search path or not executable.
  python3.9 not found in search path or not executable.
  /usr/bin/python does not have the "neovim" module.
  - ADVICE:
    - See :help |provider-python| for more information.
    - You can disable this provider (and warning) by adding `let g:loaded_python3_provider = 0` to your init.vim
- Executable: Not found

Python virtualenv ~
- ✅ OK no $VIRTUAL_ENV

Ruby provider (optional) ~
- Ruby: 3.4.8
- ⚠️ WARNING `neovim-ruby-host` not found.
  - ADVICE:
    - Run `gem install neovim` to ensure the neovim RubyGem is installed.
    - Run `gem environment` to ensure the gem bin directory is in $PATH.
    - If you are using rvm/rbenv/chruby, try "rehashing".
    - See :help |g:ruby_host_prog| for non-standard gem installations.
    - You can disable this provider (and warning) by adding `let g:loaded_ruby_provider = 0` to your init.vim

==============================================================================
vim.treesitter:                                                             ✅

Treesitter features ~
- Treesitter ABI support: min 13, max 15
- WASM parser support: false

Treesitter parsers ~
- ✅ OK Parser: ada                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/ada.so
- ✅ OK Parser: agda                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/agda.so
- ✅ OK Parser: angular                   ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/angular.so
- ✅ OK Parser: apex                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/apex.so
- ✅ OK Parser: arduino                   ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/arduino.so
- ✅ OK Parser: asm                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/asm.so
- ✅ OK Parser: astro                     ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/astro.so
- ✅ OK Parser: authzed                   ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/authzed.so
- ✅ OK Parser: awk                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/awk.so
- ✅ OK Parser: bash                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/bash.so
- ✅ OK Parser: bass                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/bass.so
- ✅ OK Parser: beancount                 ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/beancount.so
- ✅ OK Parser: bibtex                    ABI: 13, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/bibtex.so
- ✅ OK Parser: bicep                     ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/bicep.so
- ✅ OK Parser: bitbake                   ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/bitbake.so
- ✅ OK Parser: blade                     ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/blade.so
- ✅ OK Parser: blueprint                 ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/blueprint.so
- ✅ OK Parser: bp                        ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/bp.so
- ✅ OK Parser: brightscript              ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/brightscript.so
- ✅ OK Parser: c                         ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/c.so
- ✅ OK Parser: c                    (not loaded), path: /usr/share/nvim/runtime/parser/c.so
- ✅ OK Parser: c_sharp                   ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/c_sharp.so
- ✅ OK Parser: caddy                     ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/caddy.so
- ✅ OK Parser: cairo                     ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/cairo.so
- ✅ OK Parser: capnp                     ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/capnp.so
- ✅ OK Parser: chatito                   ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/chatito.so
- ✅ OK Parser: circom                    ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/circom.so
- ✅ OK Parser: clojure                   ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/clojure.so
- ✅ OK Parser: cmake                     ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/cmake.so
- ✅ OK Parser: comment                   ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/comment.so
- ✅ OK Parser: commonlisp                ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/commonlisp.so
- ✅ OK Parser: cooklang                  ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/cooklang.so
- ✅ OK Parser: corn                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/corn.so
- ✅ OK Parser: cpon                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/cpon.so
- ✅ OK Parser: cpp                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/cpp.so
- ✅ OK Parser: css                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/css.so
- ✅ OK Parser: csv                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/csv.so
- ✅ OK Parser: cuda                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/cuda.so
- ✅ OK Parser: cue                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/cue.so
- ✅ OK Parser: cylc                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/cylc.so
- ✅ OK Parser: d                         ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/d.so
- ✅ OK Parser: dart                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/dart.so
- ✅ OK Parser: desktop                   ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/desktop.so
- ✅ OK Parser: devicetree                ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/devicetree.so
- ✅ OK Parser: dhall                     ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/dhall.so
- ✅ OK Parser: disassembly               ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/disassembly.so
- ✅ OK Parser: djot                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/djot.so
- ✅ OK Parser: dockerfile                ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/dockerfile.so
- ✅ OK Parser: dot                       ABI: 13, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/dot.so
- ✅ OK Parser: doxygen                   ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/doxygen.so
- ✅ OK Parser: dtd                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/dtd.so
- ✅ OK Parser: earthfile                 ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/earthfile.so
- ✅ OK Parser: ebnf                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/ebnf.so
- ✅ OK Parser: editorconfig              ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/editorconfig.so
- ✅ OK Parser: eds                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/eds.so
- ✅ OK Parser: eex                       ABI: 13, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/eex.so
- ✅ OK Parser: elixir                    ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/elixir.so
- ✅ OK Parser: elm                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/elm.so
- ✅ OK Parser: elsa                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/elsa.so
- ✅ OK Parser: elvish                    ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/elvish.so
- ✅ OK Parser: embedded_template         ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/embedded_template.so
- ✅ OK Parser: enforce                   ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/enforce.so
- ✅ OK Parser: erlang                    ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/erlang.so
- ✅ OK Parser: facility                  ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/facility.so
- ✅ OK Parser: faust                     ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/faust.so
- ✅ OK Parser: fennel                    ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/fennel.so
- ✅ OK Parser: fidl                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/fidl.so
- ✅ OK Parser: firrtl                    ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/firrtl.so
- ✅ OK Parser: fish                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/fish.so
- ✅ OK Parser: foam                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/foam.so
- ✅ OK Parser: forth                     ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/forth.so
- ✅ OK Parser: go                        ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/go.so
- ✅ OK Parser: gomod                     ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/gomod.so
- ✅ OK Parser: gosum                     ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/gosum.so
- ✅ OK Parser: gotmpl                    ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/gotmpl.so
- ✅ OK Parser: gowork                    ABI: 13, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/gowork.so
- ✅ OK Parser: graphql                   ABI: 13, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/graphql.so
- ✅ OK Parser: groovy                    ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/groovy.so
- ✅ OK Parser: html                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/html.so
- ✅ OK Parser: ini                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/ini.so
- ✅ OK Parser: javascript                ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/javascript.so
- ✅ OK Parser: jsdoc                     ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/jsdoc.so
- ✅ OK Parser: json                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/json.so
- ✅ OK Parser: jsonc                     ABI: 13, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/jsonc.so
- ✅ OK Parser: lua                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/lua.so
- ✅ OK Parser: lua                  (not loaded), path: /usr/share/nvim/runtime/parser/lua.so
- ✅ OK Parser: make                      ABI: 13, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/make.so
- ✅ OK Parser: markdown                  ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/markdown.so
- ✅ OK Parser: markdown             (not loaded), path: /usr/share/nvim/runtime/parser/markdown.so
- ✅ OK Parser: markdown_inline           ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/markdown_inline.so
- ✅ OK Parser: markdown_inline      (not loaded), path: /usr/share/nvim/runtime/parser/markdown_inline.so
- ✅ OK Parser: pem                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/pem.so
- ✅ OK Parser: prisma                    ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/prisma.so
- ✅ OK Parser: python                    ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/python.so
- ✅ OK Parser: query                     ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/query.so
- ✅ OK Parser: query                (not loaded), path: /usr/share/nvim/runtime/parser/query.so
- ✅ OK Parser: regex                     ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/regex.so
- ✅ OK Parser: scss                      ABI: 13, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/scss.so
- ✅ OK Parser: sql                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/sql.so
- ✅ OK Parser: svelte                    ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/svelte.so
- ✅ OK Parser: templ                     ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/templ.so
- ✅ OK Parser: terraform                 ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/terraform.so
- ✅ OK Parser: tmux                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/tmux.so
- ✅ OK Parser: toml                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/toml.so
- ✅ OK Parser: tsx                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/tsx.so
- ✅ OK Parser: typescript                ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/typescript.so
- ✅ OK Parser: vim                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/vim.so
- ✅ OK Parser: vim                  (not loaded), path: /usr/share/nvim/runtime/parser/vim.so
- ✅ OK Parser: vimdoc                    ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/vimdoc.so
- ✅ OK Parser: vimdoc               (not loaded), path: /usr/share/nvim/runtime/parser/vimdoc.so
- ✅ OK Parser: vue                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/vue.so
- ✅ OK Parser: xml                       ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/xml.so
- ✅ OK Parser: yaml                      ABI: 14, path: /home/ox/.local/share/nvim/lazy/nvim-treesitter/parser/yaml.so

Treesitter queries ~
- ✅ OK ada             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/ada
- ✅ OK ada             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ada
- ✅ OK ada             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ada
- ✅ OK ada             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ada
- ✅ OK ada             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ada
- ✅ OK agda            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/agda
- ✅ OK agda            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/agda
- ✅ OK agda            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/agda
- ✅ OK angular         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/angular
- ✅ OK angular         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/angular
- ✅ OK angular         indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/angular
- ✅ OK angular         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/angular
- ✅ OK angular         locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/angular
- ✅ OK apex            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/apex
- ✅ OK apex            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/apex
- ✅ OK apex            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/apex
- ✅ OK apex            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/apex
- ✅ OK apex            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/apex
- ✅ OK apex            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/apex
- ✅ OK arduino         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/arduino
- ✅ OK arduino         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/arduino
- ✅ OK arduino         indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/arduino
- ✅ OK arduino         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/arduino
- ✅ OK arduino         locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/arduino
- ✅ OK asm             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/asm
- ✅ OK asm             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/asm
- ✅ OK astro           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/astro
- ✅ OK astro           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/astro
- ✅ OK astro           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/astro
- ✅ OK astro           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/astro
- ✅ OK astro           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/astro
- ✅ OK astro           textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/astro
- ✅ OK authzed         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/authzed
- ✅ OK authzed         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/authzed
- ✅ OK awk             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/awk
- ✅ OK awk             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/awk
- ✅ OK bash            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/bash
- ✅ OK bash            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/bash
- ✅ OK bash            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bash
- ✅ OK bash            highlights      /home/ox/.local/share/nvim/lazy/github-nvim-theme/queries/bash
- ✅ OK bash            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bash
- ✅ OK bash            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bash
- ✅ OK bash            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bash
- ✅ OK bash            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/bash
- ✅ OK bass            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bass
- ✅ OK bass            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bass
- ✅ OK bass            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bass
- ✅ OK bass            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bass
- ✅ OK bass            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bass
- ✅ OK beancount       folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/beancount
- ✅ OK beancount       highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/beancount
- ✅ OK beancount       injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/beancount
- ✅ OK bibtex          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bibtex
- ✅ OK bibtex          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bibtex
- ✅ OK bibtex          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bibtex
- ✅ OK bibtex          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bibtex
- ✅ OK bibtex          textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/bibtex
- ✅ OK bicep           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bicep
- ✅ OK bicep           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bicep
- ✅ OK bicep           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bicep
- ✅ OK bicep           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bicep
- ✅ OK bicep           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bicep
- ✅ OK bitbake         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bitbake
- ✅ OK bitbake         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bitbake
- ✅ OK bitbake         indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bitbake
- ✅ OK bitbake         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bitbake
- ✅ OK bitbake         locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bitbake
- ✅ OK blade           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/blade
- ✅ OK blade           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/blade
- ✅ OK blade           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/blade
- ✅ OK blade           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/blade
- ✅ OK blueprint       highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/blueprint
- ✅ OK blueprint       injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/blueprint
- ✅ OK bp              folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bp
- ✅ OK bp              highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bp
- ✅ OK bp              indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bp
- ✅ OK bp              injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bp
- ✅ OK bp              locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/bp
- ✅ OK brightscript    folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/brightscript
- ✅ OK brightscript    highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/brightscript
- ✅ OK brightscript    indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/brightscript
- ✅ OK brightscript    injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/brightscript
- ✅ OK c               aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/c
- ✅ OK c               context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/c
- ✅ OK c               folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/c
- ✅ OK c               folds           /usr/share/nvim/runtime/queries/c
- ✅ OK c               highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/c
- ✅ OK c               highlights      /usr/share/nvim/runtime/queries/c
- ✅ OK c               indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/c
- ✅ OK c               injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/c
- ✅ OK c               injections      /usr/share/nvim/runtime/queries/c
- ✅ OK c               locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/c
- ✅ OK c               textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/c
- ✅ OK c_sharp         aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/c_sharp
- ✅ OK c_sharp         context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/c_sharp
- ✅ OK c_sharp         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/c_sharp
- ✅ OK c_sharp         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/c_sharp
- ✅ OK c_sharp         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/c_sharp
- ✅ OK c_sharp         locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/c_sharp
- ✅ OK c_sharp         textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/c_sharp
- ✅ OK caddy           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/caddy
- ✅ OK caddy           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/caddy
- ✅ OK caddy           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/caddy
- ✅ OK caddy           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/caddy
- ✅ OK cairo           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cairo
- ✅ OK cairo           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cairo
- ✅ OK cairo           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cairo
- ✅ OK cairo           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cairo
- ✅ OK cairo           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cairo
- ✅ OK capnp           context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/capnp
- ✅ OK capnp           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/capnp
- ✅ OK capnp           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/capnp
- ✅ OK capnp           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/capnp
- ✅ OK capnp           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/capnp
- ✅ OK capnp           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/capnp
- ✅ OK chatito         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/chatito
- ✅ OK chatito         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/chatito
- ✅ OK chatito         indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/chatito
- ✅ OK chatito         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/chatito
- ✅ OK chatito         locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/chatito
- ✅ OK circom          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/circom
- ✅ OK circom          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/circom
- ✅ OK circom          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/circom
- ✅ OK circom          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/circom
- ✅ OK clojure         context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/clojure
- ✅ OK clojure         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/clojure
- ✅ OK clojure         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/clojure
- ✅ OK clojure         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/clojure
- ✅ OK clojure         locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/clojure
- ✅ OK cmake           context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/cmake
- ✅ OK cmake           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cmake
- ✅ OK cmake           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cmake
- ✅ OK cmake           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cmake
- ✅ OK cmake           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cmake
- ✅ OK cmake           textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/cmake
- ✅ OK comment         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/comment
- ✅ OK commonlisp      folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/commonlisp
- ✅ OK commonlisp      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/commonlisp
- ✅ OK commonlisp      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/commonlisp
- ✅ OK commonlisp      locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/commonlisp
- ✅ OK cooklang        highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cooklang
- ✅ OK cooklang        injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cooklang
- ✅ OK corn            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/corn
- ✅ OK corn            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/corn
- ✅ OK corn            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/corn
- ✅ OK corn            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/corn
- ✅ OK corn            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/corn
- ✅ OK cpon            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cpon
- ✅ OK cpon            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cpon
- ✅ OK cpon            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cpon
- ✅ OK cpon            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cpon
- ✅ OK cpon            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cpon
- ✅ OK cpp             aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/cpp
- ✅ OK cpp             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/cpp
- ✅ OK cpp             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cpp
- ✅ OK cpp             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cpp
- ✅ OK cpp             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cpp
- ✅ OK cpp             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cpp
- ✅ OK cpp             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cpp
- ✅ OK cpp             textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/cpp
- ✅ OK css             aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/css
- ✅ OK css             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/css
- ✅ OK css             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/css
- ✅ OK css             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/css
- ✅ OK css             highlights      /home/ox/.local/share/nvim/lazy/catppuccin/after/queries/css
- ✅ OK css             images          /home/ox/.local/share/nvim/lazy/snacks.nvim/queries/css
- ✅ OK css             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/css
- ✅ OK css             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/css
- ✅ OK css             textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/css
- ✅ OK csv             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/csv
- ✅ OK cuda            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/cuda
- ✅ OK cuda            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/cuda
- ✅ OK cuda            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cuda
- ✅ OK cuda            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cuda
- ✅ OK cuda            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cuda
- ✅ OK cuda            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cuda
- ✅ OK cuda            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cuda
- ✅ OK cuda            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/cuda
- ✅ OK cue             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/cue
- ✅ OK cue             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cue
- ✅ OK cue             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cue
- ✅ OK cue             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cue
- ✅ OK cue             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cue
- ✅ OK cue             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cue
- ✅ OK cylc            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cylc
- ✅ OK cylc            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cylc
- ✅ OK cylc            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cylc
- ✅ OK cylc            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/cylc
- ✅ OK d               context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/d
- ✅ OK d               folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/d
- ✅ OK d               highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/d
- ✅ OK d               indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/d
- ✅ OK d               injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/d
- ✅ OK d               locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/d
- ✅ OK dart            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/dart
- ✅ OK dart            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/dart
- ✅ OK dart            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dart
- ✅ OK dart            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dart
- ✅ OK dart            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dart
- ✅ OK dart            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dart
- ✅ OK dart            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dart
- ✅ OK dart            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/dart
- ✅ OK desktop         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/desktop
- ✅ OK desktop         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/desktop
- ✅ OK desktop         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/desktop
- ✅ OK devicetree      context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/devicetree
- ✅ OK devicetree      folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/devicetree
- ✅ OK devicetree      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/devicetree
- ✅ OK devicetree      indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/devicetree
- ✅ OK devicetree      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/devicetree
- ✅ OK devicetree      locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/devicetree
- ✅ OK dhall           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dhall
- ✅ OK dhall           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dhall
- ✅ OK dhall           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dhall
- ✅ OK diff            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/diff
- ✅ OK diff            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/diff
- ✅ OK diff            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/diff
- ✅ OK diff            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/diff
- ✅ OK disassembly     highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/disassembly
- ✅ OK disassembly     injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/disassembly
- ✅ OK djot            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/djot
- ✅ OK djot            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/djot
- ✅ OK djot            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/djot
- ✅ OK djot            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/djot
- ✅ OK djot            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/djot
- ✅ OK djot            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/djot
- ✅ OK dockerfile      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dockerfile
- ✅ OK dockerfile      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dockerfile
- ✅ OK dockerfile      textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/dockerfile
- ✅ OK dot             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dot
- ✅ OK dot             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dot
- ✅ OK dot             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dot
- ✅ OK doxygen         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/doxygen
- ✅ OK doxygen         indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/doxygen
- ✅ OK doxygen         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/doxygen
- ✅ OK dtd             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dtd
- ✅ OK dtd             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dtd
- ✅ OK dtd             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dtd
- ✅ OK dtd             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/dtd
- ✅ OK earthfile       highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/earthfile
- ✅ OK earthfile       injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/earthfile
- ✅ OK ebnf            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ebnf
- ✅ OK ebnf            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ebnf
- ✅ OK ecma            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ecma
- ✅ OK ecma            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ecma
- ✅ OK ecma            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ecma
- ✅ OK ecma            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ecma
- ✅ OK ecma            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ecma
- ✅ OK ecma            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/ecma
- ✅ OK editorconfig    aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/editorconfig
- ✅ OK editorconfig    folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/editorconfig
- ✅ OK editorconfig    highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/editorconfig
- ✅ OK editorconfig    injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/editorconfig
- ✅ OK eds             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/eds
- ✅ OK eds             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/eds
- ✅ OK eex             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/eex
- ✅ OK eex             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/eex
- ✅ OK elixir          aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/elixir
- ✅ OK elixir          context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/elixir
- ✅ OK elixir          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/elixir
- ✅ OK elixir          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/elixir
- ✅ OK elixir          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/elixir
- ✅ OK elixir          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/elixir
- ✅ OK elixir          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/elixir
- ✅ OK elixir          textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/elixir
- ✅ OK elm             aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/elm
- ✅ OK elm             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/elm
- ✅ OK elm             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/elm
- ✅ OK elm             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/elm
- ✅ OK elm             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/elm
- ✅ OK elm             textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/elm
- ✅ OK elsa            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/elsa
- ✅ OK elsa            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/elsa
- ✅ OK elsa            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/elsa
- ✅ OK elsa            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/elsa
- ✅ OK elsa            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/elsa
- ✅ OK elvish          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/elvish
- ✅ OK elvish          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/elvish
- ✅ OK embedded_template highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/embedded_template
- ✅ OK embedded_template injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/embedded_template
- ✅ OK enforce         aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/enforce
- ✅ OK enforce         context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/enforce
- ✅ OK enforce         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/enforce
- ✅ OK enforce         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/enforce
- ✅ OK enforce         indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/enforce
- ✅ OK enforce         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/enforce
- ✅ OK enforce         locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/enforce
- ✅ OK enforce         textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/enforce
- ✅ OK erlang          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/erlang
- ✅ OK erlang          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/erlang
- ✅ OK erlang          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/erlang
- ✅ OK facility        folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/facility
- ✅ OK facility        highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/facility
- ✅ OK facility        indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/facility
- ✅ OK facility        injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/facility
- ✅ OK faust           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/faust
- ✅ OK faust           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/faust
- ✅ OK fennel          context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/fennel
- ✅ OK fennel          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fennel
- ✅ OK fennel          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fennel
- ✅ OK fennel          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fennel
- ✅ OK fennel          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fennel
- ✅ OK fennel          textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/fennel
- ✅ OK fidl            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fidl
- ✅ OK fidl            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fidl
- ✅ OK fidl            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fidl
- ✅ OK firrtl          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/firrtl
- ✅ OK firrtl          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/firrtl
- ✅ OK firrtl          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/firrtl
- ✅ OK firrtl          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/firrtl
- ✅ OK firrtl          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/firrtl
- ✅ OK fish            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/fish
- ✅ OK fish            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/fish
- ✅ OK fish            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fish
- ✅ OK fish            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fish
- ✅ OK fish            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fish
- ✅ OK fish            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fish
- ✅ OK fish            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fish
- ✅ OK fish            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/fish
- ✅ OK foam            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/foam
- ✅ OK foam            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/foam
- ✅ OK foam            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/foam
- ✅ OK foam            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/foam
- ✅ OK foam            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/foam
- ✅ OK foam            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/foam
- ✅ OK forth           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/forth
- ✅ OK forth           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/forth
- ✅ OK forth           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/forth
- ✅ OK forth           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/forth
- ✅ OK forth           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/forth
- ✅ OK fortran         context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/fortran
- ✅ OK fortran         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fortran
- ✅ OK fortran         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fortran
- ✅ OK fortran         indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fortran
- ✅ OK fortran         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fortran
- ✅ OK fsh             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fsh
- ✅ OK fsh             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fsh
- ✅ OK fsharp          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fsharp
- ✅ OK fsharp          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fsharp
- ✅ OK func            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/func
- ✅ OK func            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/func
- ✅ OK fusion          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fusion
- ✅ OK fusion          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fusion
- ✅ OK fusion          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fusion
- ✅ OK fusion          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fusion
- ✅ OK fusion          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/fusion
- ✅ OK gap             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gap
- ✅ OK gap             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gap
- ✅ OK gap             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gap
- ✅ OK gap             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gap
- ✅ OK gaptst          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gaptst
- ✅ OK gaptst          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gaptst
- ✅ OK gaptst          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gaptst
- ✅ OK gdscript        context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/gdscript
- ✅ OK gdscript        folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gdscript
- ✅ OK gdscript        highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gdscript
- ✅ OK gdscript        indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gdscript
- ✅ OK gdscript        injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gdscript
- ✅ OK gdscript        locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gdscript
- ✅ OK gdscript        textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/gdscript
- ✅ OK gdshader        highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gdshader
- ✅ OK gdshader        injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gdshader
- ✅ OK git_config      folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/git_config
- ✅ OK git_config      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/git_config
- ✅ OK git_config      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/git_config
- ✅ OK git_rebase      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/git_rebase
- ✅ OK git_rebase      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/git_rebase
- ✅ OK gitattributes   highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gitattributes
- ✅ OK gitattributes   injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gitattributes
- ✅ OK gitattributes   locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gitattributes
- ✅ OK gitcommit       highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gitcommit
- ✅ OK gitcommit       injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gitcommit
- ✅ OK gitignore       highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gitignore
- ✅ OK gitignore       injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gitignore
- ✅ OK gleam           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gleam
- ✅ OK gleam           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gleam
- ✅ OK gleam           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gleam
- ✅ OK gleam           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gleam
- ✅ OK gleam           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gleam
- ✅ OK glimmer         context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/glimmer
- ✅ OK glimmer         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glimmer
- ✅ OK glimmer         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glimmer
- ✅ OK glimmer         indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glimmer
- ✅ OK glimmer         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glimmer
- ✅ OK glimmer         locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glimmer
- ✅ OK glimmer         textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/glimmer
- ✅ OK glimmer_javascript highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glimmer_javascript
- ✅ OK glimmer_javascript indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glimmer_javascript
- ✅ OK glimmer_javascript injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glimmer_javascript
- ✅ OK glimmer_javascript locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glimmer_javascript
- ✅ OK glimmer_typescript highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glimmer_typescript
- ✅ OK glimmer_typescript indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glimmer_typescript
- ✅ OK glimmer_typescript injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glimmer_typescript
- ✅ OK glsl            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/glsl
- ✅ OK glsl            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glsl
- ✅ OK glsl            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glsl
- ✅ OK glsl            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glsl
- ✅ OK glsl            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glsl
- ✅ OK glsl            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/glsl
- ✅ OK glsl            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/glsl
- ✅ OK gn              folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gn
- ✅ OK gn              highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gn
- ✅ OK gn              indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gn
- ✅ OK gn              injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gn
- ✅ OK gn              locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gn
- ✅ OK gnuplot         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gnuplot
- ✅ OK gnuplot         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gnuplot
- ✅ OK go              aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/go
- ✅ OK go              context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/go
- ✅ OK go              folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/go
- ✅ OK go              highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/go
- ✅ OK go              indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/go
- ✅ OK go              injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/go
- ✅ OK go              locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/go
- ✅ OK go              textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/go
- ✅ OK goctl           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/goctl
- ✅ OK goctl           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/goctl
- ✅ OK goctl           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/goctl
- ✅ OK goctl           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/goctl
- ✅ OK godot_resource  folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/godot_resource
- ✅ OK godot_resource  highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/godot_resource
- ✅ OK godot_resource  injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/godot_resource
- ✅ OK godot_resource  locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/godot_resource
- ✅ OK gomod           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gomod
- ✅ OK gomod           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gomod
- ✅ OK gosum           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gosum
- ✅ OK gotmpl          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gotmpl
- ✅ OK gotmpl          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gotmpl
- ✅ OK gotmpl          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gotmpl
- ✅ OK gotmpl          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gotmpl
- ✅ OK gowork          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gowork
- ✅ OK gowork          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gowork
- ✅ OK gpg             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gpg
- ✅ OK gpg             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gpg
- ✅ OK graphql         context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/graphql
- ✅ OK graphql         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/graphql
- ✅ OK graphql         indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/graphql
- ✅ OK graphql         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/graphql
- ✅ OK gren            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gren
- ✅ OK gren            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gren
- ✅ OK groovy          aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/groovy
- ✅ OK groovy          context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/groovy
- ✅ OK groovy          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/groovy
- ✅ OK groovy          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/groovy
- ✅ OK groovy          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/groovy
- ✅ OK groovy          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/groovy
- ✅ OK groovy          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/groovy
- ✅ OK gstlaunch       highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/gstlaunch
- ✅ OK hack            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hack
- ✅ OK hack            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hack
- ✅ OK hack            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/hack
- ✅ OK hare            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hare
- ✅ OK hare            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hare
- ✅ OK hare            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hare
- ✅ OK hare            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hare
- ✅ OK hare            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hare
- ✅ OK haskell         context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/haskell
- ✅ OK haskell         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/haskell
- ✅ OK haskell         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/haskell
- ✅ OK haskell         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/haskell
- ✅ OK haskell         locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/haskell
- ✅ OK haskell         textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/haskell
- ✅ OK haskell_persistent folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/haskell_persistent
- ✅ OK haskell_persistent highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/haskell_persistent
- ✅ OK hcl             aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/hcl
- ✅ OK hcl             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hcl
- ✅ OK hcl             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hcl
- ✅ OK hcl             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hcl
- ✅ OK hcl             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hcl
- ✅ OK hcl             textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/hcl
- ✅ OK heex            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/heex
- ✅ OK heex            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/heex
- ✅ OK heex            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/heex
- ✅ OK heex            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/heex
- ✅ OK heex            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/heex
- ✅ OK heex            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/heex
- ✅ OK helm            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/helm
- ✅ OK helm            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/helm
- ✅ OK helm            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/helm
- ✅ OK helm            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/helm
- ✅ OK help            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/help
- ✅ OK hjson           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hjson
- ✅ OK hjson           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hjson
- ✅ OK hjson           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hjson
- ✅ OK hjson           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hjson
- ✅ OK hjson           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hjson
- ✅ OK hlsl            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hlsl
- ✅ OK hlsl            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hlsl
- ✅ OK hlsl            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hlsl
- ✅ OK hlsl            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hlsl
- ✅ OK hlsl            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hlsl
- ✅ OK hlsl            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/hlsl
- ✅ OK hlsplaylist     highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hlsplaylist
- ✅ OK hlsplaylist     injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hlsplaylist
- ✅ OK hocon           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hocon
- ✅ OK hocon           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hocon
- ✅ OK hocon           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hocon
- ✅ OK hoon            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hoon
- ✅ OK hoon            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hoon
- ✅ OK hoon            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hoon
- ✅ OK hoon            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hoon
- ✅ OK html            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/html
- ✅ OK html            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/html
- ✅ OK html            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/html
- ✅ OK html            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/html
- ✅ OK html            images          /home/ox/.local/share/nvim/lazy/snacks.nvim/queries/html
- ✅ OK html            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/html
- ✅ OK html            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/html
- ✅ OK html            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/html
- ✅ OK html            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/html
- ✅ OK html_tags       highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/html_tags
- ✅ OK html_tags       indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/html_tags
- ✅ OK html_tags       injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/html_tags
- ✅ OK htmldjango      folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/htmldjango
- ✅ OK htmldjango      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/htmldjango
- ✅ OK htmldjango      indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/htmldjango
- ✅ OK htmldjango      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/htmldjango
- ✅ OK http            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/http
- ✅ OK http            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/http
- ✅ OK http            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/http
- ✅ OK hurl            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hurl
- ✅ OK hurl            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hurl
- ✅ OK hurl            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hurl
- ✅ OK hurl            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hurl
- ✅ OK hyprlang        folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hyprlang
- ✅ OK hyprlang        highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hyprlang
- ✅ OK hyprlang        indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hyprlang
- ✅ OK hyprlang        injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/hyprlang
- ✅ OK idl             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/idl
- ✅ OK idl             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/idl
- ✅ OK idl             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/idl
- ✅ OK idris           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/idris
- ✅ OK idris           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/idris
- ✅ OK idris           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/idris
- ✅ OK idris           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/idris
- ✅ OK ini             aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/ini
- ✅ OK ini             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/ini
- ✅ OK ini             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ini
- ✅ OK ini             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ini
- ✅ OK ini             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ini
- ✅ OK inko            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/inko
- ✅ OK inko            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/inko
- ✅ OK inko            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/inko
- ✅ OK inko            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/inko
- ✅ OK inko            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/inko
- ✅ OK inko            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/inko
- ✅ OK ipkg            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ipkg
- ✅ OK ipkg            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ipkg
- ✅ OK ipkg            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ipkg
- ✅ OK ipkg            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ipkg
- ✅ OK ipkg            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ipkg
- ✅ OK ispc            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ispc
- ✅ OK ispc            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ispc
- ✅ OK ispc            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ispc
- ✅ OK ispc            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ispc
- ✅ OK ispc            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ispc
- ✅ OK janet_simple    context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/janet_simple
- ✅ OK janet_simple    folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/janet_simple
- ✅ OK janet_simple    highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/janet_simple
- ✅ OK janet_simple    injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/janet_simple
- ✅ OK janet_simple    locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/janet_simple
- ✅ OK java            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/java
- ✅ OK java            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/java
- ✅ OK java            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/java
- ✅ OK java            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/java
- ✅ OK java            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/java
- ✅ OK java            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/java
- ✅ OK java            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/java
- ✅ OK java            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/java
- ✅ OK javadoc         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/javadoc
- ✅ OK javadoc         indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/javadoc
- ✅ OK javadoc         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/javadoc
- ✅ OK javascript      aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/javascript
- ✅ OK javascript      context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/javascript
- ✅ OK javascript      folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/javascript
- ✅ OK javascript      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/javascript
- ✅ OK javascript      highlights      /home/ox/.local/share/nvim/lazy/catppuccin/after/queries/javascript
- ✅ OK javascript      images          /home/ox/.local/share/nvim/lazy/snacks.nvim/queries/javascript
- ✅ OK javascript      implementations /home/ox/.local/share/nvim/lazy/typescript-tools.nvim/queries/javascript
- ✅ OK javascript      indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/javascript
- ✅ OK javascript      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/javascript
- ✅ OK javascript      locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/javascript
- ✅ OK javascript      references      /home/ox/.local/share/nvim/lazy/typescript-tools.nvim/queries/javascript
- ✅ OK javascript      textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/javascript
- ✅ OK jinja           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jinja
- ✅ OK jinja           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jinja
- ✅ OK jinja_inline    highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jinja_inline
- ✅ OK jinja_inline    injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jinja_inline
- ✅ OK jq              highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jq
- ✅ OK jq              injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jq
- ✅ OK jq              locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jq
- ✅ OK jsdoc           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jsdoc
- ✅ OK json            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/json
- ✅ OK json            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/json
- ✅ OK json            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/json
- ✅ OK json            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/json
- ✅ OK json            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/json
- ✅ OK json            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/json
- ✅ OK json5           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/json5
- ✅ OK json5           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/json5
- ✅ OK jsonc           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jsonc
- ✅ OK jsonc           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jsonc
- ✅ OK jsonc           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jsonc
- ✅ OK jsonc           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jsonc
- ✅ OK jsonc           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jsonc
- ✅ OK jsonnet         context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/jsonnet
- ✅ OK jsonnet         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jsonnet
- ✅ OK jsonnet         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jsonnet
- ✅ OK jsonnet         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jsonnet
- ✅ OK jsonnet         locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jsonnet
- ✅ OK jsx             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jsx
- ✅ OK jsx             highlights      /home/ox/.local/share/nvim/lazy/github-nvim-theme/queries/jsx
- ✅ OK jsx             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jsx
- ✅ OK jsx             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jsx
- ✅ OK jsx             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/jsx
- ✅ OK jsx             textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/jsx
- ✅ OK julia           aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/julia
- ✅ OK julia           context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/julia
- ✅ OK julia           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/julia
- ✅ OK julia           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/julia
- ✅ OK julia           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/julia
- ✅ OK julia           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/julia
- ✅ OK julia           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/julia
- ✅ OK julia           textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/julia
- ✅ OK just            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/just
- ✅ OK just            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/just
- ✅ OK just            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/just
- ✅ OK just            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/just
- ✅ OK just            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/just
- ✅ OK just            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/just
- ✅ OK kcl             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kcl
- ✅ OK kcl             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kcl
- ✅ OK kcl             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kcl
- ✅ OK kconfig         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kconfig
- ✅ OK kconfig         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kconfig
- ✅ OK kconfig         indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kconfig
- ✅ OK kconfig         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kconfig
- ✅ OK kconfig         locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kconfig
- ✅ OK kdl             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/kdl
- ✅ OK kdl             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kdl
- ✅ OK kdl             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kdl
- ✅ OK kdl             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kdl
- ✅ OK kdl             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kdl
- ✅ OK kdl             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kdl
- ✅ OK kotlin          context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/kotlin
- ✅ OK kotlin          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kotlin
- ✅ OK kotlin          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kotlin
- ✅ OK kotlin          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kotlin
- ✅ OK kotlin          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kotlin
- ✅ OK kotlin          textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/kotlin
- ✅ OK koto            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/koto
- ✅ OK koto            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/koto
- ✅ OK koto            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/koto
- ✅ OK koto            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/koto
- ✅ OK kusto           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kusto
- ✅ OK kusto           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/kusto
- ✅ OK lalrpop         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/lalrpop
- ✅ OK lalrpop         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/lalrpop
- ✅ OK lalrpop         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/lalrpop
- ✅ OK lalrpop         locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/lalrpop
- ✅ OK latex           aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/latex
- ✅ OK latex           context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/latex
- ✅ OK latex           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/latex
- ✅ OK latex           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/latex
- ✅ OK latex           images          /home/ox/.local/share/nvim/lazy/snacks.nvim/queries/latex
- ✅ OK latex           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/latex
- ✅ OK latex           textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/latex
- ✅ OK ledger          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ledger
- ✅ OK ledger          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ledger
- ✅ OK ledger          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ledger
- ✅ OK ledger          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ledger
- ✅ OK leo             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/leo
- ✅ OK leo             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/leo
- ✅ OK leo             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/leo
- ✅ OK linkerscript    folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/linkerscript
- ✅ OK linkerscript    highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/linkerscript
- ✅ OK linkerscript    indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/linkerscript
- ✅ OK linkerscript    injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/linkerscript
- ✅ OK linkerscript    locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/linkerscript
- ✅ OK liquid          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/liquid
- ✅ OK liquid          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/liquid
- ✅ OK liquidsoap      context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/liquidsoap
- ✅ OK liquidsoap      folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/liquidsoap
- ✅ OK liquidsoap      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/liquidsoap
- ✅ OK liquidsoap      indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/liquidsoap
- ✅ OK liquidsoap      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/liquidsoap
- ✅ OK liquidsoap      locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/liquidsoap
- ✅ OK llvm            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/llvm
- ✅ OK llvm            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/llvm
- ✅ OK lua             aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/lua
- ✅ OK lua             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/lua
- ✅ OK lua             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/lua
- ✅ OK lua             folds           /usr/share/nvim/runtime/queries/lua
- ✅ OK lua             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/lua
- ✅ OK lua             highlights      /home/ox/.local/share/nvim/lazy/snacks.nvim/queries/lua
- ✅ OK lua             highlights      /usr/share/nvim/runtime/queries/lua
- ✅ OK lua             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/lua
- ✅ OK lua             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/lua
- ✅ OK lua             injections      /home/ox/.local/share/nvim/lazy/snacks.nvim/queries/lua
- ✅ OK lua             injections      /usr/share/nvim/runtime/queries/lua
- ✅ OK lua             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/lua
- ✅ OK lua             nvim-surround   /home/ox/.local/share/nvim/lazy/nvim-surround/queries/lua
- ✅ OK lua             textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/lua
- ✅ OK luadoc          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/luadoc
- ✅ OK luap            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/luap
- ✅ OK luau            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/luau
- ✅ OK luau            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/luau
- ✅ OK luau            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/luau
- ✅ OK luau            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/luau
- ✅ OK luau            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/luau
- ✅ OK m68k            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/m68k
- ✅ OK m68k            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/m68k
- ✅ OK m68k            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/m68k
- ✅ OK m68k            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/m68k
- ✅ OK make            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/make
- ✅ OK make            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/make
- ✅ OK make            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/make
- ✅ OK make            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/make
- ✅ OK make            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/make
- ✅ OK markdown        aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/markdown
- ✅ OK markdown        context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/markdown
- ✅ OK markdown        copilotchat     /home/ox/.local/share/nvim/lazy/CopilotChat.nvim/queries/markdown
- ✅ OK markdown        folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/markdown
- ✅ OK markdown        folds           /usr/share/nvim/runtime/queries/markdown
- ✅ OK markdown        highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/markdown
- ✅ OK markdown        highlights      /usr/share/nvim/runtime/queries/markdown
- ✅ OK markdown        images          /home/ox/.local/share/nvim/lazy/snacks.nvim/queries/markdown
- ✅ OK markdown        indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/markdown
- ✅ OK markdown        injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/markdown
- ✅ OK markdown        injections      /home/ox/.local/share/nvim/lazy/snacks.nvim/queries/markdown
- ✅ OK markdown        injections      /usr/share/nvim/runtime/queries/markdown
- ✅ OK markdown        textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/markdown
- ✅ OK markdown_inline highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/markdown_inline
- ✅ OK markdown_inline highlights      /usr/share/nvim/runtime/queries/markdown_inline
- ✅ OK markdown_inline images          /home/ox/.local/share/nvim/lazy/snacks.nvim/queries/markdown_inline
- ✅ OK markdown_inline injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/markdown_inline
- ✅ OK markdown_inline injections      /usr/share/nvim/runtime/queries/markdown_inline
- ✅ OK matlab          context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/matlab
- ✅ OK matlab          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/matlab
- ✅ OK matlab          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/matlab
- ✅ OK matlab          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/matlab
- ✅ OK matlab          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/matlab
- ✅ OK matlab          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/matlab
- ✅ OK matlab          textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/matlab
- ✅ OK menhir          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/menhir
- ✅ OK menhir          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/menhir
- ✅ OK mermaid         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/mermaid
- ✅ OK mermaid         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/mermaid
- ✅ OK mermaid         indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/mermaid
- ✅ OK mermaid         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/mermaid
- ✅ OK meson           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/meson
- ✅ OK meson           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/meson
- ✅ OK meson           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/meson
- ✅ OK meson           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/meson
- ✅ OK mlir            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/mlir
- ✅ OK mlir            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/mlir
- ✅ OK mlir            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/mlir
- ✅ OK muttrc          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/muttrc
- ✅ OK muttrc          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/muttrc
- ✅ OK nasm            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nasm
- ✅ OK nasm            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nasm
- ✅ OK nasm            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/nasm
- ✅ OK nginx           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nginx
- ✅ OK nginx           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nginx
- ✅ OK nginx           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nginx
- ✅ OK nickel          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nickel
- ✅ OK nickel          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nickel
- ✅ OK nickel          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nickel
- ✅ OK nim             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/nim
- ✅ OK nim             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nim
- ✅ OK nim             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nim
- ✅ OK nim             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nim
- ✅ OK nim             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nim
- ✅ OK nim             textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/nim
- ✅ OK nim_format_string highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nim_format_string
- ✅ OK nim_format_string injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nim_format_string
- ✅ OK ninja           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ninja
- ✅ OK ninja           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ninja
- ✅ OK ninja           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ninja
- ✅ OK ninja           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ninja
- ✅ OK nix             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/nix
- ✅ OK nix             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nix
- ✅ OK nix             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nix
- ✅ OK nix             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nix
- ✅ OK nix             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nix
- ✅ OK nix             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nix
- ✅ OK nix             textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/nix
- ✅ OK norg            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/norg
- ✅ OK norg            images          /home/ox/.local/share/nvim/lazy/snacks.nvim/queries/norg
- ✅ OK nqc             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nqc
- ✅ OK nqc             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nqc
- ✅ OK nqc             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nqc
- ✅ OK nqc             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nqc
- ✅ OK nqc             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nqc
- ✅ OK nu              aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/nu
- ✅ OK nu              context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/nu
- ✅ OK nu              folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nu
- ✅ OK nu              highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nu
- ✅ OK nu              indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nu
- ✅ OK nu              injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/nu
- ✅ OK objc            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/objc
- ✅ OK objc            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/objc
- ✅ OK objc            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/objc
- ✅ OK objc            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/objc
- ✅ OK objc            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/objc
- ✅ OK objdump         aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/objdump
- ✅ OK objdump         context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/objdump
- ✅ OK objdump         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/objdump
- ✅ OK objdump         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/objdump
- ✅ OK ocaml           context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/ocaml
- ✅ OK ocaml           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ocaml
- ✅ OK ocaml           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ocaml
- ✅ OK ocaml           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ocaml
- ✅ OK ocaml           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ocaml
- ✅ OK ocaml           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ocaml
- ✅ OK ocaml           textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/ocaml
- ✅ OK ocaml_interface context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/ocaml_interface
- ✅ OK ocaml_interface folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ocaml_interface
- ✅ OK ocaml_interface highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ocaml_interface
- ✅ OK ocaml_interface indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ocaml_interface
- ✅ OK ocaml_interface injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ocaml_interface
- ✅ OK ocaml_interface locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ocaml_interface
- ✅ OK ocamllex        highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ocamllex
- ✅ OK ocamllex        injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ocamllex
- ✅ OK odin            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/odin
- ✅ OK odin            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/odin
- ✅ OK odin            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/odin
- ✅ OK odin            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/odin
- ✅ OK odin            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/odin
- ✅ OK odin            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/odin
- ✅ OK odin            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/odin
- ✅ OK pascal          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pascal
- ✅ OK pascal          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pascal
- ✅ OK pascal          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pascal
- ✅ OK pascal          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pascal
- ✅ OK pascal          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pascal
- ✅ OK passwd          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/passwd
- ✅ OK pem             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pem
- ✅ OK pem             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pem
- ✅ OK pem             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pem
- ✅ OK perl            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/perl
- ✅ OK perl            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/perl
- ✅ OK perl            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/perl
- ✅ OK perl            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/perl
- ✅ OK php             aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/php
- ✅ OK php             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/php
- ✅ OK php             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/php
- ✅ OK php             highlights      /home/ox/.local/share/nvim/lazy/github-nvim-theme/queries/php
- ✅ OK php             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/php
- ✅ OK php             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/php
- ✅ OK php             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/php
- ✅ OK php             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/php
- ✅ OK php             textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/php
- ✅ OK php_only        context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/php_only
- ✅ OK php_only        folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/php_only
- ✅ OK php_only        highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/php_only
- ✅ OK php_only        indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/php_only
- ✅ OK php_only        injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/php_only
- ✅ OK php_only        locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/php_only
- ✅ OK php_only        textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/php_only
- ✅ OK phpdoc          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/phpdoc
- ✅ OK pioasm          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pioasm
- ✅ OK pioasm          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pioasm
- ✅ OK po              folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/po
- ✅ OK po              highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/po
- ✅ OK po              injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/po
- ✅ OK pod             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pod
- ✅ OK poe_filter      folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/poe_filter
- ✅ OK poe_filter      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/poe_filter
- ✅ OK poe_filter      indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/poe_filter
- ✅ OK poe_filter      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/poe_filter
- ✅ OK pony            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pony
- ✅ OK pony            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pony
- ✅ OK pony            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pony
- ✅ OK pony            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pony
- ✅ OK pony            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pony
- ✅ OK powershell      folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/powershell
- ✅ OK powershell      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/powershell
- ✅ OK powershell      indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/powershell
- ✅ OK powershell      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/powershell
- ✅ OK powershell      locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/powershell
- ✅ OK printf          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/printf
- ✅ OK prisma          context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/prisma
- ✅ OK prisma          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/prisma
- ✅ OK prisma          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/prisma
- ✅ OK prisma          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/prisma
- ✅ OK problog         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/problog
- ✅ OK problog         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/problog
- ✅ OK problog         indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/problog
- ✅ OK problog         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/problog
- ✅ OK prolog          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/prolog
- ✅ OK prolog          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/prolog
- ✅ OK prolog          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/prolog
- ✅ OK prolog          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/prolog
- ✅ OK promql          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/promql
- ✅ OK promql          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/promql
- ✅ OK properties      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/properties
- ✅ OK properties      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/properties
- ✅ OK properties      locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/properties
- ✅ OK proto           aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/proto
- ✅ OK proto           context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/proto
- ✅ OK proto           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/proto
- ✅ OK proto           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/proto
- ✅ OK proto           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/proto
- ✅ OK proto           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/proto
- ✅ OK prql            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/prql
- ✅ OK prql            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/prql
- ✅ OK psv             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/psv
- ✅ OK pug             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pug
- ✅ OK pug             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pug
- ✅ OK puppet          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/puppet
- ✅ OK puppet          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/puppet
- ✅ OK puppet          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/puppet
- ✅ OK puppet          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/puppet
- ✅ OK puppet          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/puppet
- ✅ OK purescript      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/purescript
- ✅ OK purescript      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/purescript
- ✅ OK purescript      locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/purescript
- ✅ OK pymanifest      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pymanifest
- ✅ OK pymanifest      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/pymanifest
- ✅ OK python          aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/python
- ✅ OK python          context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/python
- ✅ OK python          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/python
- ✅ OK python          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/python
- ✅ OK python          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/python
- ✅ OK python          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/python
- ✅ OK python          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/python
- ✅ OK python          textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/python
- ✅ OK ql              folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ql
- ✅ OK ql              highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ql
- ✅ OK ql              indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ql
- ✅ OK ql              injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ql
- ✅ OK ql              locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ql
- ✅ OK ql              textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/ql
- ✅ OK qmldir          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/qmldir
- ✅ OK qmldir          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/qmldir
- ✅ OK qmljs           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/qmljs
- ✅ OK qmljs           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/qmljs
- ✅ OK qmljs           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/qmljs
- ✅ OK query           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/query
- ✅ OK query           folds           /usr/share/nvim/runtime/queries/query
- ✅ OK query           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/query
- ✅ OK query           highlights      /usr/share/nvim/runtime/queries/query
- ✅ OK query           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/query
- ✅ OK query           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/query
- ✅ OK query           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/query
- ✅ OK query           textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/query
- ✅ OK r               aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/r
- ✅ OK r               context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/r
- ✅ OK r               highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/r
- ✅ OK r               indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/r
- ✅ OK r               injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/r
- ✅ OK r               locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/r
- ✅ OK r               textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/r
- ✅ OK racket          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/racket
- ✅ OK racket          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/racket
- ✅ OK racket          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/racket
- ✅ OK ralph           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ralph
- ✅ OK ralph           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ralph
- ✅ OK rasi            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rasi
- ✅ OK rasi            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rasi
- ✅ OK rasi            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rasi
- ✅ OK rasi            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rasi
- ✅ OK rasi            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rasi
- ✅ OK razor           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/razor
- ✅ OK razor           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/razor
- ✅ OK razor           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/razor
- ✅ OK rbs             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rbs
- ✅ OK rbs             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rbs
- ✅ OK rbs             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rbs
- ✅ OK rbs             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rbs
- ✅ OK re2c            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/re2c
- ✅ OK re2c            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/re2c
- ✅ OK re2c            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/re2c
- ✅ OK re2c            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/re2c
- ✅ OK re2c            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/re2c
- ✅ OK readline        folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/readline
- ✅ OK readline        highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/readline
- ✅ OK readline        indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/readline
- ✅ OK readline        injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/readline
- ✅ OK readline        textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/readline
- ✅ OK regex           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/regex
- ✅ OK rego            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rego
- ✅ OK rego            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rego
- ✅ OK requirements    highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/requirements
- ✅ OK requirements    injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/requirements
- ✅ OK rescript        folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rescript
- ✅ OK rescript        highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rescript
- ✅ OK rescript        indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rescript
- ✅ OK rescript        injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rescript
- ✅ OK rescript        locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rescript
- ✅ OK rnoweb          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rnoweb
- ✅ OK rnoweb          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rnoweb
- ✅ OK rnoweb          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rnoweb
- ✅ OK robot           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/robot
- ✅ OK robot           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/robot
- ✅ OK robot           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/robot
- ✅ OK robot           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/robot
- ✅ OK robots          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/robots
- ✅ OK robots          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/robots
- ✅ OK roc             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/roc
- ✅ OK roc             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/roc
- ✅ OK roc             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/roc
- ✅ OK roc             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/roc
- ✅ OK ron             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ron
- ✅ OK ron             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ron
- ✅ OK ron             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ron
- ✅ OK ron             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ron
- ✅ OK ron             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ron
- ✅ OK rst             aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/rst
- ✅ OK rst             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rst
- ✅ OK rst             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rst
- ✅ OK rst             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rst
- ✅ OK rst             textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/rst
- ✅ OK ruby            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/ruby
- ✅ OK ruby            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/ruby
- ✅ OK ruby            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ruby
- ✅ OK ruby            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ruby
- ✅ OK ruby            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ruby
- ✅ OK ruby            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ruby
- ✅ OK ruby            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ruby
- ✅ OK ruby            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/ruby
- ✅ OK runescript      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/runescript
- ✅ OK runescript      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/runescript
- ✅ OK rust            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/rust
- ✅ OK rust            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/rust
- ✅ OK rust            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rust
- ✅ OK rust            highlights      /home/ox/.local/share/nvim/lazy/github-nvim-theme/queries/rust
- ✅ OK rust            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rust
- ✅ OK rust            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rust
- ✅ OK rust            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rust
- ✅ OK rust            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/rust
- ✅ OK rust            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/rust
- ✅ OK scala           aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/scala
- ✅ OK scala           context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/scala
- ✅ OK scala           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/scala
- ✅ OK scala           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/scala
- ✅ OK scala           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/scala
- ✅ OK scala           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/scala
- ✅ OK scala           textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/scala
- ✅ OK scfg            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/scfg
- ✅ OK scfg            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/scfg
- ✅ OK scheme          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/scheme
- ✅ OK scheme          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/scheme
- ✅ OK scheme          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/scheme
- ✅ OK scss            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/scss
- ✅ OK scss            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/scss
- ✅ OK scss            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/scss
- ✅ OK scss            images          /home/ox/.local/share/nvim/lazy/snacks.nvim/queries/scss
- ✅ OK scss            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/scss
- ✅ OK scss            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/scss
- ✅ OK scss            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/scss
- ✅ OK sflog           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sflog
- ✅ OK slang           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/slang
- ✅ OK slang           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/slang
- ✅ OK slang           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/slang
- ✅ OK slang           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/slang
- ✅ OK slang           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/slang
- ✅ OK slang           textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/slang
- ✅ OK slim            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/slim
- ✅ OK slim            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/slim
- ✅ OK slim            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/slim
- ✅ OK slim            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/slim
- ✅ OK slim            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/slim
- ✅ OK slint           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/slint
- ✅ OK slint           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/slint
- ✅ OK slint           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/slint
- ✅ OK slint           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/slint
- ✅ OK slint           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/slint
- ✅ OK smali           context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/smali
- ✅ OK smali           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/smali
- ✅ OK smali           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/smali
- ✅ OK smali           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/smali
- ✅ OK smali           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/smali
- ✅ OK smali           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/smali
- ✅ OK smithy          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/smithy
- ✅ OK smithy          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/smithy
- ✅ OK snakemake       aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/snakemake
- ✅ OK snakemake       folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/snakemake
- ✅ OK snakemake       highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/snakemake
- ✅ OK snakemake       indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/snakemake
- ✅ OK snakemake       injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/snakemake
- ✅ OK snakemake       locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/snakemake
- ✅ OK solidity        aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/solidity
- ✅ OK solidity        context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/solidity
- ✅ OK solidity        folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/solidity
- ✅ OK solidity        highlights      /home/ox/.local/share/nvim/lazy/github-nvim-theme/queries/solidity
- ✅ OK solidity        highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/solidity
- ✅ OK solidity        injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/solidity
- ✅ OK soql            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/soql
- ✅ OK sosl            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sosl
- ✅ OK sourcepawn      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sourcepawn
- ✅ OK sourcepawn      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sourcepawn
- ✅ OK sourcepawn      locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sourcepawn
- ✅ OK sparql          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sparql
- ✅ OK sparql          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sparql
- ✅ OK sparql          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sparql
- ✅ OK sparql          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sparql
- ✅ OK sparql          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sparql
- ✅ OK sql             aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/sql
- ✅ OK sql             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sql
- ✅ OK sql             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sql
- ✅ OK sql             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sql
- ✅ OK sql             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sql
- ✅ OK squirrel        folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/squirrel
- ✅ OK squirrel        highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/squirrel
- ✅ OK squirrel        indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/squirrel
- ✅ OK squirrel        injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/squirrel
- ✅ OK squirrel        locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/squirrel
- ✅ OK ssh_config      aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/ssh_config
- ✅ OK ssh_config      folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ssh_config
- ✅ OK ssh_config      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ssh_config
- ✅ OK ssh_config      indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ssh_config
- ✅ OK ssh_config      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ssh_config
- ✅ OK ssh_config      locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ssh_config
- ✅ OK starlark        aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/starlark
- ✅ OK starlark        context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/starlark
- ✅ OK starlark        folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/starlark
- ✅ OK starlark        highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/starlark
- ✅ OK starlark        indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/starlark
- ✅ OK starlark        injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/starlark
- ✅ OK starlark        locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/starlark
- ✅ OK strace          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/strace
- ✅ OK strace          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/strace
- ✅ OK styled          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/styled
- ✅ OK styled          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/styled
- ✅ OK styled          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/styled
- ✅ OK styled          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/styled
- ✅ OK supercollider   folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/supercollider
- ✅ OK supercollider   highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/supercollider
- ✅ OK supercollider   indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/supercollider
- ✅ OK supercollider   injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/supercollider
- ✅ OK supercollider   locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/supercollider
- ✅ OK supercollider   textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/supercollider
- ✅ OK superhtml       highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/superhtml
- ✅ OK superhtml       injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/superhtml
- ✅ OK surface         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/surface
- ✅ OK surface         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/surface
- ✅ OK surface         indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/surface
- ✅ OK surface         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/surface
- ✅ OK svelte          context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/svelte
- ✅ OK svelte          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/svelte
- ✅ OK svelte          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/svelte
- ✅ OK svelte          images          /home/ox/.local/share/nvim/lazy/snacks.nvim/queries/svelte
- ✅ OK svelte          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/svelte
- ✅ OK svelte          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/svelte
- ✅ OK svelte          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/svelte
- ✅ OK svelte          textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/svelte
- ✅ OK sway            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sway
- ✅ OK sway            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sway
- ✅ OK sway            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sway
- ✅ OK sway            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sway
- ✅ OK sway            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sway
- ✅ OK swift           aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/swift
- ✅ OK swift           context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/swift
- ✅ OK swift           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/swift
- ✅ OK swift           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/swift
- ✅ OK swift           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/swift
- ✅ OK swift           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/swift
- ✅ OK swift           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/swift
- ✅ OK swift           textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/swift
- ✅ OK sxhkdrc         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sxhkdrc
- ✅ OK sxhkdrc         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sxhkdrc
- ✅ OK sxhkdrc         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/sxhkdrc
- ✅ OK systemtap       folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/systemtap
- ✅ OK systemtap       highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/systemtap
- ✅ OK systemtap       injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/systemtap
- ✅ OK systemtap       locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/systemtap
- ✅ OK systemverilog   context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/systemverilog
- ✅ OK t32             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/t32
- ✅ OK t32             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/t32
- ✅ OK t32             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/t32
- ✅ OK t32             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/t32
- ✅ OK t32             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/t32
- ✅ OK tablegen        folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tablegen
- ✅ OK tablegen        highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tablegen
- ✅ OK tablegen        indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tablegen
- ✅ OK tablegen        injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tablegen
- ✅ OK tablegen        locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tablegen
- ✅ OK tact            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/tact
- ✅ OK tact            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tact
- ✅ OK tact            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tact
- ✅ OK tact            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tact
- ✅ OK tact            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tact
- ✅ OK tact            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tact
- ✅ OK tact            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/tact
- ✅ OK tcl             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/tcl
- ✅ OK tcl             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tcl
- ✅ OK tcl             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tcl
- ✅ OK tcl             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tcl
- ✅ OK tcl             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tcl
- ✅ OK teal            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/teal
- ✅ OK teal            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/teal
- ✅ OK teal            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/teal
- ✅ OK teal            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/teal
- ✅ OK teal            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/teal
- ✅ OK teal            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/teal
- ✅ OK teal            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/teal
- ✅ OK templ           context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/templ
- ✅ OK templ           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/templ
- ✅ OK templ           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/templ
- ✅ OK templ           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/templ
- ✅ OK tera            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tera
- ✅ OK tera            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tera
- ✅ OK terraform       aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/terraform
- ✅ OK terraform       context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/terraform
- ✅ OK terraform       folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/terraform
- ✅ OK terraform       highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/terraform
- ✅ OK terraform       indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/terraform
- ✅ OK terraform       injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/terraform
- ✅ OK terraform       textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/terraform
- ✅ OK textproto       folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/textproto
- ✅ OK textproto       highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/textproto
- ✅ OK textproto       indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/textproto
- ✅ OK textproto       injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/textproto
- ✅ OK thrift          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/thrift
- ✅ OK thrift          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/thrift
- ✅ OK thrift          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/thrift
- ✅ OK thrift          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/thrift
- ✅ OK thrift          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/thrift
- ✅ OK tiger           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tiger
- ✅ OK tiger           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tiger
- ✅ OK tiger           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tiger
- ✅ OK tiger           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tiger
- ✅ OK tiger           locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tiger
- ✅ OK tlaplus         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tlaplus
- ✅ OK tlaplus         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tlaplus
- ✅ OK tlaplus         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tlaplus
- ✅ OK tlaplus         locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tlaplus
- ✅ OK tmux            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tmux
- ✅ OK tmux            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tmux
- ✅ OK todotxt         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/todotxt
- ✅ OK toml            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/toml
- ✅ OK toml            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/toml
- ✅ OK toml            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/toml
- ✅ OK toml            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/toml
- ✅ OK toml            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/toml
- ✅ OK toml            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/toml
- ✅ OK toml            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/toml
- ✅ OK toml            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/toml
- ✅ OK tsv             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tsv
- ✅ OK tsx             aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/tsx
- ✅ OK tsx             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/tsx
- ✅ OK tsx             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tsx
- ✅ OK tsx             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tsx
- ✅ OK tsx             images          /home/ox/.local/share/nvim/lazy/snacks.nvim/queries/tsx
- ✅ OK tsx             implementations /home/ox/.local/share/nvim/lazy/typescript-tools.nvim/queries/tsx
- ✅ OK tsx             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tsx
- ✅ OK tsx             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tsx
- ✅ OK tsx             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/tsx
- ✅ OK tsx             references      /home/ox/.local/share/nvim/lazy/typescript-tools.nvim/queries/tsx
- ✅ OK tsx             textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/tsx
- ✅ OK turtle          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/turtle
- ✅ OK turtle          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/turtle
- ✅ OK turtle          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/turtle
- ✅ OK turtle          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/turtle
- ✅ OK turtle          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/turtle
- ✅ OK twig            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/twig
- ✅ OK twig            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/twig
- ✅ OK twig            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/twig
- ✅ OK typescript      aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/typescript
- ✅ OK typescript      context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/typescript
- ✅ OK typescript      folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/typescript
- ✅ OK typescript      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/typescript
- ✅ OK typescript      highlights      /home/ox/.local/share/nvim/lazy/catppuccin/after/queries/typescript
- ✅ OK typescript      implementations /home/ox/.local/share/nvim/lazy/typescript-tools.nvim/queries/typescript
- ✅ OK typescript      indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/typescript
- ✅ OK typescript      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/typescript
- ✅ OK typescript      locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/typescript
- ✅ OK typescript      references      /home/ox/.local/share/nvim/lazy/typescript-tools.nvim/queries/typescript
- ✅ OK typescript      textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/typescript
- ✅ OK typespec        highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/typespec
- ✅ OK typespec        indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/typespec
- ✅ OK typespec        injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/typespec
- ✅ OK typoscript      context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/typoscript
- ✅ OK typoscript      folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/typoscript
- ✅ OK typoscript      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/typoscript
- ✅ OK typoscript      indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/typoscript
- ✅ OK typoscript      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/typoscript
- ✅ OK typst           aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/typst
- ✅ OK typst           context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/typst
- ✅ OK typst           folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/typst
- ✅ OK typst           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/typst
- ✅ OK typst           images          /home/ox/.local/share/nvim/lazy/snacks.nvim/queries/typst
- ✅ OK typst           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/typst
- ✅ OK typst           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/typst
- ✅ OK udev            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/udev
- ✅ OK udev            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/udev
- ✅ OK udev            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/udev
- ✅ OK ungrammar       folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ungrammar
- ✅ OK ungrammar       highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ungrammar
- ✅ OK ungrammar       indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ungrammar
- ✅ OK ungrammar       injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ungrammar
- ✅ OK ungrammar       locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ungrammar
- ✅ OK unison          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/unison
- ✅ OK unison          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/unison
- ✅ OK unison          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/unison
- ✅ OK usd             aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/usd
- ✅ OK usd             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/usd
- ✅ OK usd             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/usd
- ✅ OK usd             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/usd
- ✅ OK usd             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/usd
- ✅ OK usd             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/usd
- ✅ OK usd             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/usd
- ✅ OK uxntal          folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/uxntal
- ✅ OK uxntal          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/uxntal
- ✅ OK uxntal          indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/uxntal
- ✅ OK uxntal          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/uxntal
- ✅ OK uxntal          locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/uxntal
- ✅ OK v               folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/v
- ✅ OK v               highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/v
- ✅ OK v               indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/v
- ✅ OK v               injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/v
- ✅ OK v               locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/v
- ✅ OK v               textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/v
- ✅ OK vala            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vala
- ✅ OK vala            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vala
- ✅ OK vala            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vala
- ✅ OK vento           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vento
- ✅ OK vento           injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vento
- ✅ OK verilog         folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/verilog
- ✅ OK verilog         highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/verilog
- ✅ OK verilog         injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/verilog
- ✅ OK verilog         textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/verilog
- ✅ OK vhdl            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/vhdl
- ✅ OK vhdl            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vhdl
- ✅ OK vhdl            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vhdl
- ✅ OK vhdl            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vhdl
- ✅ OK vhs             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vhs
- ✅ OK vhs             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vhs
- ✅ OK vim             aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/vim
- ✅ OK vim             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/vim
- ✅ OK vim             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vim
- ✅ OK vim             folds           /usr/share/nvim/runtime/queries/vim
- ✅ OK vim             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vim
- ✅ OK vim             highlights      /usr/share/nvim/runtime/queries/vim
- ✅ OK vim             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vim
- ✅ OK vim             injections      /usr/share/nvim/runtime/queries/vim
- ✅ OK vim             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vim
- ✅ OK vim             textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/vim
- ✅ OK vimdoc          aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/vimdoc
- ✅ OK vimdoc          highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vimdoc
- ✅ OK vimdoc          highlights      /usr/share/nvim/runtime/queries/vimdoc
- ✅ OK vimdoc          injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vimdoc
- ✅ OK vimdoc          injections      /usr/share/nvim/runtime/queries/vimdoc
- ✅ OK vrl             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vrl
- ✅ OK vrl             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vrl
- ✅ OK vrl             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vrl
- ✅ OK vrl             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vrl
- ✅ OK vrl             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vrl
- ✅ OK vue             aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/vue
- ✅ OK vue             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/vue
- ✅ OK vue             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vue
- ✅ OK vue             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vue
- ✅ OK vue             images          /home/ox/.local/share/nvim/lazy/snacks.nvim/queries/vue
- ✅ OK vue             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vue
- ✅ OK vue             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/vue
- ✅ OK vue             textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/vue
- ✅ OK wgsl            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/wgsl
- ✅ OK wgsl            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/wgsl
- ✅ OK wgsl            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/wgsl
- ✅ OK wgsl            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/wgsl
- ✅ OK wgsl            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/wgsl
- ✅ OK wgsl_bevy       folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/wgsl_bevy
- ✅ OK wgsl_bevy       highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/wgsl_bevy
- ✅ OK wgsl_bevy       indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/wgsl_bevy
- ✅ OK wgsl_bevy       textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/wgsl_bevy
- ✅ OK wing            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/wing
- ✅ OK wing            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/wing
- ✅ OK wing            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/wing
- ✅ OK wing            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/wing
- ✅ OK wit             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/wit
- ✅ OK wit             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/wit
- ✅ OK wit             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/wit
- ✅ OK xcompose        highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/xcompose
- ✅ OK xcompose        injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/xcompose
- ✅ OK xcompose        locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/xcompose
- ✅ OK xml             aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/xml
- ✅ OK xml             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/xml
- ✅ OK xml             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/xml
- ✅ OK xml             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/xml
- ✅ OK xml             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/xml
- ✅ OK xml             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/xml
- ✅ OK xml             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/xml
- ✅ OK xresources      folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/xresources
- ✅ OK xresources      highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/xresources
- ✅ OK xresources      injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/xresources
- ✅ OK xresources      locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/xresources
- ✅ OK yaml            aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/yaml
- ✅ OK yaml            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/yaml
- ✅ OK yaml            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/yaml
- ✅ OK yaml            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/yaml
- ✅ OK yaml            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/yaml
- ✅ OK yaml            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/yaml
- ✅ OK yaml            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/yaml
- ✅ OK yaml            textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/yaml
- ✅ OK yang            context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/yang
- ✅ OK yang            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/yang
- ✅ OK yang            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/yang
- ✅ OK yang            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/yang
- ✅ OK yang            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/yang
- ✅ OK yuck            folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/yuck
- ✅ OK yuck            highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/yuck
- ✅ OK yuck            indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/yuck
- ✅ OK yuck            injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/yuck
- ✅ OK yuck            locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/yuck
- ✅ OK zathurarc       highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/zathurarc
- ✅ OK zathurarc       injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/zathurarc
- ✅ OK zig             aerial          /home/ox/.local/share/nvim/lazy/aerial.nvim/queries/zig
- ✅ OK zig             context         /home/ox/.local/share/nvim/lazy/nvim-treesitter-context/queries/zig
- ✅ OK zig             folds           /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/zig
- ✅ OK zig             highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/zig
- ✅ OK zig             indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/zig
- ✅ OK zig             injections      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/zig
- ✅ OK zig             locals          /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/zig
- ✅ OK zig             textobjects     /home/ox/.local/share/nvim/lazy/nvim-treesitter-textobjects/queries/zig
- ✅ OK ziggy           highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ziggy
- ✅ OK ziggy           indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ziggy
- ✅ OK ziggy_schema    highlights      /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ziggy_schema
- ✅ OK ziggy_schema    indents         /home/ox/.local/share/nvim/lazy/nvim-treesitter/queries/ziggy_schema

==============================================================================
which-key:                                                               14 ⚠️

- ✅ OK Most of these checks are for informational purposes only.
  WARNINGS should be treated as a warning, and don't necessarily indicate a problem with your config.
  Please |DON'T| report these warnings as an issue.

Checking your config ~
- ⚠️ WARNING |mini.icons| is not installed
- ✅ OK |nvim-web-devicons| is installed

Checking for issues with your mappings ~
- ✅ OK No issues reported

checking for overlapping keymaps ~
- ⚠️ WARNING In mode `n`, <<C-W>> overlaps with <<C-W>d>, <<C-W><C-D>>:
  - <<C-W>>: Close buffer (smart)
  - <<C-W>d>: Show diagnostics under the cursor
  - <<C-W><C-D>>: Show diagnostics under the cursor
- ⚠️ WARNING In mode `n`, <ys> overlaps with <yss>:
  - <ys>: Add a surrounding pair around a motion (normal mode)
  - <yss>: Add a surrounding pair around the current line (normal mode)
- ⚠️ WARNING In mode `n`, <yS> overlaps with <ySS>:
  - <yS>: Add a surrounding pair around a motion, on new lines (normal mode)
  - <ySS>: Add a surrounding pair around the current line, on new lines (normal mode)
- ⚠️ WARNING In mode `n`, <gb> overlaps with <gbc>:
  - <gb>: Comment toggle blockwise
  - <gbc>: Comment toggle current block
- ⚠️ WARNING In mode `n`, <gc> overlaps with <gcc>:
  - <gc>: Comment toggle linewise
  - <gcc>: Comment toggle current line
- ⚠️ WARNING In mode `n`, <<Space>w> overlaps with <<Space>wh>, <<Space>wl>, <<Space>wk>, <<Space>wH>, <<Space>wq>, <<Space>wj>:
  - <<Space>w>: Enter resize mode (j/k/h/l)
  - <<Space>wh>: Increase window height
  - <<Space>wl>: Increase window width
  - <<Space>wk>: Decrease window height
  - <<Space>wH>: Decrease window width
  - <<Space>wq>: Save and quit
  - <<Space>wj>: Increase window height (+)
- ⚠️ WARNING In mode `n`, <<Space>a> overlaps with <<Space>af>, <<Space>ae>, <<Space>at>, <<Space>ac>:
  - <<Space>a>: AI
  - <<Space>af>: Fix diagnostics
  - <<Space>ae>: Explain code
  - <<Space>at>: Generate tests
  - <<Space>ac>: Copilot Chat
- ⚠️ WARNING In mode `x`, <i> overlaps with <in>, <il>:
  - <i>: Inside textobject
  - <in>: Inside next textobject
  - <il>: Inside last textobject
- ⚠️ WARNING In mode `x`, <a> overlaps with <an>, <a%>, <al>:
  - <a>: Around textobject
  - <an>: Around next textobject
  - <al>: Around last textobject
- ⚠️ WARNING In mode `o`, <i> overlaps with <in>, <il>:
  - <i>: Inside textobject
  - <in>: Inside next textobject
  - <il>: Inside last textobject
- ⚠️ WARNING In mode `o`, <a> overlaps with <an>, <al>:
  - <a>: Around textobject
  - <an>: Around next textobject
  - <al>: Around last textobject
- ✅ OK Overlapping keymaps are only reported for informational purposes.
  This doesn't necessarily mean there is a problem with your config.

Checking for duplicate mappings ~
- ⚠️ WARNING Duplicates for <<leader>w> in mode `n`:
  * Enter resize mode (j/k/h/l): `{ rhs = <function 1>, silent = true }`
  * Window: `{ group = true }`
- ⚠️ WARNING Duplicates for <<leader>e> in mode `n`:
  * Toggle file explorer: `{ rhs = ":Neotree toggle<CR>", silent = true }`
  * Explorer: `{ group = true }`
- ✅ OK Duplicate mappings are only reported for informational purposes.
  This doesn't necessarily mean there is a problem with your config.


