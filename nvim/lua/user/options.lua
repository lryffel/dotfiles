local opt = vim.opt

opt.scrolloff = 5
opt.relativenumber = true
opt.number = true
opt.breakindent = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.showbreak = "↳ "
opt.wrap = true
opt.linebreak = true
opt.ttimeoutlen = 0
opt.hlsearch = true
opt.incsearch = true
opt.laststatus = 2
opt.smartindent = true
opt.termguicolors = true

opt.wildignore:append(
  "*.aux,*.log,*.out,*.synctex.gz,*.toc,*.pdf,*.fls,*.fdb_latexmk,*.blg,*.bbl,*.lock,target,*.sage.py,*.sbx,*.sxd,*.sxc"
)
