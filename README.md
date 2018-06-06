# RGPD
Registre des traitements

Mise en place :

  1) Installation du serveur IIS.
  2) Installation d'un SQL server Express (ou non).
  3) Sous Sql server créé la base de données et les tables avec les scripts .sql qui se trouvent dans le repertoire "table_base".
  4) Ajouter les données de la table Glossaire et Mesure avec les scripts : dbo.Glossaire.data.sql et dbo.Mesure.data.sql
  5) Ajouter les données du script dbo.Utilisateur.data.sql et dbo.Role.data.sql et dbo.RoleUtilisateur.data.sql sans quoi il n'est pas 
     possible de se connecter.
  6) Ne pas oublier de donner les droits en INSERT,SELECT,DELETE et UPDATE (clic droit sur la base de donnée => properties => permission)
      (idem pour la procédure stockée).
  7) Ajouter le projet dans un site IIS.
  8) Configurer les droits du répertoire de l'application dans wwwroot (Tout le monde => controle total, IIS_IUSRS => controle total).
  9) Ajouter le repertoire "Fichier" dans la racine de l'application.
  10) Dans le fichier web.config de l'application :
     ---------------------------------------------
   
      < add key="domainName" value="xxxxx.xx"/ >
        => remplacer xxxxx.xx par votreNomDeDomaine.be ou adresse IP du controleur de domaine.
      
      < setting name="AdresseSrv" serializeAs="String" >
        <value>xxx.xxx.xxx.xxx</value>      
      < /setting >
        => remplacer xxx.xxx.xxx.xxx par l'adresse/nom de votre serveur qui heberge l'application.
     
      < setting name="PortSrv" serializeAs="String" >
        <value>xxxxx</value>
      < /setting >
         => remplacer xxxxx par le port d'écoute de votre serveur.
  11) Pour la connexion locale, il faut se connecter en Administrateur. Ce qui donne la possibilité de gérer, uniquement, les utilisateurs       (en ajout, en modification et en suppression), les services (en ajout, en modification, en suppression) et les glossaires (en ajout 
      et en modification).
      Identifiant  : administrateur
      mot de passe : Ww9,?hF7
      
      
      
EDIT : L'application est sujette à des mises à jours de nouveau contenu dans les prochains jours voir semaines
