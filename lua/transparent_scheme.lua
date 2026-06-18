local colors = require("transparent_palette")
local G = {}

G.set_transparent_scheme =  function()
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")

	vim.o.background = "dark"
	vim.g.colors_name = "transparent"
	local set = vim.api.nvim_set_hl

	set(0, "Normal", { bg = colors.bg, fg = colors.fg })
	set(0, "NormalNc", { bg = colors.bg, fg = colors.fg_unfocused })

	set(0, "CursorColumn", { bg = colors.bg })
	set(0, "Cursor", { bg = colors.bg, fg = colors.visual })

	set(0, "NormalFloat", { bg = colors.bg })
	set(0, "FloatBorder", { bg = colors.bg, fg = colors.constants })

	set(0, "Pmenu", { bg = colors.bg, fg = colors.constants })

	set(0, "StatusLine", { bg = colors.bg, fg = colors.primary_text })
	set(0, "StatusLineNC", { bg = colors.bg, fg = colors.primary_text })

	set(0, "TabLine", { bg = colors.bg, fg = colors.bg })
	set(0, "TabLineFill", { bg = colors.bg, fg = colors.bg })
	set(0, "TabLineSel", { bg = colors.search, fg = colors.special })

	set(0, "CursorLine", { bg = colors.bg })
	set(0, "Visual", { bg = "black", fg = colors.visual })

	set(0, "Comment", { fg = colors.comments, italic = true })
	set(0, "Constant", { fg = colors.constants })
	set(0, "@Variable", { fg = colors.special })
	set(0, "String", { fg = colors.strings })
	set(0, "Identifier", { fg = colors.fg })
	set(0, "Statement", { fg = colors.keywords })
	set(0, "Type", { fg = colors.keywords, italic = true })
	set(0, "Operator", { fg = colors.constants })
	set(0, "Macro", { fg = colors.fg })
	set(0, "Delimiter", { fg = colors.special })

	set(0, "Substitute", { bg = colors.bg, fg = colors.substitute })
	set(0, "IncSearch", { bg = colors.bg, fg = colors.search })
	set(0, "CurSearch", { bg = colors.bg, fg = colors.search })
	set(0, "Search", { bg = colors.bg , fg = colors.search })

	set(0, "Special", { fg = colors.constants })

	set(0, "PreProc", { fg = colors.special })

	set(0, "Title", { fg = colors.strings, bold = true })

	set(0, "Keyword", { fg = colors.keywords })

	set(0, "Function", { fg = colors.functions })
	set(0, "TSFunction", { fg = colors.fg })

	set(0, "Error", { fg = colors.error, bold = true })
end

return G
