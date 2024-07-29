local vim = vim
local Utils = {}

local virtual_text_state = false

function Utils.toggle_virtual_text()
	virtual_text_state = not virtual_text_state
	if virtual_text_state then
		vim.diagnostic.config({
			virtual_text = true,
		})
	else
		vim.diagnostic.config({
			virtual_text = false,
		})
	end
end

return Utils
