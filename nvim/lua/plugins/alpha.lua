return {
    'goolord/alpha-nvim',
    config = function ()
--		require'alpha'.setup(require'alpha.themes.dashboard'.config)
        local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
		[[  __     __ ________  ______  __    __ ______ __       __   ]],
		[[ |  \   |  \        \/      \|  \  |  \      \  \     /  \  ]],
		[[ | ▓▓   | ▓▓ ▓▓▓▓▓▓▓▓  ▓▓▓▓▓▓\ ▓▓\ | ▓▓\▓▓▓▓▓▓ ▓▓\   /  ▓▓  ]],
		[[ | ▓▓   | ▓▓ ▓▓__   | ▓▓  | ▓▓ ▓▓▓\| ▓▓ | ▓▓ | ▓▓▓\ /  ▓▓▓  ]],
		[[  \▓▓\ /  ▓▓ ▓▓  \  | ▓▓  | ▓▓ ▓▓▓▓\ ▓▓ | ▓▓ | ▓▓▓▓\  ▓▓▓▓  ]],
		[[   \▓▓\  ▓▓| ▓▓▓▓▓  | ▓▓  | ▓▓ ▓▓\▓▓ ▓▓ | ▓▓ | ▓▓\▓▓ ▓▓ ▓▓  ]],
		[[    \▓▓ ▓▓ | ▓▓_____| ▓▓__/ ▓▓ ▓▓ \▓▓▓▓_| ▓▓_| ▓▓ \▓▓▓| ▓▓  ]],
		[[     \▓▓▓  | ▓▓     \\▓▓    ▓▓ ▓▓  \▓▓▓   ▓▓ \ ▓▓  \▓ | ▓▓  ]],
		[[      \▓    \▓▓▓▓▓▓▓▓ \▓▓▓▓▓▓ \▓▓   \▓▓\▓▓▓▓▓▓\▓▓      \▓▓  ]],
		[[									 						  ]],
		[[									 						  ]],
		[[					     **   Breathe   **			          ]],
		[[															  ]],
		}

		alpha.setup(dashboard.opts)
    end
}
