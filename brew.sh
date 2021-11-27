ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade
apps=(
    jq
)

brew install "${apps[@]}"
