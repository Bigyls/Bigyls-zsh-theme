# A multiline prompt with username, hostname, full path, return status, git branch, git dirty status, git remote status
# This is a modified version of the intheloop theme, with date, time, and IP address added for penetration testing logging.
# This is configured to include the IP address of eth0 for Internal network pentests.
# For External network pentests, comment out lines 13 and 14, and uncomment lines 16 and 17 in include your Internet IP address in the prompt.

local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%}"

local host_color="green"
if [ -n "$SSH_CLIENT" ]; then
  local host_color="red"
fi

PROMPT="%{$fg_bold[red]%}[%{$reset_color%}%{$fg_bold[${host_color}]%}%n@%m%{$reset_color%}%{$fg_bold[red]%}]%{$reset_color%} %{$fg_bold[cyan]%}%c%{$reset_color%} {%{$fg_bold[yellow]%}%W %t%{$reset_color%}} %{$fg_bold[red]%}$(ifconfig | grep -A 1 tun0 | grep inet | tr -s ' ' | cut -d ' ' -f 3) %{$reset_color%}
%{$fg_bold[green]%}➜%{$reset_color%} "
PROMPT+='$(git_prompt_info)'

#PROMPT="%{$fg_bold[grey]%}[%{$reset_color%}%{$fg_bold[${host_color}]%}%n@%m%{$reset_color%}%{$fg_bold[grey]%}]%{$reset_color%} %{$fg_bold[blue]%}%10c %W %t $(curl -s http://ipecho.net/plain; echo) %{$reset_color%} $(git_prompt_info) $(git_remote_status)
#%{$fg_bold[cyan]%}❯%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"%  
