init:
	k3d cluster create argocd -p "8080:80@loadbalancer" -p "8443:443@loadbalancer" --k3s-arg="--disable=traefik@server:*"
argocd-install:
	kubectl create namespace argocd
	kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml