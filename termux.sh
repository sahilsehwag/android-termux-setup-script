#! /bin/bash
if [[ "$*" =~ help ]]; then
	echo all = INSTALLS EVERYTHING
	echo bash = SETUP .bashrc
	echo zsh = INSTALLS ZSH AND SETUP .zshrc. TO CHANGE DEFAULT SHELL USE chsh AND TYPE zsh
	echo ohmyzsh = INSTALLS OH-MY-ZSH
	echo vim = INSTALLS vim-python AND SETUP .vimrc
	echo fasd = INSTALL AND SETUP FASD
	echo fzf = INSTALL FZF AND ADD COMMON ALIASES LIKE fcd AND fv
	echo neovim = INSTALL NEOVIM AND SETUP init.vim
	echo stoage = ENABLES ACCESS TO PHONE STORAGE
fi


if [[ "$*" =~ all ]]; then
	pkg upgrade
	pkg install -y man
	pkg install -y curl
fi

#BASH
if [[ "$*" =~ bash || "$*" =~ all ]]; then
	touch ~/.bashrc
	{
		echo "set -o vi"
		echo "alias la='ls -a'"
		echo "alias ll='ls -l'"
		echo "alias lal='ls -al'"
		echo "alias src='source ~/.bashrc'"

		echo "alias pi='pkg install'"
		echo "alias pla='pkg list-all'"
		echo "alias pii='pkg list-installed'"
		echo "alias pu='pkg uninstall'"
		echo "alias psh='pkg show'"
		echo "alias pse='pkg search'"
	} >> ~/.bashrc
fi

#ZSH
if [[ "$*" =~ zsh || "$*" =~ all ]]; then
	pkg install -y zsh
	touch ~/.zshrc
	{
		echo "bindkey -v"
		echo "alias la='ls -a'"
		echo "alias ll='ls -l'"
		echo "alias lal='ls -al'"
		echo "alias src='source ~/.zshrc'"

		echo "alias pi='pkg install'"
		echo "alias pla='pkg list-all'"
		echo "alias pii='pkg list-installed'"
		echo "alias pu='pkg uninstall'"
		echo "alias psh='pkg show'"
		echo "alias pse='pkg search'"
	} >> ~/.zshrc
fi

#VIM
if [[ "$*" =~ vim || "$*" =~ all ]]; then
	pkg install -y vim
	touch ~/.vimrc
	{
		echo '"PREFERENCES'
		echo 'set tabstop=4'
		echo 'set shiftwidth=4'
		echo 'set autoindent'
		echo 'set ignorecase'
		echo 'set smartcase'
		echo 'set nobackup'
		echo 'set noswapfile'
		echo 'set number'
		echo 'set relativenumber'
		echo 'set incsearch'
		echo 'set hlsearch'
		echo 'set nowrap'
		echo ''

		echo '"LEADER MAPPINGS'
		echo 'let mapleader=" "'
		echo 'let maplocalleader=","'
		echo 'nnoremap <LEADER><LEADER> :'
		echo ''

		echo '"BUFFER MAPPINGS'
		echo 'nnoremap <Leader>ba :badd '
		echo 'nnoremap <Leader>be :edit '
		echo 'nnoremap <Leader>bd :bdelete<CR>'
		echo 'nnoremap <Leader>bw :w<CR>'
		echo 'nnoremap <Leader>bfw :w!<CR>'
		echo 'nnoremap <Leader>bn :bnext<CR>'
		echo 'nnoremap <Leader>bp :bprevious<CR>'
		echo ""

		echo '"WINDOWS MAPPINGS'
		echo 'nnoremap <Leader>wo :only<CR>'
		echo 'nnoremap <Leader>ws :split '
		echo 'nnoremap <Leader>wv :vsplit '
		echo 'nnoremap <Leader>wj <C-W><C-J>'
		echo 'nnoremap <Leader>wk <C-W><C-K>'
		echo 'nnoremap <Leader>wl <C-W><C-L>'
		echo 'nnoremap <Leader>wh <C-W><C-H>'
		echo ""

		echo '"TAB MAPPINGS'
		echo 'nnoremap <LEADER>ta :tabnew<CR>     '
		echo 'nnoremap <LEADER>tc :tabclose<CR>   '
		echo 'nnoremap <LEADER>tn :tabnext<CR>    '
		echo 'nnoremap <LEADER>tp :tabprevious<CR>'
		echo 'nnoremap <LEADER>th :tabmove -<CR>  '
		echo 'nnoremap <LEADER>tl :tabmove +<CR>  '
		echo ""

		echo '"VIM MAPPINGS'
		echo 'nnoremap <Leader>vrc :edit ~/.vimrc<CR>'
		echo 'nnoremap <Leader>vs :source ~/.vimrc<CR>'
		echo 'nnoremap <Leader>vq :q<CR>'
		echo 'nnoremap <Leader>vfq :q!<CR>'
		echo 'nnoremap <Leader>vc :normal! 0i"<Esc>'
		echo 'nnoremap <Leader>vu :normal! 0x'
	} >> ~/.vimrc
fi

