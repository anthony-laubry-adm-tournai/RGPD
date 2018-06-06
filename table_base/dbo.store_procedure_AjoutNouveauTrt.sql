CREATE PROCEDURE AjoutNouveauTrt
	@idService BIGINT,
	@agEncodeur VARCHAR(50),
	@agEval VARCHAR(50),
	@agVali VARCHAR(50),
	@dateCrea DATETIME,
	@dateModif DATETIME,
	@nomTrt VARCHAR(50),
	@toControlContact BIT,
	@toControlDPD BIT,
	@toModify BIT,
	@isValid BIT,
	@lstDonnePers TEXT,
	@lstDonneSen TEXT,
	@durConsDonne BIGINT,
	@legitimation INT,
	@commentaire TEXT,
	@isOPen    BIT,
	@remContact TEXT,
	@remDPD TEXT,
	@SupportDonnee TEXT,
	@DonneeExactAJour BIT,
	@Finalite INT,
	@Pconcerne INT,
	@GestionSousTraitance TEXT,
	@id        BIGINT output
AS
	INSERT INTO Traitement (IdService, AgEncodeur,AgEval,AgVali,DateCrea,DateModif,NomTrt,ToControlContact, ToControlDPD,ToModify,IsValid,LstDonnePers,LstDonneSen,DurConsDonne,Legitimation,Commentaire ,IsOpen,RemContact,RemDPD,SupportDonnee,DonneeExactAJour,Finalite, Pconcerne, GestionSousTraitance) VALUES
	   (@idService,@agEncodeur,@agEval,@agVali,@dateCrea,@dateModif,@nomTrt,@toControlContact, @toControlDPD,@toModify,@isValid,@lstDonnePers,@lstDonneSen,@durConsDonne,@legitimation,@commentaire,@isOPen,@remContact,@remDPD,@SupportDonnee,@DonneeExactAJour,@Finalite, @Pconcerne,@GestionSousTraitance) 
	SET @id = @@IDENTITY

	return @id