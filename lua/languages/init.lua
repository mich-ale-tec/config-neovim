vim.lsp.config("*", { capabilities = require("blink.cmp").get_lsp_capabilities() })

require("languages.javascript")
require("languages.go")
require("languages.ruby")
require("languages.perl")
require("languages.bash")
require("languages.css")
require("languages.lua")
