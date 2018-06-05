# RGPD
Registre des traitements

Mise en place :

  1) Installation du serveur IIS
  2) Installation d'un SQL server Express (ou non)
  3) Sous Sql server créé la base de données et les tables avec les script .sql
  4) Ajouter le projet dans un site IIS
  5) Configurer les droit du répertoire de l'application dans wwwroot (Tout le monde => controle total, IIS_IUSRS => controle total)
  6) Dans le fichier web.config de l'application :
     ---------------------------------------------
      < add key="domainName" value="xxxxx.xx"/ >
        => remplacer xxxxx.xx par votreNomDeDomaine.be
      
      < setting name="AdresseSrv" serializeAs="String" >
        <value>xxx.xxx.xxx.xxx</value>      
      < /setting >
        => remplacer xxx.xxx.xxx.xxx par l'adresse/nom de votre serveur qui heberge l'application
     
      < setting name="PortSrv" serializeAs="String" >
        <value>xxxxx</value>
      < /setting >
         => remplacer xxxxx par le port d'écoute de votre serveur.
