use base

-- Agregar Permisos
insert into Permisos values ('Agregar', 'btnAgregar')
insert into Permisos values ('Eliminar', 'btnEliminar')
insert into Permisos values ('Modificar', 'btnModificar')
insert into Permisos values ('Cancelar', 'btnCancelar')
insert into Permisos values ('Guardar', 'btnGuardar')

-- Agregar Formularios
 insert into Formularios1 values ('Gestionar Usuarios', 'formGestionarUsuarios')
 insert into Formularios1 values ('Usuario', 'formUsuario')

-- Agregar Perfiles
insert into Perfiles values ('Cliente')
insert into Perfiles values ('Super Admin')
insert into Perfiles values ('Admin')

-- Agregar ABM Gestionar Usuarios

insert into FormularioPermisos values (1, 2)
insert into FormularioPermisos values (1, 3)
insert into FormularioPermisos values (1, 1)

-- Agregar botones Guardar y Cancelar al form Usuario
 insert into FormularioPermisos values (2, 4)
 insert into FormularioPermisos values (2, 5)

-- Asignar a un perfil un formulario en especifico. Perfil 2 usa formulario 1.
 insert into PerfilFormulario values (2, 1)

insert into Usuarios1 values ('Mauro Falcone', 'maurofalcone.95@gmail.com', '37454893', 'Password@@01', 2)
insert into Usuarios1 values ('Joaquin Leimeter', 'leimeter.95@gmail.com', '40454893', 'Password@@0123', 3)
insert into Usuarios1 values ('Jose blua', 'jose.95@gmail.com', '20454893', 'Password@@01lala', 1)

select * from Usuarios1
go
select * from Perfiles
go
select * from Formularios1
go
select * from Permisos
go
select * from FormularioPermisos
go
select * from PerfilFormulario



select * from Usuarios1


select u.name, f.name as 'Formulario' from Usuarios1 u
inner join Perfiles p on u.Perfil_Id = p.Id
inner join PerfilFormulario pf on pf.Perfil_Id = p.Id
inner join Formularios1 f on pf.Formularios_Id = f.Id where u.name = 'Mauro Falcone'