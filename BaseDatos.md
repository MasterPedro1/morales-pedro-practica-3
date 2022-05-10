# Base de datos

## Entidades

1. Users
2. Posts
3. Like / Dislike
5. Chat
6. Location


## Atributos

### Users
- Name (PK)
- Furry Name
- Height (UQ)
- Weight (UQ)
- Photo
- Genre 
- Location (FK)
- Phone (UQ)
- Birthdate
- Furry suit

### Posts

- User (FK)
- Photo
- Post ID (PK)
- Date
- Location
- Furry Name
- Furry Suit (UQ) 

### Like / Dislike

- ID (PK)
- Post ID (FK)
- Date

### Chat

- Users Furry Name (FK)
- Chat (PK)
- Chat Date
- Emoji
- Photos

### Location

- Country ID (PK)
- Country Name (FK)

## Relaciones

1. Los _Users_ publican _Posts_   (1-M)
2. Los _Users_ dan _Like / Dislike_ (1-M)
3. Los _Posts_ tiene _Like / Dislike_ (1-M)
4. Los _Users_ chatean con otros _Users_ (1-M)

## Catálogo 

- México
- EUA
- Perú
- Haití


[Regresar](/README.md)
