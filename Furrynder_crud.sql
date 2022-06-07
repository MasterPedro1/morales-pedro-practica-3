INSERT INTO Location (Location_name) VALUES ("México"), ("Haití"), ("EUA"), ("Perú");

INSERT INTO Location (Location_name) VALUES ("Afganistan");

SELECT * FROM Location;

SELECT * FROM Location WHERE Location_name = "México"

UPDATE Location SET Location_name = "México" WHERE Location_id = 1;

DELETE FROM Location WHERE Location_id = 4;

INSERT INTO Profile (Profile_id, email, password, phone, Locations) VALUES
('@ValdomeroCaramelo', 'valdomeroelcara@gmail.com', SHA1('dcklover'), '55762938', 1);

SELECT * FROM Profile;
SELECT Profile_id, email FROM Profile;

SELECT * FROM Profile WHERE email = 'valdomeroelcara@gmail.com';

SELECT Profile_id, email FROM Profile WHERE Profile_id = '@ValdomeroCaramelo';

SELECT * FROM Profile

WHERE (Profile_id = '@ValdomeroCaramelo' OR email = 'valdomeroelcara@gmail.com' OR phone = '55762938') AND password = SHA1('dcklover');

UPDATE Profile
  SET
    avatar = "Alamelsabio.jpg", 
    birthdate = "2000-10-11",
    genre = "Hombre"

  WHERE Profile_id = "@AlamMask";

/* 1. Actualizar _password_ de _user_. */
UPDATE profile
  SET password = SHA1("newpassword")
  WHERE Profile_id = "@ValdomeroCaramelo";

/* 1. Eliminar _user_. */
DELETE FROM Profile
  WHERE Profile_id = '@ValdomeroCaramelo';

INSERT INTO Profile ( Profile_id ,email, phone, password, Locations )
  VALUES
    ( '@TobiesUWU', 'tobibobi@gmail.com',"5512345679", SHA1('pssylover'), 1),
    ( '@Carle', 'lolqueasco@gmail.com', "5518619679",SHA1('eduveteya'), 2),
    ( '@RIKUINU', 'teamopedre2@gmail.com', "5512345670",SHA1('Tobies34'), 3),
    ( '@AlamMask', 'elsinpumones@gmail.com', "5512345677",SHA1('lasoplas'), 1);

/* Follows */

/* Crear follow de un user */
INSERT INTO LikeDislike ( LikeDislike_date, Profile_id, Other_Profile_id)
VALUES
    ( NOW(), '@ValdomeroCaramelo', '@AlamMask' ),
    ( NOW(), '@RIKUINU', '@ValdomeroCaramelo' ),
    ( NOW(), '@AlamMask', '@ValdomeroCaramelo' ),
    ( NOW(), '@RIKUINU', '@AlamMask' ),
    ( NOW(), '@RIKUINU', '@Carle' ),
    ( NOW(), '@Carle', '@AlamMask' ),
    ( NOW(), '@AlamMask', '@RIKUINU' ),
    ( NOW(), '@TobiesUWU', '@Carle' ),
    ( NOW(), '@Carle', '@TobiesUWU' ),
    ( NOW(), '@ValdomeroCaramelo', '@RIKUINU' );

SELECT COUNT(*) as likesdislikes FROM LikeDislike
  WHERE Profile_id = 1;

  DELETE FROM LikeDislike
    WHERE LikeDislike_id = 3
        AND Profile_id = '@ValdomeroCaramelo';


INSERT INTO Like_Approve ( Like_Approve_date, Profile_id, Other_Profile_id )
  VALUES
    ( NOW(), '@AlamMask', '@ValdomeroCaramelo' ),
    ( NOW(), '@ValdomeroCaramelo', '@AlamMask' ),
    ( NOW(), '@TobiesUWU', '@Carle' ),
    ( NOW(), '@Carle', '@TobiesUWU' ),
    ( Now(), '@RIKUINU', '@ValdomeroCaramelo'),
    ( Now(), '@ValdomeroCaramelo', '@RIKUINU'),


SELECT COUNT(*) as likesdislikes FROM LikeDislike
WHERE Profile_id = 1;

DELETE FROM Like_Approve
  WHERE Like_Approve_id = 1
    AND Profile_id = '@ValdomeroCaramelo';

    

INSERT INTO Chat (Chat_date, chat, Profile_id, Other_Profile_id )
  VALUES
    ( NOW(), 'Pa cuando pa',  '@AlamMask', '@ValdomeroCaramelo' ),
    ( NOW(), 'Pa pronto mi todo tibiaso', '@ValdomeroCaramelo', '@AlamMask' ),
    ( NOW(), 'Ya va siendo hora', '@ValdomeroCaramelo', '@AlamMask'),
    ( NOW(), 'Hola cómo estas', '@RIKUINU', '@ValdomeroCaramelo'),
    ( NOW(), 'Contestame porfavor', '@RIKUINU', '@ValdomeroCaramelo');
    
SELECT COUNT(*) as chats FROM Chat
WHERE Profile_id = 1;

DELETE FROM Chat
  WHERE Chat_id = 1
    AND Profile_id = '@ValdomeroCaramelo';