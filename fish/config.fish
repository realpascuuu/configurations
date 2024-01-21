set -gx HOME_PASCU /home/pascu
set -gx FISH_FOLDER "$HOME_PASCU/.config/fish"
set -gx STARSHIP_CONFIG "$FISH_FOLDER/starship.toml"

if status --is-login
	# --- nvm load ---
	set -gx NVM_DIR "$HOME_PASCU/.nvm"

	if test -s "$NVM_DIR/nvm.sh"
	    source "$NVM_DIR/nvm.sh"  # This loads nvm
	end

	if test -s "$NVM_DIR/bash_completion"
	    source "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
	end
	# --- nvm load ---
end

source "$FISH_FOLDER/fish_aliases"

starship init fish | source

