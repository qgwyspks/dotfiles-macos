set -g fish_greeting "" # 禁用欢迎信息

if status is-interactive
	set -gx EDITOR nvim

	fish_add_path "$HOME/.local/bin"
	fish_add_path "$HOME/go/bin"
	# eval (/opt/homebrew/bin/brew shellenv)

	if type -q lsd
		# lsd -> ls
		abbr -a la lsd -A
		abbr -a ll lsd -l --header
		abbr -a llg lsd- -l --header --git
		abbr -a lla lsd -lA
		abbr -a lt lsd --tree
	else
		abbr -a ls ls --color=auto
		abbr -a ll ls -l --color=auto
		abbr -a la ls -la --color=auto
	end
	
	if type -q tmux
		abbr -a t tmux
	end

    if type -q fzf
        set fzf_preview_dir_cmd lsd --all --color=always
        set fzf_diff_highlighter delta --paging=never --width=20
    end

    if type -q starship
	    starship init fish | source
    end
    if type -q zoxide
    	zoxide init fish | source
	end
end
