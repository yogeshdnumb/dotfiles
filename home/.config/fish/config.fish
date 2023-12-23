if status is-interactive
  source "$HOME/.homesick/repos/homeshick/homeshick.fish"
  source "$HOME/.homesick/repos/homeshick/completions/homeshick.fish"
  # Commands to run in interactive sessions can go here
end

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
      exec startx -- -keeptty
      #Hyprland
    end
end
