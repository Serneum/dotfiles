return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			ruby = { "rubocop", "rbfmt" },
		},
		formatters = {
			shfmt = {
				prepend_args = { "-i", "2", "-ci", "-bn" },
			},
		},
	},
}
