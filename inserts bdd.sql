select *from miembro
select *from materia
select *from materia_miembro
select *from contacto
select *from ciudad
select *from c_email
select *from evento

/*-----------------------------------------------------*/
/*INSERTS DE MIEMBROS*/
insert into miembro(nombre,matricula)
values('Luis Andres Polanco Bautista','2017-5328')

insert into miembro(nombre,matricula)
values('Harold Fernando Pichardo Delgado','2017-4857')
/*-----------------------------------------------------*/

/*-----------------------------------------------------*/
/*INSERTS DE MATERIAS*/
insert into materia(nombre)values('Programacion III')
insert into materia(nombre)values('Int. A la Ingenieria de Software')
insert into materia(nombre)values('Auditoria Informatica')
insert into materia(nombre)values('Mineria de los Datos')
insert into materia(nombre)values('Estructura de los Datos')
insert into materia(nombre)values('Diseño Centrado en el Usuario')
insert into materia(nombre)values('Calculo Integral')
insert into materia(nombre)values('Etica III')
/*-----------------------------------------------------*/

/*-----------------------------------------------------*/
/*INSERTS DE MATERIASXMIEMBRO*/
alter table materia_miembro drop column grupo
INSERT INTO materia_miembro(miembro,materia)values('1','1')
INSERT INTO materia_miembro(miembro,materia)values('1','3')
INSERT INTO materia_miembro(miembro,materia)values('1','5')
INSERT INTO materia_miembro(miembro,materia)values('1','6')
INSERT INTO materia_miembro(miembro,materia)values('1','7')
INSERT INTO materia_miembro(miembro,materia)values('1','8')
INSERT INTO materia_miembro(miembro,materia)values('2','1')
INSERT INTO materia_miembro(miembro,materia)values('2','2')
INSERT INTO materia_miembro(miembro,materia)values('2','3')
INSERT INTO materia_miembro(miembro,materia)values('2','4')
INSERT INTO materia_miembro(miembro,materia)values('2','5')
INSERT INTO materia_miembro(miembro,materia)values('2','6')
/*-----------------------------------------------------*/

/*------------------------------------------------------*/
/*INSERTS eventos*/
insert into evento(descripcion,fecha,hora) values('Reunión con el comité de TIC','2019-12-02','15:00')
insert into evento(descripcion,fecha,hora) values('Karaoke con los panas','2019-12-21','19:30')
insert into evento(descripcion,fecha,hora) values('Entrega de proyecto final de matematicas','2020-03-28','10:00')
/*-------------------------------------------------------*/

/*-------------------------------------------------------*/
/*INSERTS ciudad-CONTACTOS*/
insert into ciudad(nombre)values('Santo Domingo')
insert into ciudad(nombre)values('La Romana')
insert into ciudad(nombre)values('Jimani')
/*-------------------------------------------------------*/

/*-------------------------------------------------------*/
/*INSERTS CONTACTOS*/
drop table c_email
alter table contacto add correo varchar(50);
alter table contacto alter column celular varchar(20)
/**/
insert into contacto(nombre,celular,numero,calle,sector,ciudad,correo)
values('Manuel Hernandez','8091231234','43','Manzana','Las Frutas','1','mh003@hotmail.com')
insert into contacto(nombre,celular,numero,calle,sector,ciudad,correo)
values('Luisa Matos','8291111111','6C','4','Los Minas','1','lmatos@gmail.com')
insert into contacto(nombre,celular,numero,calle,sector,ciudad,correo)
values('Albairis Berroa','8292222222','235','Maria Montes','Villa Real','2','aberroa@gmail.com')

/*-------------------------------------------------------*/
