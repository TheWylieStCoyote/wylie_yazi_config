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

require("full-border"):setup()
require("git"):setup()

require("copy-file-contents"):setup({
	append_char = "\n",
	notification = true,
})

Status:children_add(function(self)
	local h = self._current.hovered
	if not h or ya.target_family() ~= "unix" then return ui.Line {} end
	return ui.Line {
		ui.Span(ya.user_name(h.cha.uid) or tostring(h.cha.uid)):fg("magenta"),
		ui.Span(":"),
		ui.Span(ya.group_name(h.cha.gid) or tostring(h.cha.gid)):fg("magenta"),
		ui.Span(" "),
	}
end, 500, Status.RIGHT)
