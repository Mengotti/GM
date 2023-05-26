/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id_sancion]
      ,[nombre]
      ,[apellido]
      ,[fecha_sancion]
  FROM [BiciCoruña].[dbo].[SancionesUsuarios]


  CREATE PROCEDURE dbo.InsertarSancion
(
    @nombre VARCHAR(50),
    @apellido VARCHAR(50),
    @fecha_sancion DATETIME
)
AS
BEGIN
    INSERT INTO SancionesUsuarios (nombre, apellido, fecha_sancion)
    VALUES (@nombre, @apellido, @fecha_sancion)
END

EXEC InsertarSancion Eva, Depino, '2011-08-02'