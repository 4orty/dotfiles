
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
git
docker
autojump
direnv
zsh-autosuggestions
zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}


function kn() {
  namespace=`kubectl get namespaces -o=jsonpath='{range .items[*].metadata.name}{@}{"\n"}{end}' | fzf`
  if [ ! -z "$namespace" ]
  then
    context=`kubectl config current-context`
    echo "kubectl config set-context $context --namespace=$namespace"
    kubectl config set-context $context --namespace=$namespace
  fi
}

function kc() {
  context=`kubectl config view -o jsonpath='{.contexts[*].name}' | tr " " "\n" | fzf`
  if [ ! -z "$context" ]
  then
    echo "kubectl config use-context $context"
    kubectl config use-context $context
  fi
}

function kgp() {
 echo "kubectl get pods -o wide"
 kubectl get pods -o wide
}

