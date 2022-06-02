INSERT INTO Locations (Locarion_name) VALUES ("México"), ("Haití"), ("EUA"), ("Perú");

SELECT * FROM Locations;

SELECT * FROM Locations WHERE Location_name = "México"

UPDATE Locations SET Locations = "México" WHERE Location_id = 1;

DELETE FROM Locations WHERE Locations_id = 4;

INSERT INTO Profile (Profile_id, email, password, phone, Locations) VALUES
('@ValdomeroCaramelo', NOW(), 'valdomeroelcara@gmail.com', SHA1('dcklover'), '55762938', 1);

SELECT * FROM Profile;
SELECT Profile_id, email FROM Profile;

SELECT * FROM Profile WHERE email = 'valdomeroelcara@gmail.com';

SELECT Profile_id, email FROM Probile WHERE Profile_id = '@ValdomeroCaramelo';

SELECT * FROM Profile

WHERE (Profile_id = '@ValdomeroCaramelo' OR email = 'valdomeroelcara@gmail.com' OR phone = '55762938') AND password = SHA1('dcklover');

UPDATE Profile
  SET
    avatar = "Nester.jpg", 
    birthdate = "1999-04-09",
    genre = "Hombre"

  WHERE Profile_id = "@ValdomeroCaramelo";

/* 1. Actualizar _password_ de _user_. */
UPDATE users
  SET password = SHA1("new password")
  WHERE Profile_id = "@ValdomeroCaramelo";

/* 1. Eliminar _user_. */
DELETE FROM users
  WHERE user = '@ValdomeroCaramelo';

INSERT INTO Profile ( Profile_id,email, phone, password )
  VALUES
    ( '@TobiesUWU', 'tobibobi@gmail.com',"5512345679", SHA1('pssylover') ),
    ( '@RIKUINU', 'teamopedre2@gmail.com', "5512345670",SHA1('Tobies34') ),
    ( '@AlamMask', 'elsinpumones@gmail.com', "5512345677",SHA1('lasoplas') );

/* Follows */

/* Crear follow de un user */
INSERT INTO LikeDislike ( LikeDislike_date, Profile_id, Other_Profile_id)
  VALUES
    ( NOW(), '@ValdomeroCaramelo', '@AlamMask' ),
    ( NOW(), '@RIKUINU', '@ValdomeroCaramelo' ),
    ( NOW(), '@AlamMask', '@ValdomeroCaramelo' ),
    ( NOW(), '@RIKUINU', '@AlamMask' );

SELECT COUNT(*) as likesdislikes FROM LikeDislike
  WHERE Profile_id = 1;

  DELETE FROM LikeDislike
    WHERE LikeDislike_id = 3
        AND Profile_id = '@ValdomeroCaramelo';


INSERT INTO Like_Approve ( Like_Approve_date, Profile_id, Other_Profile_id )
  VALUES
    ( NOW(), '@AlamMask', '@ValdomeroCaramelo' ),
    ( NOW(), '@ValdomeroCaramelo', '@AlamMask' );

SELECT COUNT(*) as likesdislikes FROM LikeDislike
WHERE Profile_id = 1;

DELETE FROM Like_Approve
  WHERE Like_Approve_id = 1
    AND Profile_id = '@ValdomeroCaramelo';

    

INSERT INTO Chat (Chat_date, photo, chat, Profile_id, Other_Profile_id )
  VALUES
    ( NOW(), NULL, 'Pa cuando pa',  '@AlamMask', '@ValdomeroCaramelo' ),
    ( NOW(), dickpick.png, 'Pa pronto mi todo tibiaso', '@ValdomeroCaramelo', '@AlamMask' );
    
SELECT COUNT(*) as chats FROM Chat
WHERE Profile_id = 1;

DELETE FROM Chat
  WHERE Chat_id = 1
    AND Profile_id = '@ValdomeroCaramelo';