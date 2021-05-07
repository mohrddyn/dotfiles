#-- START ZCACHE GENERATED FILE
#-- GENERATED: Sun May  2 11:09:24 EEST 2021
#-- ANTIGEN v2.2.3
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/opt/homebrew/Cellar/antigen/2.2.3/share/antigen/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/gitfast /Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-flow /Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mix /Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/ruby /Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/rails /Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/xcode /Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn) path+=(/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/gitfast /Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-flow /Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mix /Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/ruby /Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/rails /Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/xcode /Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn)
_antigen_compinit () {
  autoload -Uz compinit; compinit -i -d "/Users/jarih/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/gitfast/gitfast.plugin.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-flow/git-flow.plugin.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/ruby/ruby.plugin.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/rails/rails.plugin.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/xcode/xcode.plugin.zsh';
source '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn/yarn.plugin.zsh';
source '/Users/jarih/Documents/Projects.tmp/dotfiles/dotfiles/oh-my-zsh/custom/theme.zsh-theme.antigen-compat';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/gitfast plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git-flow plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/mix plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/ruby plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/rails plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/xcode plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/yarn plugin true' '/Users/jarih/.oh-my-zsh/custom theme.zsh-theme plugin false')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/gitfast' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/gitfast/gitfast.plugin.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-flow' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-flow/git-flow.plugin.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mix' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/ruby' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/ruby/ruby.plugin.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/rails' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/rails/rails.plugin.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/xcode' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/xcode/xcode.plugin.zsh' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn' '/Users/jarih/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn/yarn.plugin.zsh' '/Users/jarih/.oh-my-zsh/custom/theme.zsh-theme' '/Users/jarih/.oh-my-zsh/custom/theme.zsh-theme')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.3'

#-- END ZCACHE GENERATED FILE
