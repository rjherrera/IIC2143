# Modelo Noflix

## Entidades

### Usuario

| Atributo | Tipo    | Ejemplo      |
|----------|---------|--------------|
| ID       | Integer | 1            |
| Email    | String  | "john@doe.com" |
| Nombre   | String  | "John Doe"     |
| Niño     | Boolean | 0            |
| Admin    | Boolean | 1            |

### Serie
| Atributo | Tipo | Ejemplo |
|-----------------|---------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ID | Integer | 128 |
| Nombre | String | "Friends" |
| Idioma | String | "Inglés" |
| País | String | "Estados Unidos" |
| Género | String | "Comedia" |
| Año lanzamiento | Integer | 1994 |
| Año término | Integer | 2004 |
| Resumen | Text | "La historia comienza con cuatro amigos (Chandler, Monica, Phoebe y Joey) conversando en una cafetería llamada Central Perk. A medida que transcurre el inicio del capítulo aparece el quinto personaje (Ross) y posteriormente la sexta (Rachel). Este encuentro dentro de la cafetería marca el comienzo de una comedia basada en la amistad, los triunfos y caídas, el amor, el pasado y el futuro de un grupo de amigos en la ciudad de Nueva York." |
| Privada | Boolean | 0 |

### Temporada

| Atributo     | Tipo    | Ejemplo |
|--------------|---------|---------|
| ID           | Integer | 212     |
| Nº Temporada | Integer | 1       |

### Capítulo

| Atributo | Tipo | Ejemplo |
|-------------|---------|------------------------------------------------------------------------------------------------------------------------------------------|
| ID | Integer | 234 |
| Nº Capítulo | Integer | 1 |
| Duración | Time | 20:13 |
| Nombre | String | "The Pilot" |
| Resumen | Text | "A Monica (Courteney Cox) la molestan Joey (Matt LeBlanc) y Chandler (Matthew Perry) en Central Perk sobre una cita que tendrá más tarde." |

### Actor

| Atributo | Tipo    | Ejemplo          |
|----------|---------|------------------|
| ID       | Integer | 33               |
| Nombre   | Text    | "Jennifer Aniston" |

### Director


| Atributo | Tipo    | Ejemplo          |
|----------|---------|------------------|
| ID       | Integer | 22               |
| Nombre   | String    | "Gary Halvorson"   |

### Review

| Atributo   | Tipo    | Ejemplo                     |
|------------|---------|-----------------------------|
| ID         | Integer | 1234                        |
| Estrellas  | Integer | 5                           |
| Comentario | Text    | "¡La mejor serie que existe!" |

### Subtítulo

| Atributo | Tipo    | Ejemplo |
|----------|---------|---------|
| ID       | Integer | 2       |
| Idioma   | String    | "Español" |

### Noticia

| Atributo | Tipo | Ejemplo |
|-----------|---------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ID | Integer | 4433 |
| Contenido | Text | "Lisa Kudrow, la actriz que interpretó a Phoebe explica por qué no volveremos a ver a los protagonistas juntos en pantalla: 'No veo que suceda. Sería divertido, pero ¿de qué trataría? Piénsalo, lo que más nos gustaba de la serie era que tenían 20 años y eran su propia familia. Ahora todos tienen familia, así que ¿qué vamos a ver?'" |

## Relaciones


### DirigeA

| Atributo    | Tipo    | Ejemplo |
|-------------|---------|---------|
| ID Director | Integer | 22      |
| ID Serie    | Integer | 128     |


### ActúaEn

| Atributo | Tipo    | Ejemplo |
|----------|---------|---------|
| ID Actor | Integer | 33      |
| ID Serie | Integer | 128     |


### EsCapítuloDe

| Atributo     | Tipo    | Ejemplo |
|--------------|---------|---------|
| ID Capítulo  | Integer | 234     |
| ID Temporada | Integer | 212     |


### EsTemporadaDe

| Atributo     | Tipo    | Ejemplo |
|--------------|---------|---------|
| ID Temporada | Integer | 212     |
| ID Serie     | Integer | 128     |


### EsReviewDeSerie

| Atributo     | Tipo    | Ejemplo |
|--------------|---------|---------|
| ID Review | Integer    | 1234    |
| ID Serie     | Integer | 128     |


### EsReviewDeCapítulo

| Atributo     | Tipo    | Ejemplo |
|--------------|---------|---------|
| ID Review    | Integer | 1235    |
| ID Capítulo  | Integer | 234     |


### EsNoticiaDe

| Atributo     | Tipo    | Ejemplo |
|--------------|---------|---------|
| ID Noticia   | Integer | 4433    |
| ID Serie     | Integer | 128     |


### EsSubtítuloDe

| Atributo     | Tipo    | Ejemplo |
|--------------|---------|---------|
| ID Subtítulo | Integer | 2       |
| ID Serie     | Integer | 128     |


### EsNiñoDe

| Atributo         | Tipo    | Ejemplo |
|------------------|---------|---------|
| ID Usuario Niño  | Integer | 4       |
| ID Usuario Común | Integer | 1       |


### EsSeriePrivadaDe
| Atributo     | Tipo    | Ejemplo |
|--------------|---------|---------|
| ID Serie     | Integer | 222     |
| ID Usuario Común | Integer | 1       |


### VistoPor
| Atributo     | Tipo    | Ejemplo |
|--------------|---------|---------|
| ID Capítulo     | Integer | 99     |
| ID Usuario Común | Integer | 1       |


### ReviewedBy
| Atributo     | Tipo    | Ejemplo |
|--------------|---------|---------|
| ID Review     | Integer | 707     |
| ID Usuario Común | Integer | 1       |


### NoticiaInformadaPor
| Atributo     | Tipo    | Ejemplo |
|--------------|---------|---------|
| ID Noticia     | Integer | 909     |
| ID Usuario Común | Integer | 1       |
