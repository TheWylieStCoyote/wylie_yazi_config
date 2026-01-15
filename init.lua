th.git = th.git or {}
th.git.modified = ui.Style():fg("blue")
th.git.added = ui.Style():fg("green")
th.git.untracked = ui.Style():fg("yellow")
th.git.ignored = ui.Style():fg("gray")
th.git.deleted = ui.Style():fg("red"):bold()
th.git.updated = ui.Style():fg("cyan")

th.git.modified_sign = "M "
th.git.added_sign = "A "
th.git.untracked_sign = "? "
th.git.ignored_sign = "I "
th.git.deleted_sign = "D "
th.git.updated_sign = "U "

require("git"):setup()

require("copy-file-contents"):setup({
	append_char = "\n",
	notification = true,
})
