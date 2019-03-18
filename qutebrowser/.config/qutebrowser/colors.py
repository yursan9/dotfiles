import pywal

# Get colorsscheme from wallpaper
image = pywal.wallpaper.get()
schemes = pywal.colors.get(image)

# Status Bar Color
c.colors.statusbar.caret.bg = schemes['colors']['color5']
c.colors.statusbar.caret.fg = schemes['special']['foreground']

c.colors.statusbar.command.bg = schemes['colors']['color6']
c.colors.statusbar.command.fg = schemes['special']['background']
c.colors.statusbar.command.private.bg = schemes['colors']['color14']

c.colors.statusbar.insert.bg = schemes['colors']['color2']
c.colors.statusbar.insert.fg = schemes['special']['foreground']

c.colors.statusbar.normal.bg = schemes['special']['background']
c.colors.statusbar.normal.fg = schemes['special']['foreground']

c.colors.statusbar.private.bg = 'purple'
c.colors.statusbar.private.fg = schemes['special']['foreground']

c.colors.statusbar.progress.bg = schemes['special']['foreground']

c.colors.statusbar.url.fg = schemes['special']['foreground']
c.colors.statusbar.url.error.fg = schemes['colors']['color1']
c.colors.statusbar.url.hover.fg = schemes['colors']['color4']
c.colors.statusbar.url.success.http.fg = schemes['special']['foreground']
c.colors.statusbar.url.success.https.fg = schemes['colors']['color2']
c.colors.statusbar.url.warn.fg = schemes['colors']['color3']

# Tab Bar Color
c.colors.tabs.bar.bg = schemes['special']['background']
c.colors.tabs.even.bg = schemes['special']['background']
c.colors.tabs.even.fg = schemes['special']['foreground']
c.colors.tabs.odd.bg = schemes['special']['background']
c.colors.tabs.odd.fg = schemes['special']['foreground']

c.colors.tabs.selected.even.bg = schemes['special']['foreground']
c.colors.tabs.selected.even.fg = schemes['special']['background']
c.colors.tabs.selected.odd.bg = schemes['special']['foreground']
c.colors.tabs.selected.odd.fg = schemes['special']['background']

# Completion Color
c.colors.completion.category.bg = schemes['colors']['color6']
c.colors.completion.category.fg = schemes['special']['background']
c.colors.completion.category.border.bottom = schemes['special']['background']
c.colors.completion.category.border.top = schemes['colors']['color6']

c.colors.completion.even.bg = schemes['special']['background']
c.colors.completion.odd.bg = schemes['special']['background']

c.colors.completion.item.selected.bg = schemes['colors']['color4']
c.colors.completion.item.selected.fg = schemes['special']['foreground']
c.colors.completion.item.selected.border.bottom = schemes['colors']['color4']
c.colors.completion.item.selected.border.top = schemes['colors']['color4']

c.colors.completion.match.fg = schemes['colors']['color2']
c.colors.completion.scrollbar.bg = schemes['special']['foreground']
c.colors.completion.scrollbar.fg = schemes['special']['background']

c.colors.downloads.bar.bg = schemes['special']['background']
c.colors.downloads.error.bg = schemes['colors']['color1']
c.colors.downloads.error.fg = schemes['special']['foreground']

c.colors.downloads.start.bg = schemes['colors']['color5']
c.colors.downloads.start.fg = schemes['special']['foreground']

c.colors.downloads.stop.bg = schemes['colors']['color2']
c.colors.downloads.stop.fg = schemes['special']['foreground']

# Hints Color
c.colors.hints.bg = schemes['special']['background']
c.colors.hints.fg = schemes['special']['foreground']
c.colors.hints.match.fg = schemes['colors']['color3']

# Key Hints Color
c.colors.keyhint.bg = schemes['special']['background']
c.colors.keyhint.fg = schemes['special']['foreground']
c.colors.keyhint.suffix.fg = schemes['colors']['color3']

# Messages Color
c.colors.messages.error.bg = schemes['colors']['color1']
c.colors.messages.error.fg = schemes['special']['foreground']
c.colors.messages.error.border = schemes['colors']['color1']

c.colors.messages.info.bg = schemes['colors']['color2']
c.colors.messages.info.fg = schemes['special']['foreground']
c.colors.messages.info.border = schemes['colors']['color2']

c.colors.messages.warning.bg = schemes['colors']['color2']
c.colors.messages.warning.fg = schemes['special']['foreground']
c.colors.messages.warning.border = schemes['colors']['color2']

c.colors.prompts.fg = schemes['special']['foreground']
c.colors.prompts.bg = schemes['special']['background']
c.colors.prompts.border = schemes['special']['background']
c.colors.prompts.selected.bg = schemes['colors']['color3']
