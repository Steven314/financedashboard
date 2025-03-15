icon_color <- "#330F0A"

svg_path <- paste0(
    '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" ',
    'fill="', icon_color, '" class="bi bi-wallet2" viewBox="0 0 16 16">',
    '<path d="M12.136.326A1.5 1.5 0 0 1 14 1.78V3h.5A1.5 1.5 0 0 1 16 4.5v9a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 13.5v-9a1.5 1.5 0 0 1 1.432-1.499zM5.562 3H13V1.78a.5.5 0 0 0-.621-.484zM1.5 4a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5z"/>',
    '</svg>'
)

rsvg::rsvg_svg(
    svg    = charToRaw(svg_path),
    file   = "inst/app/www/wallet2.svg",
    width  = 512,
    height = 512
)

hexSticker::sticker(
    "inst/app/www/wallet2.svg",
    filename = "inst/app/www/hex.png",
    package = "financedashboard",
    s_x = 1,
    s_y = 0.75,
    p_size = 12,
    p_color = "#F4FDAF",
    h_fill = "#394F49",
    h_color = "#F4FDAF"
) |> print()
