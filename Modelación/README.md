# Modelo Noflix

## Entidades

### Serie
| Atributo | Tipo | Ejemplo |
|-----------------|---------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ID | Integer | 128 |
| Nombre | Texto | "Friends" |
| Idioma | Texto | "Inglés" |
| País | Texto | "Estados Unidos" |
| Género | Texto | "Comedia" |
| Año lanzamiento | Integer | 1994 |
| Año término | Integer | 2004 |
| Resumen | Text | "La historia comienza con cuatro amigos (Chandler, Monica, Phoebe y Joey) conversando en una cafetería llamada Central Perk. A medida que transcurre el inicio del capítulo aparece el quinto personaje (Ross) y posteriormente la sexta (Rachel). Este encuentro dentro de la cafetería marca el comienzo de una comedia basada en la amistad, los triunfos y caídas, el amor, el pasado y el futuro de un grupo de amigos en la ciudad de Nueva York." |

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
| Nombre | Text | "The Pilot" |
| Resumen | Text | "A Monica (Courteney Cox) la molestan Joey (Matt LeBlanc) y Chandler (Matthew Perry) en Central Perk sobre una cita que tendrá más tarde." |

### Actor

| Atributo | Tipo    | Ejemplo          |
|----------|---------|------------------|
| ID       | Integer | 33               |
| Nombre   | Text    | "Jennifer Aniston" |

### Director


| Atributo | Tipo    | Ejemplo          |
|----------|---------|------------------|
| ID       | Integer | 22               |
| Nombre   | Text    | "Gary Halvorson"   |

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
| Idioma   | Text    | "Español" |

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

### EsCapítuloDe

| Atributo     | Tipo    | Ejemplo |
|--------------|---------|---------|
| ID Capítulo  | Integer | 234     |
| ID Temporada | Integer | 212     |

### EsTemporadaDe

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
