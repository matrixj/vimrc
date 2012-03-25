set number 
syntax on
let mapleader=";"
set tabstop=4
set shiftwidth=4
set cindent
set autoindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
let g:netrw_winsize = 30
nmap <silent> <Leader>fe :Sexplore!<cr> 
nmap <silent> <Leader>ta :TlistToggle<cr>
""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = 'ctags'
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 
""""""""""""""""""""""""""""""
" BufExplorer
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.
autocmd BufWinEnter \[Buf\ List\] setl nonumber 
""""""""""""""""""""""""""""""
" winManager setting
""""""""""""""""""""""""""""""
let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap <silent> <leader>wm :WMToggle<cr> 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
    set csprg=/usr/local/bin/cscope
		  set csto=1
		    set cst
			  set nocsverb
			    " add any database in current directory
				  if filereadable("cscope.out")
					      cs add cscope.out
							    endif
								  set csverb
								  endif

								  nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
								  nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
								  nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
								  nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
								  nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
								  nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
								  nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
								  nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""
"qiuckfix
""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType c,cpp  map <buffer> <leader><space> :w<cr>:make<cr>
nmap <leader>cn :cn<cr>
nmap <leader>cp :cp<cr>
nmap <leader>cw :cw 10<cr> 
