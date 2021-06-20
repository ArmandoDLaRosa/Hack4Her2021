-- Datawarehouse creation
-- Hack4Her 2021
-- Esthela Cedillo, Armando Cerda, Jesus Trujillo, Ivan Ramirez
-- 2021

use hack4Her_db;

drop table if exists dimDivulgacionContIntimo;
drop table if exists dimDoxing;
drop table if exists dimSexteo;
drop table if exists dimCiberacoso;
drop table if exists dimDigital;

drop table if exists dimCulturaViolacion;
drop table if exists dimViolacion;
drop table if exists dimAcosoSexual;
drop table if exists dimSexual;

drop table if exists dimViolenciaFisica;
drop table if exists dimViolenciaPsicologica;
drop table if exists dimViolenciaEconomica;
drop table if exists dimViolencia;

drop table if exists Demography;
drop table if exists Preguntas;

-- CREACION DE LAS TABLAS
create table Demography(
	id int primary key not null,
	edadActual int,
	entidadFederativaActual varchar(80),
	comunIndigenaActual varchar(80),
	maxEscolaridadActual varchar(80),
	edadIncidencia int,
	entidadFederativaIncidencia varchar(80),
	maxEscolaridadIncidencia varchar(80)
);

create table Preguntas(
	idPregunta int primary key not null,
	textoPregunta varchar(256)
);

create table dimViolencia(
	id int,
	contexto text,
	foreign key(id) references Demography(id)
);

create table dimSexual(
	id int,
	contexto text,
	foreign key(id) references Demography(id)
);

create table dimDigital(
	id int,
	contexto text,
	foreign key(id) references Demography(id)
);

create table dimViolenciaEconomica(
	id int,
	idPregunta int,
	respuesta int,
	foreign key(id) references dimViolencia(id),
	foreign key(idPregunta) references Preguntas(idPregunta)
);

create table dimViolenciaPsicologica(
	id int,
	idPregunta int,
	respuesta int,
	foreign key(id) references dimViolencia(id),
	foreign key(idPregunta) references Preguntas(idPregunta)
);

create table dimViolenciaFisica(
	id int,
	idPregunta int,
	respuesta int,
	foreign key(id) references dimViolencia(id),
	foreign key(idPregunta) references Preguntas(idPregunta)
);

create table dimAcosoSexual(
	id int,
	idPregunta int,
	respuesta int,
	foreign key(id) references dimSexual(id),
	foreign key(idPregunta) references Preguntas(idPregunta)
);

create table dimViolacion(
	id int,
	idPregunta int,
	respuesta int,
	foreign key(id) references dimSexual(id),
	foreign key(idPregunta) references Preguntas(idPregunta)
);
create table dimCulturaViolacion(
	id int,
	idPregunta int,
	respuesta int,
	foreign key(id) references dimSexual(id),
	foreign key(idPregunta) references Preguntas(idPregunta)
);
create table dimCiberacoso(
	id int,
	idPregunta int,
	respuesta int,
	foreign key(id) references dimDigital(id),
	foreign key(idPregunta) references Preguntas(idPregunta)
);

create table dimSexteo(
	id int,
	idPregunta int,
	respuesta int,
	foreign key(id) references dimDigital(id),
	foreign key(idPregunta) references Preguntas(idPregunta)
);

create table dimDoxing(
	id int,
	idPregunta int,
	respuesta int,
	foreign key(id) references dimDigital(id),
	foreign key(idPregunta) references Preguntas(idPregunta)
);

