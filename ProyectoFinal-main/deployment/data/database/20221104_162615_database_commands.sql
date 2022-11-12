ALTER TABLE "myfirstmodule$estudiante_cursoofertado" DROP CONSTRAINT "uniq_myfirstmodule$estudiante_cursoofertado_myfirstmodule$estudianteid";
DROP INDEX "idx_myfirstmodule$estudiante_cursoofertado_myfirstmodule$cursoofertado_myfirstmodule$estudiante";
ALTER TABLE "myfirstmodule$estudiante_cursoofertado" RENAME TO "efad550f8485454e85151b3f1a75b867";
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '3c6de0df-5343-4c1d-948d-00dc54567b73';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_myfirstmodule$estudiante_cursoofertado_myfirstmodule$estudianteid' AND "column_id" = 'e8e6c29d-04b6-30ac-a1d8-c69f19d9f865';
CREATE TABLE "myfirstmodule$inscripcion" (
	"id" BIGINT NOT NULL,
	"observaciones" VARCHAR_IGNORECASE(255) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('c058528b-c6b2-4d5b-a338-26c692298024', 
'MyFirstModule.Inscripcion', 
'myfirstmodule$inscripcion', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('e5372755-8075-4ffe-9d5b-d171c75f0004', 
'c058528b-c6b2-4d5b-a338-26c692298024', 
'Observaciones', 
'observaciones', 
30, 
255, 
'', 
false);
CREATE TABLE "myfirstmodule$inscripcion_cursoofertado" (
	"myfirstmodule$inscripcionid" BIGINT NOT NULL,
	"myfirstmodule$cursoofertadoid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$inscripcionid","myfirstmodule$cursoofertadoid"));
CREATE INDEX "idx_myfirstmodule$inscripcion_cursoofertado_myfirstmodule$cursoofertado_myfirstmodule$inscripcion" ON "myfirstmodule$inscripcion_cursoofertado" ("myfirstmodule$cursoofertadoid" ASC,"myfirstmodule$inscripcionid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('9df63820-db08-45e4-8451-0dd15003ebe5', 
'MyFirstModule.Inscripcion_CursoOfertado', 
'myfirstmodule$inscripcion_cursoofertado', 
'c058528b-c6b2-4d5b-a338-26c692298024', 
'c5a7e8e5-7f65-497e-89d3-f99695bee3d4', 
'myfirstmodule$inscripcionid', 
'myfirstmodule$cursoofertadoid', 
'idx_myfirstmodule$inscripcion_cursoofertado_myfirstmodule$cursoofertado_myfirstmodule$inscripcion');
CREATE TABLE "myfirstmodule$inscripcion_estudiante" (
	"myfirstmodule$inscripcionid" BIGINT NOT NULL,
	"myfirstmodule$estudianteid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$inscripcionid","myfirstmodule$estudianteid"),
	CONSTRAINT "uniq_myfirstmodule$inscripcion_estudiante_myfirstmodule$inscripcionid" UNIQUE ("myfirstmodule$inscripcionid"));
CREATE INDEX "idx_myfirstmodule$inscripcion_estudiante_myfirstmodule$estudiante_myfirstmodule$inscripcion" ON "myfirstmodule$inscripcion_estudiante" ("myfirstmodule$estudianteid" ASC,"myfirstmodule$inscripcionid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('11c50536-6469-4d77-b05e-d6bcaee3af5b', 
'MyFirstModule.Inscripcion_Estudiante', 
'myfirstmodule$inscripcion_estudiante', 
'c058528b-c6b2-4d5b-a338-26c692298024', 
'6ba33abc-4087-46c4-a1f4-dccaf4073118', 
'myfirstmodule$inscripcionid', 
'myfirstmodule$estudianteid', 
'idx_myfirstmodule$inscripcion_estudiante_myfirstmodule$estudiante_myfirstmodule$inscripcion');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$inscripcion_estudiante_myfirstmodule$inscripcionid', 
'11c50536-6469-4d77-b05e-d6bcaee3af5b', 
'6c8253c1-f59c-3304-8d07-9eade5fa7f59');
DROP TABLE "efad550f8485454e85151b3f1a75b867";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20221104 16:26:14';
