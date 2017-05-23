Critères d'évaluation
1. Code fonctionnel (code source + documentation permettent de faire tourner l'application)
2. Respect du cahier des charges
3. Respect des design patterns MVC et ORM
4. Utilisation d'une base de données
5. Utilisation des idiomes Ruby et Rails
6. Utilisation du Javascript
7. Esthétisme du site
8. Performances
9. Sécurité
10. Déploiement
11. Tests unitaires


##Installation et lancement
- le site a été développé avec la version 2.4.1 de Ruby et 5.1.1 de Rails
- pour que le site fonctionne, il faudra créer la base de donnée: `sudo ­i ­u postgres` suivi de `createuser ­­interactive ­P`.<br>
	`username: thegoodedge`<br>
	`password: thegoodedge`<br>
Pour utiliser votre propre base de données, il suffit de changer les champs username et password aux lignes 23-24 du fichier config/database.yml.
- afin d'installer toutes les Gems nécessaires au fonctionnement du site The-Good-Edge, il suffit de lancer la commande `bundle install`
- il faut ensuite générer la base de données: `bundle exec rake db:create db:migrate` (ou bien `bundle exec rake db:drop db:create db:migrate` pour regéérer la base de données)
- vous pouvez créer des articles d'exemple en faisant `bundle exec rake db:seed`.
- enfin, lancer le serveur: `bundle exec rails s`.<br>
Le serveur se lancera sur localhost:3000.


##Sujet choisi: Le Bon Coin de l'ENSIIE

#Les fonctionnalités demandées qui ont été implémentées:
- Un visiteur peut s'authentifier sur le site
- Si le visiteur ne s'enregistre pas, il ne peut consulter que les titres et la photo de couverture de la petite annonce
- Un utilisateur inscrit est caractérisé par un nom, un prénom, une promotion, un email, un numéro de téléphone et éventuellement un avatar
- Un utilisateur inscrit peut consulter la liste des petites annonces publiées par les autres membres
- Un membre peut créer une petite annonce
- Une annonce est constitué d'un titre, d'une description, d'un prix et d'une ou plusieurs photos
- Un membre peut modifier une petite annonce qui lui appartient
- Un membre peut supprimer une petite annonce qui lui appartient
- Un membre peut archiver une petite annonce qui lui appartient

#Les fonctionnalités qui n'ont pas été implémentées:
- La page d'une petite annonce comprend une visionneuse de photos<br>
Les images sont directement visibles sur la page de l'annonce.
- Un membre peut signaler une annonce comme abusive
- Un email est envoyé aux administrateurs lorsqu'un membre signale une annonce comme abusive
- Un email récapitulatif des petites annonces du moment est envoyé chaque semaine à tous les membres
