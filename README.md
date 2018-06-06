# RGPD
Registre des traitements

Mise en place :

  1) Installation du serveur IIS.
  2) Installation d'un SQL server Express (ou non).
  3) Sous Sql server créé la base de données et les tables avec les scripts .sql qui se trouvent dans le repertoire "table_base".
  4) Ajouter les données de la table Glossaire et Mesure avec les scripts : dbo.Glossaire.data.sql et dbo.Mesure.data.sql
  5) Ne pas oublier de donner les droits en INSERT,SELECT,DELETE et UPDATE (clic droit sur la base de donnée => properties => permission)
      (idem pour la procédure stockée).
  6) Ajouter le projet dans un site IIS.
  7) Configurer les droits du répertoire de l'application dans wwwroot (Tout le monde => controle total, IIS_IUSRS => controle total).
  8) Ajouter le repertoire "Fichier" dans la racine de l'application.
  9) Dans le fichier web.config de l'application :
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
