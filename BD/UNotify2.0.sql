USE [master]
GO
/****** Object:  Database [UNotify2.0]    Script Date: 11/9/2023 15:26:31 ******/
CREATE DATABASE [UNotify2.0]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UNotify2.0', FILENAME = N'D:\Programas\SQL Serv\MSSQL16.MSSQLSERVER\MSSQL\DATA\UNotify2.0.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UNotify2.0_log', FILENAME = N'D:\Programas\SQL Serv\MSSQL16.MSSQLSERVER\MSSQL\DATA\UNotify2.0_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [UNotify2.0] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UNotify2.0].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UNotify2.0] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UNotify2.0] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UNotify2.0] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UNotify2.0] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UNotify2.0] SET ARITHABORT OFF 
GO
ALTER DATABASE [UNotify2.0] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UNotify2.0] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UNotify2.0] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UNotify2.0] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UNotify2.0] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UNotify2.0] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UNotify2.0] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UNotify2.0] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UNotify2.0] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UNotify2.0] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UNotify2.0] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UNotify2.0] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UNotify2.0] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UNotify2.0] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UNotify2.0] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UNotify2.0] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UNotify2.0] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UNotify2.0] SET RECOVERY FULL 
GO
ALTER DATABASE [UNotify2.0] SET  MULTI_USER 
GO
ALTER DATABASE [UNotify2.0] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UNotify2.0] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UNotify2.0] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UNotify2.0] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UNotify2.0] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UNotify2.0] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'UNotify2.0', N'ON'
GO
ALTER DATABASE [UNotify2.0] SET QUERY_STORE = ON
GO
ALTER DATABASE [UNotify2.0] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [UNotify2.0]
GO
/****** Object:  Table [dbo].[Actividades]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actividades](
	[ActividadID] [int] IDENTITY(1,1) NOT NULL,
	[EventoID] [int] NULL,
	[Nombre] [nvarchar](255) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Fecha] [datetime] NULL,
	[Lugar] [nvarchar](255) NULL,
	[Hora] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ActividadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asociaciones]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asociaciones](
	[AsociacionID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](255) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Email] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[AsociacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colaboradores]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colaboradores](
	[ColaboradorID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ColaboradorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ColaboradoresEventos]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColaboradoresEventos](
	[ColaboradorEventoID] [int] IDENTITY(1,1) NOT NULL,
	[ColaboradorID] [int] NULL,
	[EventoID] [int] NULL,
	[FechaInscripcion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ColaboradorEventoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[EstudianteID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[EstudianteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eventos]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eventos](
	[EventoID] [int] IDENTITY(1,1) NOT NULL,
	[AsociacionID] [int] NULL,
	[Nombre] [nvarchar](255) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Fecha] [datetime] NULL,
	[Lugar] [nvarchar](255) NULL,
	[Capacidad] [int] NULL,
	[Hora] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[EventoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Foros]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Foros](
	[ForoID] [int] IDENTITY(1,1) NOT NULL,
	[EventoID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ForoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inscripciones]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscripciones](
	[InscripcionID] [int] IDENTITY(1,1) NOT NULL,
	[EstudianteID] [int] NULL,
	[EventoID] [int] NULL,
	[FechaInscripcion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[InscripcionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mensajes]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mensajes](
	[MensajeID] [int] IDENTITY(1,1) NOT NULL,
	[ForoID] [int] NULL,
	[UsuarioID] [int] NULL,
	[TipoUsuario] [char](1) NULL,
	[Mensaje] [nvarchar](max) NULL,
	[Fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MensajeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notificaciones]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notificaciones](
	[NotificacionID] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioID] [int] NULL,
	[TipoUsuario] [char](1) NULL,
	[Mensaje] [nvarchar](max) NULL,
	[Fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[NotificacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Propuestas]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Propuestas](
	[PropuestaID] [int] IDENTITY(1,1) NOT NULL,
	[EstudianteID] [int] NULL,
	[Nombre] [nvarchar](255) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[FechaPropuesta] [datetime] NULL,
	[Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[PropuestaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Retroalimentaciones]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Retroalimentaciones](
	[RetroalimentacionID] [int] IDENTITY(1,1) NOT NULL,
	[EventoID] [int] NULL,
	[EstudianteID] [int] NULL,
	[Comentario] [nvarchar](max) NULL,
	[Fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RetroalimentacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Actividades]  WITH CHECK ADD FOREIGN KEY([EventoID])
REFERENCES [dbo].[Eventos] ([EventoID])
GO
ALTER TABLE [dbo].[ColaboradoresEventos]  WITH CHECK ADD FOREIGN KEY([ColaboradorID])
REFERENCES [dbo].[Colaboradores] ([ColaboradorID])
GO
ALTER TABLE [dbo].[ColaboradoresEventos]  WITH CHECK ADD FOREIGN KEY([EventoID])
REFERENCES [dbo].[Eventos] ([EventoID])
GO
ALTER TABLE [dbo].[Eventos]  WITH CHECK ADD FOREIGN KEY([AsociacionID])
REFERENCES [dbo].[Asociaciones] ([AsociacionID])
GO
ALTER TABLE [dbo].[Foros]  WITH CHECK ADD FOREIGN KEY([EventoID])
REFERENCES [dbo].[Eventos] ([EventoID])
GO
ALTER TABLE [dbo].[Inscripciones]  WITH CHECK ADD FOREIGN KEY([EstudianteID])
REFERENCES [dbo].[Estudiantes] ([EstudianteID])
GO
ALTER TABLE [dbo].[Inscripciones]  WITH CHECK ADD FOREIGN KEY([EventoID])
REFERENCES [dbo].[Eventos] ([EventoID])
GO
ALTER TABLE [dbo].[Mensajes]  WITH CHECK ADD FOREIGN KEY([ForoID])
REFERENCES [dbo].[Foros] ([ForoID])
GO
ALTER TABLE [dbo].[Propuestas]  WITH CHECK ADD FOREIGN KEY([EstudianteID])
REFERENCES [dbo].[Estudiantes] ([EstudianteID])
GO
ALTER TABLE [dbo].[Retroalimentaciones]  WITH CHECK ADD FOREIGN KEY([EstudianteID])
REFERENCES [dbo].[Estudiantes] ([EstudianteID])
GO
ALTER TABLE [dbo].[Retroalimentaciones]  WITH CHECK ADD FOREIGN KEY([EventoID])
REFERENCES [dbo].[Eventos] ([EventoID])
GO
/****** Object:  StoredProcedure [dbo].[CrearCuentaAdmin]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Crear cuenta asocia
CREATE PROCEDURE [dbo].[CrearCuentaAdmin]
    @Nombre NVARCHAR(255),
    @Descripcion NVARCHAR(MAX),
    @Email NVARCHAR(255),
    @Password NVARCHAR(255)
AS
BEGIN
    INSERT INTO Asociaciones (
		Nombre, 
		Descripcion, 
		Email, 
		Password)
    VALUES (
		@Nombre, 
		@Descripcion, 
		@Email, 
		@Password);
END;
GO
/****** Object:  StoredProcedure [dbo].[CrearCuentaUsuario]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CrearCuentaUsuario]
    @Nombre NVARCHAR(255),
    @Email NVARCHAR(255),
    @Password NVARCHAR(255)
AS
BEGIN
    INSERT INTO Estudiantes (
		Nombre, 
		Email, 
		Password)
    VALUES (
		@Nombre, 
		@Email, 
		@Password);
END;
GO
/****** Object:  StoredProcedure [dbo].[InscribirColaboradorEvento]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InscribirColaboradorEvento]
    @ColaboradorID INT,
    @EventoID INT
AS
BEGIN
    INSERT INTO ColaboradoresEventos (
		ColaboradorID, 
		EventoID, 
		FechaInscripcion)
    VALUES (
		@ColaboradorID, 
		@EventoID, 
		GETDATE());
END;
GO
/****** Object:  StoredProcedure [dbo].[InscribirEstudianteEvento]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InscribirEstudianteEvento]
    @EstudianteID INT,
    @EventoID INT
AS
BEGIN
    INSERT INTO Inscripciones (
		EstudianteID, 
		EventoID, 
		FechaInscripcion)
    VALUES (
		@EstudianteID, 
		@EventoID, 
		GETDATE());
END;
GO
/****** Object:  StoredProcedure [dbo].[MostrarColaboradoresDisponibles]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MostrarColaboradoresDisponibles]
AS
BEGIN
    SELECT 
        ColaboradorID, 
        Nombre, 
        Email 
    FROM Colaboradores;
END;
GO
/****** Object:  StoredProcedure [dbo].[MostrarEventosDisponibles]    Script Date: 11/9/2023 15:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MostrarEventosDisponibles]
AS
BEGIN
    SELECT 
        EventoID, 
        AsociacionID, 
        Nombre, 
        Descripcion, 
        Fecha, 
        Hora, 
        Lugar, 
        Capacidad 
    FROM Eventos 
    WHERE Fecha >= GETDATE();
END;
GO
USE [master]
GO
ALTER DATABASE [UNotify2.0] SET  READ_WRITE 
GO