-- Insercion de preguntas
insert into Preguntas values(1,'¿Alguna vez alguien cercano ha controlado tus ingresos?');
insert into Preguntas values(2,'¿Tu ser querido te ha robado dinero?');
insert into Preguntas values(3,'¿Alguien te fuerza a darle acceso a tus cuentas de banco?');
insert into Preguntas values(4,'¿Algun ser querido te asigna o ha asignado una cantidad de dinero a la semana o al mes aun si no estas de acuerdo?');
insert into Preguntas values(5,'¿Alguien te ha impedido trabajar, estudiar o asistir a cursos de capacitacion?');
insert into Preguntas values(6,'¿Alguien te ha amenazado o chantajeado?');
insert into Preguntas values(7,'¿Tu pareja te ha humillado y/o denigrado en la intimidad o en publico?');
insert into Preguntas values(8,'¿Alguna vez algun ser querido ha negado o restado importancia a tus emociones y experiencias?');
insert into Preguntas values(9,'¿Tu pareja te ha aislado de tus familiares y seres queridos?');
insert into Preguntas values(10,'¿Alguna vez algun ser querido te ha empujado, mordido o pellizcado?');
insert into Preguntas values(11,'¿Alguna vez algun ser querido te ha golpeado, abofeteado o pateado?');
insert into Preguntas values(12,'¿Tu ser querido te ha atacado o amenazado con algún tipo de arma u objeto contundente?');
insert into Preguntas values(13,'¿Tu ser querido te ha privado de tu libertad?');
insert into Preguntas values(14,'¿Has recibido miradas lascivas, manoseos, apretones o roces no deseados?');
insert into Preguntas values(15,'¿Has recibido comentarios o insinuaciones sexuales no deseadas?');
insert into Preguntas values(16,'¿Has recibido insultos basados en tu sexo o género?');
insert into Preguntas values(17,'¿Has sufrido de acoso callejero? Considera que el acoso callejero sucede en lugares públicos y medios de transporte colectivos.');
insert into Preguntas values(18,'¿Has sufrido de acoso en tu escuela?');
insert into Preguntas values(19,'¿Has sufrido de acoso en tu trabajo?');
insert into Preguntas values(20,'¿Has tenido relaciones sexuales sin consentimiento?');
insert into Preguntas values(21,'¿Alguien ha abusado de ti mientras te encontrabas en estado de ebriedad o inconsciencia?');
insert into Preguntas values(22,'¿Has tenido relaciones sexuales debido a manipulación, chantaje o engaño?');
insert into Preguntas values(23,'¿Alguien te ha condicionado una promocion o amenzado tu estatus laboral si no accedes a tener relaciones sexuales?');
insert into Preguntas values(24,'¿Alguna pareja ha abusado sexualmente de ti?');
insert into Preguntas values(25,'¿Algun familiar ha abusado sexualmente de ti?');
insert into Preguntas values(26,'¿Algun amigo o persona cercana ha abusado sexualmente de ti?');
insert into Preguntas values(27,'¿Algun desconocido ha abusado sexualmente de ti?');
insert into Preguntas values(28,'¿Te han avergonzado por como manejas tu vida sexual?');
insert into Preguntas values(29,'¿Has presenciado bromas sexuales explícitas o chistes relacionados al abuso sexual?');
insert into Preguntas values(30,'En caso de haber sido victima de acoso sexual, ¿has tenido que seguir conviviendo con tu(s) agresor(es) despues del suceso?');
insert into Preguntas values(31,'En caso de haber sido victima de acoso sexual, ¿han dudado de tu version de los hechos?');
insert into Preguntas values(32,'¿Has recibido insultos basados en tu sexo o genero?');
insert into Preguntas values(33,'¿Alguna pareja te ha manipulado o convencido de revisar tus redes sociales?');
insert into Preguntas values(34,'¿Alguna vez alguien ha amenazado tu seguridad o integridad en redes sociales?');
insert into Preguntas values(35,'¿Has recibido imagenes o mensajes sexuales explicitos sin tu consentimiento?');
insert into Preguntas values(36,'¿Alguna vez alguien te ha presionado o extorsionado para que le mandes imagenes o mensajes sexuales explicitos?');
insert into Preguntas values(37,'¿Alguien te ha amenazado con divulgar o ha divulgado imagenes, audios o mensajes de texto que mandaste en un momento intimo a alguien de confianza?');
insert into Preguntas values(38,'¿Alguien te ha hackeado para obtener o divulgar imagenes o mensajes de texto intimos?');
insert into Preguntas values(39,'¿Alguna vez alguien te ha amenazado con revelar o ha revelado informacion personal tuya (como tu direccion o tu numero telefonico) con el fin de atacarte?');

-- drop procedure if exists AddRegistro;
	
/*delimiter $$
create procedure AddRegistro (in id	int,
							  in edadActual int,
							  in entidadFederativaActual varchar(80),
							  in comunIndigenaActual varchar(80),
							  in maxEscolaridadActual varchar(80),
							  in edadIncidencia int,
							  in entidadFederativaIncidencia varchar(80),
							  in maxEscolaridadIncidencia varchar(80))
begin
insert into Demography (id,
					 	edadActual,
					 	entidadFederativaActual,
					 	comunIndigenaActual,
					 	maxEscolaridadActual,
					 	edadIncidencia,
					 	entidadFederativaIncidencia,
					 	maxEscolaridadIncidencia)
values(id,
	   edadActual,
	   entidadFederativaActual,
	   comunIndigenaActual,
	   maxEscolaridadActual,
	   edadIncidencia,
	   entidadFederativaIncidencia,
	   maxEscolaridadIncidencia);
end$$
delimiter ;*/

-- @idVar = (select MAX(d.id) + 1 from hack4her_db.Demography d);


-- ©2021 Derechos reservados: Ninguna parte de esta obra puede ser reproducida o transmitida, 
-- mediante ningún sistema o método, electrónico o mecánico, sin conocimiento por escrito de los autores.