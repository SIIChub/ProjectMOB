
drop database if exists foot;
create database foot;
use foot;

create table club (
	nom varchar (50) not null,
	stade varchar (50),
	ville varchar (100),
	primary key (nom)
	);
	
create table equipe(
	code int (2) not null auto_increment,
	couleur enum ("bleue","rouge","vert","jaune"),
	division varchar (10) not null,
	annee_creation date,
	nom varchar (50) not null,
	primary key (code),
	foreign key (nom) references club (nom)
	);
	

insert into club values('PSG','stade de France','Paris');
insert into club values('OM','Stade du velodrome','Marseille');
insert into equipe values ('null','bleue','ligue1','1915-02-05','PSG');
insert into equipe values ('null','bleue','division3','1920-03-05','PSG');

select * from club ;select nom, division, annee_creation from equipe;
select * from equipe where nom ='PSG';
select * from equipe where nom='psg' and division ='ligue1';
select * from equipe where division ='ligue1' or division ='division3';

update equipe set division ='ligue1' where code ='2';
update equipe set nom ='OM' where code ='2';
update equipe set couleur='rouge' where nom='psg';

desc equipe;

alter table equipe add nb_joueur int(2);
update equipe set nb_joueur='22' where code ='1';
update equipe set nb_joueur='25' where code ='2';

select avg(nb_joueur) as moyenne from equipe;
select min(nb_joueur) as minimum from equipe;
select max(nb_joueur) as maxmimum from equipe;
select min(nb_joueur) as minimum, max(nb_joueur) as maxmimum from equipe;
select sum(nb_joueur) as total from equipe;
select count(code) as total_equipe from equipe;
select count(code) as total_equipe from equipe where nom='PSG';

select count(*) as total_equipe_club,nom as club from equipe group by nom;
select * from club order by nom;
select * from club order by nom desc

select equipe.nom, stade, division from equipe, club where equipe.nom=club.nom;
select division, code, nb_joueur, annee_creation from equipe, club where equipe.nom=club.nom and stade='Parc des princes';

delete from equipe where code ='2';
delete  from equipe;
drop table equipe;
drop database foot;