#NEOVIM
if [[ "$*" =~ neovim ]]; then
	pkg install -y neovim
	mkdir ~/.config
	mkdir ~/.config/nvim
	touch ~/.config/nvim/init.vim
	{
		echo '"PREFERENCES'
		echo 'set tabstop=4'
		echo 'set shiftwidth=4'
		echo 'set autoindent'
		echo 'set ignorecase'
		echo 'set smartcase'
		echo 'set nobackup'
		echo 'set noswapfile'
		echo 'set number'
		echo 'set relativenumber'
		echo 'set incsearch'
		echo 'set hlsearch'
		echo 'set nowrap'
		echo ''

		echo '"LEADER MAPPINGS'
		echo 'let mapleader=" "'
		echo 'let maplocalleader=","'
		echo 'nnoremap <LEADER><LEADER> :'
		echo ''

		echo '"BUFFER MAPPINGS'
		echo 'nnoremap <Leader>ba :badd '
		echo 'nnoremap <Leader>be :edit '
		echo 'nnoremap <Leader>bd :bdelete<CR>'
		echo 'nnoremap <Leader>bw :w<CR>'
		echo 'nnoremap <Leader>bfw :w!<CR>'
		echo 'nnoremap <Leader>bn :bnext<CR>'
		echo 'nnoremap <Leader>bp :bprevious<CR>'
		echo ""

		echo '"WINDOWS MAPPINGS'
		echo 'nnoremap <Leader>wo :only<CR>'
		echo 'nnoremap <Leader>ws :split '
		echo 'nnoremap <Leader>wv :vsplit '
		echo 'nnoremap <Leader>wj <C-W><C-J>'
		echo 'nnoremap <Leader>wk <C-W><C-K>'
		echo 'nnoremap <Leader>wl <C-W><C-L>'
		echo 'nnoremap <Leader>wh <C-W><C-H>'
		echo ""

		echo '"TAB MAPPINGS'
		echo 'nnoremap <LEADER>ta :tabnew<CR>     '
		echo 'nnoremap <LEADER>tc :tabclose<CR>   '
		echo 'nnoremap <LEADER>tn :tabnext<CR>    '
		echo 'nnoremap <LEADER>tp :tabprevious<CR>'
		echo 'nnoremap <LEADER>th :tabmove -<CR>  '
		echo 'nnoremap <LEADER>tl :tabmove +<CR>  '
		echo ""

		echo '"VIM MAPPINGS'
		echo 'nnoremap <Leader>vrc :edit ~/.vimrc<CR>'
		echo 'nnoremap <Leader>vs :source ~/.vimrc<CR>'
		echo 'nnoremap <Leader>vq :q<CR>'
		echo 'nnoremap <Leader>vfq :q!<CR>'
		echo 'nnoremap <Leader>vc :normal! 0i"<Esc>'
		echo 'nnoremap <Leader>vu :normal! 0x'
	} >> ~/.config/nvim/init.vim
fi

#FASD
if [[ "$*" =~ fasd ]]; then
	pkg install -y git
	pkg install -y make
	git clone https://github.com/clvv/fasd ~/fasd
	cd ~/fasd
	make install

	if [[ -f ~/.zshrc && -x /usr/bin/fasd ]]; then
		echo 'eval "$(fasd --init auto)"' >> ~/.zshrc
		echo "alias v='f -e vim'" >> ~/.zshrc
	fi
	if [[ -f ~/.bashrc && -x /usr/bin/fasd ]]; then
		echo 'eval "$(fasd --init auto)"' >> ~/.bashrc
		echo "alias v='f -e vim'" >> ~/.bashrc
	fi
fi

#FZF
if [[ "$*" =~ 'fzf' || "$*" =~ all ]]; then
	pkg install -y fzf
	touch ~/.bashrc
	touch ~/.zshrc

	[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
	[ -f ~/.fzf.bash ] && source ~/.fzf.bash

	{
		echo "export FZF_DEFAULT_COMMAND='find'"
		echo "export FZF_DEFAULT_OPTS='--height 50% --reverse --margin 0,0,0,2 --color fg:-1,bg:-1,hl:33,fg+:254,bg+:235,hl+:33 --color info:136,prompt:136,pointer:230,marker:230,spinner:136'"
		echo $'alias fcd=\'cd "$(find -L -type d | fzf)"\''
		echo $'alias fv=\'vim "$(find -L -type f | fzf)"\''
	} >> ~/.zshrc
	{
		echo "export FZF_DEFAULT_COMMAND='find'"
		echo "export FZF_DEFAULT_OPTS='--height 50% --reverse --margin 0,0,0,2 --color fg:-1,bg:-1,hl:33,fg+:254,bg+:235,hl+:33 --color info:136,prompt:136,pointer:230,marker:230,spinner:136'"
		echo $'alias fcd=\'cd "$(find -L -type d | fzf)"\''
		echo $'alias fv=\'vim "$(find -L -type f | fzf)"\''
	} >> ~/.bashrc
fi

#OH-MY-ZSH
if [[ "$*" =~ ohmyzsh || "$*" =~ all ]]; then
	pkg install -y curl
    pkg install -y git
	bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

#STORAGE
if [[ "$*" =~ storage || "$*" =~ all ]]; then
	termux-setup-storage
fi
