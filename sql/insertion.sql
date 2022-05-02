USE mediclic;

-- Insérer des médecins
INSERT INTO medecins (nom, prenom, specialite, numpro, coordonnes, facturation, lieuTravail, sexe, mail, password)
VALUES ("Marcel", "Justin", "Chirurgien", "(514)135-1264", "1892 Blvrd Côte-Vertu",  325, "Hôpital Jean-Talon", "Homme", "mjustin@gmail.com", "12345"),
	   ("Floriance", "Sabine", "Chirurgien", "(514)526-2153", "145 Rue Crevier",  450, "Hôpital Marie-Clarac", "Femme", "sfloriance@gmail.com", "crosemont"),
	   ("River", "Ward", "Dentiste", "(514)532-7969", "192 Avenue 21",  120, "Hôpital Maisonneuve-Rosemont", "Homme", "rward@yahoo.ca", "lemotdepasse"),
	   ("Alvarez", "Judy", "Generaliste", "(438)842-9931", "325 Kabuki",  250, "Hôpital Fleury", "Femme", "ajudy@nightcity.com", "alvarez123"),
	   ("Dupont", "Michel", "Ophtalmologiste", "(514)612-7691", "3262 Blvrd Poirier",  500, "Hôpital Santa Cabrini", "Homme", "michel13@mediclic.qc.ca", "mediclic21");

-- Insérer des patients
INSERT INTO patients (nom, prenom, assurance, naissance, sexe, mail, password)
VALUES ("Leblanc", "Richard", "LEBR2469274", "03-11-1973", "Homme", "brichard@gmail.com", "crosemont53"),
	   ("Martine", "Sandra", "MARS2469743", "12-06-1990", "Femme", "Sany13@gmail.com", "rosemont12"),
	   ("Decker", "Ella", "DECA2496704", "30-01-1986", "Femme", "Ella@hotmail.fr", "password64"),
	   ("Carlier", "Serge", "CARS4367934", "13-09-1969", "Homme", "cserge@gmail.com", "cafelatte32"),
	   ("Bouchard", "Cassandra", "BOUC3429670", "28-02-2001", "Femme", "cassandratec@crosemont.qc.ca", "billy43");

