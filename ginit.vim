set mouse=a

if exists(':GuiFont')
  GuiFont FiraCode Nerd Font:h14
endif

if exists('g:neovide')
  let g:neovide_remember_window_size = v:true
  let g:neovide_cursor_vfx_mode = "pixiedust"
  let g:neovide_cursor_vfx_particle_density=12.0
endif
