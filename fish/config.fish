set -g fish_greeting "" # 禁用欢迎信息

if status is-interactive
	set -gx EDITOR nvim
	set -gx VISUAL nvim

	fish_add_path "$HOME/.local/bin"
	fish_add_path "$HOME/go/bin"

	if type -q lsd
		# lsd -> ls
		abbr -a la  lsd -A
		abbr -a ll  lsd -l --header
		abbr -a llg lsd- -l --header --git
		abbr -a lla lsd -lA
		abbr -a lt  lsd --tree
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

        fzf --fish | source
    end

	if type -q atuin
		set -gx ATUIN_NOBIND true
		set -gx ATUIN_SEARCH_MODE fuzzy
		set -gx ATUIN_FILTER_MODE workspace
		set -gx ATUIN_STYLE compact

		atuin init fish | source
	end

    if type -q starship
	    starship init fish | source
    end

    if type -q zoxide
    	zoxide init fish | source
	end

	# 双击 Esc 键添加 sudo 前缀
	function sudo_commandline
		set buf (commandline)

		if test -n "$buf"
			if not string match -q '^sudo ' -- $buf
				commandline -r "sudo $buf"
			end
		end
	end

	# 在 tmux 会话中使用 fzf-tmux，否则使用 fzf
	function fzf --wraps=fzf --description="Use fzf-tmux if in tmux session"
		if set --query TMUX
			fzf-tmux $argv
		else
			command fzf $argv
		end
	end

	bind \e\e sudo_commandline
	bind -M insert \e\e sudo_commandline
end
