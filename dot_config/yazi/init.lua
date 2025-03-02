-- This plugin provides cross-instance yank ability,which means you can yank files in one instance, and then paste them in another instance.
-- https://yazi-rs.github.io/docs/dds#session.lua
require("session"):setup({
	sync_yanked = true,
})
-- zoxide now supports the new update_db feature, which automatically adds Yazi's CWD to zoxide when navigating.
require("zoxide"):setup({
	update_db = true,
})

require("full-border"):setup()

-- Show symlink in status bar
Status:children_add(function(self)
	local h = self._current.hovered
	if h and h.link_to then
		return " -> " .. tostring(h.link_to)
	else
		return ""
	end
end, 3300, Status.LEFT)

-- Show user/group of files in status bar
Status:children_add(function()
	local h = cx.active.current.hovered
	if h == nil or ya.target_family() ~= "unix" then
		return ""
	end

	return ui.Line({
		ui.Span(ya.user_name(h.cha.uid) or tostring(h.cha.uid)):fg("magenta"),
		":",
		ui.Span(ya.group_name(h.cha.gid) or tostring(h.cha.gid)):fg("magenta"),
		" ",
	})
end, 500, Status.RIGHT)

-- Show username and hostname in header
Header:children_add(function()
	if ya.target_family() ~= "unix" then
		return ""
	end
	return ui.Span(ya.user_name() .. "@" .. ya.host_name() .. ":"):fg("blue")
end, 500, Header.LEFT)
