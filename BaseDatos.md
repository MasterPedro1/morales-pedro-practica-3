# Base de datos

## Entidades

1. Users
2. Like / Dislike
3. Chat
4. Location


## Atributos

### Users
- Name 
- Furry Name (PK)
- Height 
- Weight 
- Photo
- Genre 
- Location (FK)
- Phone (UQ)
- Birthdate
- Furry suit



### Like / Dislike

- ID (PK)
- Post ID (FK)
- Date
- Like / Dislike given
- Like / Dislike recibe

### Chat

- Furry Name (FK)
- Chat (PK)
- Chat Date
- Photos

### Location

- Country ID (PK)
- Country Name (FK)

## Relaciones

1. Los _Users_ publican _Posts_   (1-M)
2. Los _Users_ dan _Like / Dislike_ (1-M)
3. Los _Posts_ tiene _Like / Dislike_ (1-M)
4. Los _Users_ chatean con otros _Users_ (1-M)
5. Los _Users_ tiene _Location_(1-1)

## Catálogo 

- México
- EUA
- Perú
- Haití


[Regresar](/morales-pedro-practica-3/README.md)
