return {
	"dreamsofcode-io/ChatGPT.nvim",
	event = "VeryLazy",
	config = function()
		require("chatgpt").setup({ async_api_key_cmd = "pass show api/token/openai" })
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
}
