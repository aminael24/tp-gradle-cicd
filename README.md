B.1)Le dépôt local est sur notre machine. Le dépôt distant sert à partager le projet entre plusieurs développeurs.

c.4-Pour relier DEV1 au dépôt distant :git remote add origin $REMOTE

c.7-À committer : src/, gradle/,gradlew, build.gradle, settings.gradle, README.md.

À ignorer :.gradle/, build/,.DS_Store on les ajoute dans .gitignore

c.7 — Contenu de REMOTE :on trouve surtout les fichiers internes Git comme HEAD, objects, refs, config.

On ne trouve pas directement les fichiers du projet car c'est un dépôt bare.

c.11-DEV1, DEV2 et REMOTE ont le même historique après la synchronisation.

D.4.a-Le nouveau commit de DEV1 n'apparaît pas encore dans DEV2 car DEV2 ne l'a pas récupéré.

D.4.b-git fetch  récupère les nouveaux commits mais ne change pas la branche locale master.

D.4.c-App.java ne change pas après le fetch.

D.4.d-Pour mettre la branche locale à jour :git merge origin/master

D.6.a-git pull fait directement git fetch puis git merge.

E.4-Il y a un conflit car DEV1 et DEV2 ont modifié la même partie du fichier.

On corrige le fichier manuellement puis :

git add .

git commit

E.7.b-Le push est refusé car DEV2 n'a pas le dernier commit présent sur REMOTE.

Il faut d'abord récupérer les changements puis résoudre le conflit.

git fetch origin

git merge origin/master

E.8-Après avoir résolu le conflit :

git add .

git commit

git push

Puis DEV1 fait un git pull

À la fin, les dépôts sont au même niveau.
