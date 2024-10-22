INSERT INTO tbl_rol (nombre_rol, descripcion) 
VALUES 
('Administrador', 'Rol con acceso total a todas las funcionalidades del sistema'),
('Recepcionista', 'Rol encargado de la recepci�n y atenci�n al cliente'),
('Mantenimiento', 'Rol encargado del mantenimiento y limpieza de las habitaciones');
INSERT INTO tbl_usuario (id_rol, nombre, correo, contrase�a, estado) 
VALUES 
(1, 'Juan P�rez', 'juan.perez@hotel.com', 'contrase�a123', 'A'),
(2, 'Maria L�pez', 'maria.lopez@hotel.com', 'contrase�a123', 'A'),
(3, 'Carlos Garc�a', 'carlos.garcia@hotel.com', 'contrase�a123', 'A');
INSERT INTO tbl_detalle_usuario (id_usuario, imagen, genero, telefono, direccion, fecha_nacimiento, preferencias, estado_civil, redes_sociales, idioma, ocupacion, notas_adicionales)
VALUES 
(1, NULL, 'M', '987654321', 'Calle Ficticia 123', '1985-06-15', 'Deportes, Tecnolog�a', 'S', 'Facebook: juanperez', 'Espa�ol', 'Administrador', NULL),
(2, NULL, 'F', '987654322', 'Avenida Ficticia 456', '1990-08-22', 'Cine, M�sica', 'C', 'Instagram: maria_lopez', 'Espa�ol, Ingl�s', 'Recepcionista', NULL),
(3, NULL, 'M', '987654323', 'Calle Real 789', '1980-03-11', 'Viajes, Gastronom�a', 'S', 'Twitter: carlosgarcia', 'Espa�ol, Ingl�s', 'Mantenimiento', NULL);
INSERT INTO tbl_cliente (nombre, correo, contrase�a, estado) 
VALUES 
('Laura S�nchez', 'laura.sanchez@cliente.com', 'cliente123', 'A'),
('Pedro D�az', 'pedro.diaz@cliente.com', 'cliente123', 'A'),
('Ana Garc�a', 'ana.garcia@cliente.com', 'cliente123', 'A');
INSERT INTO tbl_detalle_cliente (id_cliente, imagen, genero, telefono, direccion, fecha_nacimiento, preferencias, estado_civil, redes_sociales, idioma, ocupacion, notas_adicionales)
VALUES 
(1, NULL, 'F', '987654324', 'Calle Larga 101', '1995-12-05', 'Naturaleza, Leer', 'S', 'Facebook: laurasanchez', 'Espa�ol', 'Estudiante', NULL),
(2, NULL, 'M', '987654325', 'Calle Corta 202', '1988-04-17', 'Cine, Tecnolog�a', 'C', 'Instagram: pedro.diaz', 'Espa�ol', 'Ingeniero', NULL),
(3, NULL, 'F', '987654326', 'Calle Larga 303', '1983-07-09', 'Viajar, Gastronom�a', 'S', 'Twitter: anagarcia', 'Espa�ol, Franc�s', 'Dise�adora', NULL);
INSERT INTO tbl_categoria (nombre_categoria, descripcion) 
VALUES 
('Estandar', 'Habitaci�n est�ndar con servicios b�sicos'),
('Superior', 'Habitaci�n de categor�a superior con m�s comodidades'),
('Suite', 'Habitaci�n de lujo con jacuzzi y vistas espectaculares');
INSERT INTO tbl_estado (nombre, descripcion) 
VALUES 
('Disponible', 'Habitaci�n lista para ser reservada'),
('Ocupada', 'Habitaci�n ocupada por un cliente'),
('Mantenimiento', 'Habitaci�n en proceso de mantenimiento');
INSERT INTO tbl_habitacion (id_categoria, id_estado, numero, precio, descripcion) 
VALUES 
(1, 1, '101', 120.00, 'Habitaci�n est�ndar con cama doble'),
(2, 1, '102', 180.00, 'Habitaci�n superior con cama king-size'),
(3, 2, '103', 300.00, 'Suite con jacuzzi y vistas al mar');
INSERT INTO tbl_detalle_habitacion (id_habitacion, tamanio_habitacion, tipo_cama, numero_camas, capacidad_personas, vistas, accesibilidad, tipo_bano, wifi, television, ducha, ventilador, calefaccion, aire_acondicionado, frigo_bar, piso, extras, servicios_adicionales)
VALUES 
(1, 25.5, 'Cama Doble', 1, 2, 'Jard�n', 'S�', 'Ducha', 'S�', 'S�', 'S�', 'S�', 'No', 'S�', 'S�', '1', 'Desayuno incluido', 'Servicio de limpieza diario'),
(2, 35.0, 'Cama King', 1, 2, 'Ciudad', 'S�', 'Ba�o con tina', 'S�', 'S�', 'S�', 'S�', 'S�', 'S�', 'S�', '2', 'Desayuno incluido, Mini bar', 'Servicio de lavander�a'),
(3, 50.0, 'Cama King', 1, 3, 'Mar', 'S�', 'Ba�o con jacuzzi', 'S�', 'S�', 'S�', 'S�', 'S�', 'S�', 'S�', '3', 'Desayuno incluido, Jacuzzi privado', 'Masajes relajantes');
INSERT INTO tbl_mantenimiento_limpieza (id_habitacion, id_usuario, tipo_actividad, estado, fecha_inicio, fecha_fin, observaciones) 
VALUES 
(1, 3, 'L', 'C', '2024-10-18 10:00:00', '2024-10-18 12:00:00', 'Limpieza general'),
(2, 3, 'M', 'C', '2024-10-18 14:00:00', '2024-10-18 16:00:00', 'Reparaci�n de aire acondicionado'),
(3, 3, 'L', 'C', '2024-10-19 09:00:00', '2024-10-19 11:00:00', 'Limpieza general');
INSERT INTO tbl_resena (id_cliente, id_habitacion, comentario, calificacion, fecha_resena) 
VALUES 
(1, 1, 'La habitaci�n estaba muy limpia y c�moda, perfecta para descansar despu�s de un largo d�a.', 5, '2024-10-15'),
(2, 2, 'La cama king-size fue incre�ble, pero el precio es un poco alto para los servicios ofrecidos.', 4, '2024-10-16'),
(3, 3, 'La suite con jacuzzi fue espectacular, la vista al mar es inmejorable. Recomiendo 100%.', 5, '2024-10-17');
INSERT INTO tbl_reserva (id_cliente, id_habitacion, fecha_entrada, fecha_salida, estado, total_pago, metodo_pago) 
VALUES 
(1, 1, '2024-10-20', '2024-10-22', 'C', 240.00, 'Tarjeta de cr�dito'),
(2, 2, '2024-10-21', '2024-10-23', 'C', 360.00, 'Efectivo'),
(3, 3, '2024-10-22', '2024-10-24', 'C', 600.00, 'Transferencia bancaria');
INSERT INTO tbl_detalle_reserva (id_reserva, cantidad_personas, tipo_servicio, costo_servicio, pago_parcial, fecha_pago, estado_pago) 
VALUES 
(1, 2, 'Desayuno', 20.00, 100.00, '2024-10-20', 'Pagado'),
(2, 2, 'Mini bar', 30.00, 180.00, '2024-10-21', 'Pagado'),
(3, 3, 'Masajes', 50.00, 300.00, '2024-10-22', 'Pendiente');
INSERT INTO tbl_reporte_problema (id_habitacion, id_cliente, descripcion, estado) 
VALUES 
(1, 1, 'Problema con la ducha', 'P'),
(2, 2, 'Aire acondicionado no funciona', 'P'),
(3, 3, 'Fugas de agua en el ba�o', 'R');
INSERT INTO tbl_lista_espera (id_cliente, prioridad, estado, descripcion) 
VALUES 
(1, 'Alta', 'A', 'Cliente esperando una habitaci�n superior'),
(2, 'Media', 'A', 'Cliente esperando una suite'),
(3, 'Baja', 'A', 'Cliente esperando una habitaci�n est�ndar');



SELECT * FROM tbl_categoria;
SELECT * FROM tbl_cliente;
SELECT * FROM tbl_detalle_cliente;
SELECT * FROM tbl_detalle_habitacion;
SELECT * FROM tbl_detalle_reserva;
SELECT * FROM tbl_detalle_usuario;
SELECT * FROM tbl_estado;
SELECT * FROM tbl_habitacion;
SELECT * FROM tbl_imagen_habitacion;
SELECT * FROM tbl_lista_espera;
SELECT * FROM tbl_mantenimiento_limpieza;
SELECT * FROM tbl_reporte_problema;
SELECT * FROM tbl_resena;
SELECT * FROM tbl_reserva;
SELECT * FROM tbl_rol;
SELECT * FROM tbl_usuario;