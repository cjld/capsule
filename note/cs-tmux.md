# cheatsheel of tmux

```
unbind C-b
set -g prefix C-a
bind C-a send-prefix
```

q : show panel
? : list-keys
:list-keys -t vi-copy
, rename window

## copy tmux buffer to x server from xclip
bind y run-shell "tmux show-buffer | xclip -sel clip -i" \; display-message "Copied tmux buffer to system clipboard"

C-w delete word
