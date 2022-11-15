ALTER TABLE "myfirstmodule$cursoofertado" ADD "descripcion" varchar(255) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('3297e478-bc78-406e-8f13-7c25c875b8bc', 
'c5a7e8e5-7f65-497e-89d3-f99695bee3d4', 
'Descripcion', 
'descripcion', 
30, 
255, 
'', 
FALSE);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20221114 21:48:53';
