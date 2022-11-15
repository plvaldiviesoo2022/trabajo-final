ALTER TABLE "myfirstmodule$inscripcion_cursoofertado" ADD CONSTRAINT "uniq_myfirstmodu$inscripcio_cursooferta_myfirstmodu$inscripcion" UNIQUE ("myfirstmodule$inscripcionid");
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodu$inscripcio_cursooferta_myfirstmodu$inscripcion', 
'9df63820-db08-45e4-8451-0dd15003ebe5', 
'79affe9a-405d-3e34-8890-b8569c75d704');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20221114 21:41:58';
