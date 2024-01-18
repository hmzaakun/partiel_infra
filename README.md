# 🚀 Projet Infrastructure GKE - TP DevOps 🚀

Ce projet est une mise en place d'infrastructure dans Google Kubernetes Engine (GKE) en utilisant des pratiques DevOps pour déployer divers services et ressources.

## 📋 Étapes du TP

Suivez ces étapes pour déployer l'infrastructure complète :

```bash
terraform init
terraform apply
```

Créez un cluster GKE.

```bash
# Créez un cluster GKE
gcloud container clusters create my-cluster --num-nodes=2 --zone=us-central1-a
```

Déployez Nginx et Grafana sur le cluster.

```bash
# Appliquez les fichiers YAML pour Nginx et Grafana
kubectl apply -f nginx-deployment.yaml
kubectl apply -f grafana-deployment.yaml
```

Créez une Cloud Function déclenchée par un Scheduler pour CURLer la page index de Nginx.

```bash
# Déployez la Cloud Function
gcloud functions deploy curl-nginx --runtime python310 --trigger-topic my-scheduler-topic --memory 256MB --region us-central1 --entry-point curl_nginx
```

Déployez une base de données PostgreSQL sur le cluster.

```bash
# Appliquez les fichiers YAML pour PostgreSQL
kubectl apply -f postgresql-service.yaml
kubectl apply -f postgresql-deployment.yaml
```

Déployez un nœud Ethereum sur le cluster.

```bash
# Appliquez les fichiers YAML pour le nœud Ethereum
kubectl apply -f ethereum-service.yaml
kubectl apply -f ethereum-deployment.yaml
```

Créez un réseau MyNetwork et une VM avec Apache.

```bash
# Appliquez les fichiers YAML pour le réseau MyNetwork et la VM Apache
kubectl apply -f mynetwork.yaml
kubectl apply -f apache-vm.yaml
```

Créez une règle de pare-feu pour accéder à Apache depuis Internet.

```bash
# Créez une règle de pare-feu pour le port 4000
gcloud compute firewall-rules create allow-apache --allow tcp:4000 --description "Allow incoming traffic to Apache"
```

## 🏁 Comment lancer le projet

Pour lancer le projet, vous devez avoir Terraform installé sur votre machine. Vous devez également avoir un compte Google Cloud Platform avec un projet créé.

Assurez-vous d'avoir gcloud et kubectl installés et configurés avec les bonnes autorisations.

Clonez ce dépôt sur votre machine locale.

```bash
git clone https://github.com/votre-utilisateur/projet-infrastructure-gke.git
```

Allez dans le répertoire du projet.

```bash
cd partiel_infra
```

Suivez les étapes du TP dans l'ordre en utilisant les fichiers YAML, les commandes Terraform et les commandes gcloud fournies.

Consultez le README spécifique à chaque étape pour plus de détails.

Pour nettoyer et supprimer l'infrastructure lorsque vous avez terminé, utilisez les commandes Terraform appropriées et les commandes gcloud pour supprimer les ressources.

## 📃 Documentation

Pour plus d'informations sur l'utilisation et la configuration spécifique de chaque composant, consultez la documentation correspondante dans le répertoire du projet.

## 🤝 Contributions

Les contributions à ce projet sont les bienvenues. N'hésitez pas à ouvrir une issue ou à proposer une demande de fusion pour des améliorations ou des corrections.

## 📜 Licence

Ce projet est sous licence Hamza
