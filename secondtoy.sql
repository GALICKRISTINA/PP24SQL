drop database if exists secondtoy;
create database secondtoy;
use secondtoy;

create table kupac(
sifra int not null primary key auto_increment, 
ime varchar(50) not null,
prezime varchar(50) not null,
adresa varchar(50) not null,
email varchar(50) 
);

create table narudzba(
sifra int not null primary key auto_increment, 
kupac int not null,
datum datetime,
kolicina int,
popust varchar(50),
cijena decimal(18.2),
proizvod int not null
);



create table proizvod(
sifra int not null primary key auto_increment, 
naziv varchar(50) not null,
opis varchar(50),
cijena decimal(18.2)
);

create table kategorija(
sifra int not null primary key auto_increment, 
proizvod  int not null,
narudzba int not null   
);



alter table kategorija add foreign key (proizvod) references proizvod(sifra) ;
alter table kategorija add foreign key (narudzba) references narudzba(sifra);

alter table narudzba add foreign key (kupac) references kupac(sifra);
alter table narudzba add foreign key (proizvod) references proizvod(sifra);






