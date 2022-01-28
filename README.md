# EER-Data-Model
Designed a conceptual schema using an EER data model,  incorporated this schema into a RDBMS and ran queries on this database.

Design Specification:
The following is a description of a database of movies information. 
A movie has a title, release date, rating, running time, director, and one or more actors.
Movies are split between domestic and foreign movies. A foreign movie uses a language other 
than English and may provide English subtitles. Domestic movies are further categorized into 
comedy, drama, action and horror movies. A comedy movie has a degree of “funniness” which 
ranges between 1 and 5. A drama movie has a short description such as “love story”, 
“documentary”, “humanity”, etc.
Each movie can be reviewed by one or more critics, each of whom gives an evaluation that 
ranges from zero to five stars. A critic has a name and a phone number. He or she might review 
one or more movies. 
Each movie can be produced by one or more production companies. One production company 
might produce one or more movies. For each production company, we keep track of its name, 
address, and phone number. A production company’s address can be accessed as street address, 
city, state, and zip code individually and the entire address of a distributor can also be retrieved 
as a unit
