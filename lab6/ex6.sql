create table orarul( Id_Disciplina int not null,
					Id_Profesor int,
					Id_Grupa smallint default(1),
					Zi char(20),
					Ora time,
					Auditoriu int,
					Bloc char(2) not null default('B'));


insert into orarul(Id_Disciplina, Id_Profesor, Zi, Ora , Auditoriu) values( 107, 101, 'Luni', '08:00',202)
insert into orarul(Id_Disciplina, Id_Profesor, Zi, Ora , Auditoriu) values(108, 101, 'Luni', '11:30',501)
insert into orarul(Id_Disciplina, Id_Profesor, Zi, Ora , Auditoriu) values(119, 117, 'Luni', '13:30',501)