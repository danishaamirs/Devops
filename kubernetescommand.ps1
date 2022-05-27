kubctl get node

kubectl get namespace

kubectl create namespace cms

kubectl -n cms create configmap mysql --from-literal MYSQL_RANDOM_ROOT_PASSWORD=1

kubectl -n cms get configmaps


kubectl -n cms create secret generic wordpres `
--from-literal WORDPRESS_DB_HOST=mysql `
--from-literal WORDPRESS_DB_USER=exampleuser `
--from-literal WORDPRESS_DB_PASSWORD=examplepassword `
--from-literal WORDPRESS_DB_NAME=exampledb

kubectl -n cms create secret generic mysql `
--from-literal MYSQL_USER=exampleuser `
--from-literal MYSQL_PASSWORD=examplepassword `
--from-literal MYSQL_DATABASE=exampledb 

kubectl -n cms get secret 