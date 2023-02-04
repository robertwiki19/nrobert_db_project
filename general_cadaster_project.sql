CREATE TABLE employees(
  id serial primary key not null,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  pin varchar(13) unique not null,
  sex char(1) not null,
  employee_position varchar(50) not null
);

CREATE TABLE IF NOT EXISTS team(
  id serial primary key,
  member_1 varchar(50) not null,
  member_2 varchar(50) not null
);

CREATE TABLE IF NOT EXISTS gps(
  id serial primary key,
  model varchar(50) not null,
  battery_time time not null,
  permanent_station varchar(30) not null
);

CREATE TABLE IF NOT EXISTS administrative_unit(
  id serial primary key,
  name varchar(60) not null,
  progress int not null,
  project_due_date date not null,
  villages_number int not null
);

CREATE TABLE IF NOT EXISTS team_gps(
  id serial primary key,
  team_id int references team(id),
  gps_id int references gps(id)
);

CREATE TABLE IF NOT EXISTS team_administrative_unit(
  id serial primary key,
  team_id int references team(id),
  administrative_unit_id int references administrative_unit(id)
);

insert into employees(first_name, last_name, pin, sex, employee_position)
values
		('Bogdan' , 'Mihaela' ,  '1234567890123' ,  'F' ,  'Administrator' ),
		( 'Neagoe' ,  'Robert' ,  '1234567890124' ,  'M',   'Geomatician'),
		( 'Fofiu' ,  'Eusebiu' ,  '1234567890125' ,  'M' ,  'Geomatician' ),
		( 'Dancea' ,  'Darian' ,  '1234567890126' ,  'M' ,  'Geomatician' ),
		( 'Ghilezan' ,  'David' ,  '1234567890127' ,  'M' ,  'Surveyor' ),
		( 'Toma' ,  'Alexandru' ,  '1234567890128' ,  'M' ,  'Surveyor' ),
		( 'Ionescu' ,  'Sergiu' ,  '1234567890129' ,  'M' ,  'Surveyor' ),
		( 'Popescu' ,  'Alexandru' ,  '1234567890130' ,  'M' ,  'Surveyor' ),
		( 'Prisecariu' ,  'Mădălina' ,  '1234567890131' ,  'F' ,  'UAT responsible' ),
		( 'Bogdănescu' ,  'Georgiana' ,  '1234567890132' ,  'F' ,  'UAT responsible' ),
		( 'Georgescu' ,  'Sorina' ,  '1234567890133' ,  'F' ,  'UAT responsible' )

		
SELECT * FROM employees

insert into team (member_1, member_2)
values
		('Ghilezan David', 'Neagoe Robert'),
		('Toma Alexandru', 'Georgescu Sorina'),
		('Eusebiu Fofiu', 'Dancea Darian'),
		('Ionescu Sergiu', 'Popescu Alexandru'),
		('Prisecariu Mădălina', 'Bogdănescu Georgiana')
		
select * from team

insert into gps (model, battery_time, permanent_station)
values
		('South Galaxy', '18:00:00','SysCad'),
		('Hi-Target','20:00:00', 'Rompos'),
		('Leica Viva', '19:30:00', 'Rompos'),
		('South Galaxy', '1', '23:30:00','SysCad'),
		('Hi-Target', '3','22:00:00','SysCad')
		
select * from gps

insert into administrative_unit (name, progress, project_due_date, villages_number)
values
		('Giroc','25','04.02.2025','2'),
		('Ghiroda','30','04.02.2024','2'),
		('Denta','60','17.10.2023','4'),
		('Sânmihaiu Român','45','25.07.2024','3'),
		('Remetea Mare','80','25.11.2023','2')
		
select * from administrative_unit

insert into team_gps(team_id, gps_id)
values
		(1,4),
		(2,3),
		(3,1),
		(4,5),
		(5,2)

select * from team_gps

insert into team_administrative_unit(team_id, administrative_unit_id)
values
		(1,4),
		(2,3),
		(3,1),
		(4,5),
		(5,2)

select * from team_administrative_unit