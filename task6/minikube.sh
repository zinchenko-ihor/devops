#!/bin/sh

CMD=${1:-install}
PREFIX=${2:-$HOME/local/bin}

install () {
  echo "Attempting to install minikube and assorted tools to $PREFIX"

  if ! command kubectl >/dev/null 2>&1; then
    version=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
    echo "Installing kubectl version $version"
    curl -LO "https://storage.googleapis.com/kubernetes-release/release/$version/bin/linux/amd64/kubectl"
    chmod +x kubectl
    mv kubectl "$PREFIX"
  else
    echo "kubetcl is already installed"
  fi

  if ! command minikube >/dev/null 2>&1; then
    curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    chmod +x minikube
    mv minikube "$PREFIX"
  else
    echo "minikube is already installed"
  fi
}

remove () {
  echo "Removing minikube and assorted tools from $PREFIX"

  rm -f "${PREFIX}/kubectl"
  rm -f "${PREFIX}/minikube"
}

if ! grep -E 'vmx|svm' /proc/cpuinfo > /dev/null; then
  echo "CPU does not support virtualization"
  exit 1
fi

case $CMD in
  install)
    install
    ;;
  remove)
    remove
    ;;
  *)
    echo "install_minikube.sh [install|remove] <install_prefix>"
    ;;
esac
