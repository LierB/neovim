local options = require("rose-pine.config").options
local variants = {
	main = {
		_nc = "#16141f",
		base = "#191724",
		surface = "#1f1d2e",
		overlay = "#26233a",
		muted = "#6e6a86",
		subtle = "#908caa",
		text = "#e0def4",
		love = "#eb6f92",
		gold = "#f6c177",
		rose = "#ea9a97",
		pine = "#31748f",
		foam = "#9ccfd8",
		iris = "#c4a7e7",
		highlight_low = "#21202e",
		highlight_med = "#403d52",
		highlight_high = "#524f67",
		none = "NONE",
	},

	-- adapt to my own color scheme here for now
	moon = {
		_nc = "#181d22",
		base = "#2f3943",
		surface = "#2a323b",
		overlay = "#2f3943",
		muted = "#5b6873",
		subtle = "#95999d",
		text = "#fefbf2",
		love = "#e992aa",
		gold = "#a0b48e",
		rose = "#f6c5a3",
		pine = "#88b0bc",
		foam = "#cfa6c6",
		iris = "#a49dc5",
		highlight_low = "#394651",
		highlight_med = "#43525e",
		highlight_high = "#5b6873",
		none = "NONE",
	},
	dawn = {
		_nc = "#f8f0e7",
		base = "#faf4ed",
		surface = "#fffaf3",
		overlay = "#f2e9e1",
		muted = "#9893a5",
		subtle = "#797593",
		text = "#575279",
		love = "#b4637a",
		gold = "#ea9d34",
		rose = "#d7827e",
		pine = "#286983",
		foam = "#56949f",
		iris = "#907aa9",
		highlight_low = "#f4ede8",
		highlight_med = "#dfdad9",
		highlight_high = "#cecacd",
		none = "NONE",
	},
}

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background == "light" and variants.dawn or variants[options.dark_variant or "main"]
