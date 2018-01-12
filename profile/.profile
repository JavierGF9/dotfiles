#
# Perfil para todas las terminales
# Usado también en el escritorio MATE
#

# Si se ejecuta Bash
if [ -n "$BASH_VERSION" ]; then
	# include .bashrc if it exists
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

# Configuración personal
export EDITOR="vim -e"
export VISUAL=vim

# Modifica el PATH para incluír mi carpeta personal
if [ -d "$HOME/bin" ] ; then
	export PATH="$HOME/bin:$PATH"
fi

# WADs del DOOM
if [ -d "$HOME/doom" ] ; then
	export DOOMWADPATH="$HOME/doom"
	export DOOMWADDIR="$DOOMWADPATH"
fi

# Configuración del DevKitPro
if [ -d "$HOME/devkitPro" ] ; then
	export DEVKITPRO=$HOME/devkitPro
	export DEVKITARM=${DEVKITPRO}/devkitARM
	export PATH=${PATH}:${DEVKITARM}/bin
fi

# Programas necesarios para Rust
[ -d "$HOME/.cargo" ] && export PATH="$HOME/.cargo/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[ -s "$HOME/.rvm/scripts/rvm" ] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
