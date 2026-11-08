require("bufferline").setup({
	options = {
		mode = "buffers",
		diagnostics = "nvim_lsp",
		always_show_bufferline = true,
		show_buffer_close_icons = false,
		offsets = {
			{
				filetype = "snacks_layout_box",
				text = "File Explorer",
				text_align = "left",
				separator = true,
			},
		},
	},
})
