return{
	'nvim-treesitter/nvim-treesitter',
	config=function ()
		local ts = require('nvim-treesitter')
	ts.setup{
		highlight={
			enable=true
		}
	}
	end
}
