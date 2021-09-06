#pre-prod/prod


* pre-prod : serveurs IUT (attention proxy, attention pas public)
* prod : serveurs OVH (attention public)

les logins et mdp de connexion sont présents dans le dossier nextcloud [2021-LPDIWA-Projet](https://la-nc-mmi.univ-lemans.fr/apps/files/?dir=/2021-LPDIWA/2021-LPDIWA-Projets)

Pour chaque type de serveurs des scripts bash sont disponibles : 

* deploy.sh : permet de déployer votre application web sur la pre-prod ou sur la prod (arrêt pile, téléchargemnt du code source depuis git et lancement pile)
* stop.sh : permet d'arrêter la pile Docker de la pre-prod ou de la prod (suppression des volumes api-vendor, mysql-data et mongo-data )
* start.sh : permet de redémarrer les conteneurs (pas de mise à jour du code source)


Pour la pre-prod, le code source correspond au dernier commit de la branche **release** de votre dépôt. L'objectif de la pre-prod est de tester une version de release d'un sprint. 

Pour la prod, le code source correspond au dernier commit de la branche **master** de votre dépôt. C'est le serveur accessible par le commanditaire de votre projet. 

Ces scripts bash sont à **versionner** dans votre dépôt de projet (pour tout regrouper au même endroit).  
Il faut mettre ces scripts à jour par rapport à votre projet, puis les déployer via SFTP sur le serveur concerné (D'abord configurer la liaison SSH Préférences dans Tools > SSH Configuration puis configurer le transfert de fichiers dans Préférences > Build, Execution, Deployment > Deployment). Sous PhpStorm vous pouvez définir les paramètres de configuration du sFTP pour uploader le dossier ./preprod-prod/pre-prod ou ./preprod-prod/prod dans le dossier /home/lpdiwa du serveur concerné. 

Les bases de données (mysql et mongo) sont créées et peuplées à partir des scripts SQL et MONGO présents dans le dossier databasesInit/prod/

Si vous voulez garder l'état actuel de votre bdd pour les futures mises en preprod et prod, il faut lancer les commandes suivantes afin d'exporter vos bdd : 

<pre><code>./dcTool dev exec mysqldb mysqldump -u lpdiwa --password=jeZ53jzj34d lpdiwa >> ./databasesInit/mysql/prod/lpdiwa.sql</code>
<code>./dcTool dev exec mongodb mongodump --db=lpdiwa --archive --quiet >> ./databasesInit/mongo/prod/lpdiwa.archive</code>
</pre>
