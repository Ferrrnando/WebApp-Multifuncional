/* ---------------------------------------------------------------------- */
/* tabla miembro                                                   */
/* ---------------------------------------------------------------------- */

CREATE TABLE [miembro] (
    [id] INTEGER IDENTITY(1,1) NOT NULL,
    [nombre] VARCHAR(40),
    [matricula] VARCHAR(40),
    CONSTRAINT [PK_miembro] PRIMARY KEY ([id]),
    CONSTRAINT [TUC_miembro_1] UNIQUE ([matricula])
)
GO

/* ---------------------------------------------------------------------- */
/* tabla materia                                                  */
/* ---------------------------------------------------------------------- */

CREATE TABLE [materia] (
    [id] INTEGER IDENTITY(1,1) NOT NULL,
    [nombre] VARCHAR(40),
    CONSTRAINT [PK_materia] PRIMARY KEY ([id])
)
GO

/* ---------------------------------------------------------------------- */
/* tabla relacioon materia miembro                                           */
/* ---------------------------------------------------------------------- */

CREATE TABLE [materia_miembro] (
    [id] INTEGER IDENTITY(1,1) NOT NULL,
    [miembro] INTEGER NOT NULL,
    [materia] INTEGER NOT NULL,
    [grupo] VARCHAR(10),
    CONSTRAINT [PK_materia_miembro] PRIMARY KEY ([id], [miembro], [materia])
)
GO

/* ---------------------------------------------------------------------- */
/* llaves foraneas                                          */
/* ---------------------------------------------------------------------- */

ALTER TABLE [materia_miembro] ADD CONSTRAINT [miembro_materia_miembro] 
    FOREIGN KEY ([miembro]) REFERENCES [miembro] ([id])
GO


ALTER TABLE [materia_miembro] ADD CONSTRAINT [materia_materia_miembro] 
    FOREIGN KEY ([materia]) REFERENCES [materia] ([id])
GO

/* ---------------------------------------------------------------------- */
/* tabla ciudad                                                  */
/* ---------------------------------------------------------------------- */

CREATE TABLE [ciudad] (
    [id] INTEGER IDENTITY(1,1) NOT NULL,
    [nombre] VARCHAR(40),
    CONSTRAINT [PK_ciudad] PRIMARY KEY ([id])
)
GO

/* ---------------------------------------------------------------------- */
/* tabla contacto                                                 */
/* ---------------------------------------------------------------------- */

create TABLE [contacto] (
    [id] INTEGER IDENTITY(1,1) primary key  NOT NULL,
    [nombre] VARCHAR(40),
    [celular] INTEGER,
    [numero] VARCHAR(40),
    [calle] VARCHAR(40),
    [sector] VARCHAR(40),
    [ciudad] int NOT NULL,
    
)
GO


/* ---------------------------------------------------------------------- */
/* tabla relacion contacto email                                                   */
/* ---------------------------------------------------------------------- */

CREATE TABLE [c_email] (
    [id] INTEGER IDENTITY(1,1) NOT NULL,
    [contacto] INTEGER,
    [email] VARCHAR(40),
    CONSTRAINT [PK_c_email] PRIMARY KEY ([id])
)
GO

/* ---------------------------------------------------------------------- */
/* llaves foraneas contacto                                        */
/* ---------------------------------------------------------------------- */

ALTER TABLE [contacto] ADD CONSTRAINT [ciudad_contacto] 
    FOREIGN KEY ([ciudad]) REFERENCES [ciudad] ([id])
GO


ALTER TABLE [c_email] ADD CONSTRAINT [contacto_c_email] 
    FOREIGN KEY ([contacto]) REFERENCES [contacto] ([id])
GO

/* ---------------------------------------------------------------------- */
/* tabla eventos                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [evento] (
    [id] INTEGER IDENTITY(1,1) NOT NULL,
    [descripcion] VARCHAR(80),
    [fecha] DATE,
    [hora] TIME,
    CONSTRAINT [PK_evento] PRIMARY KEY ([id])
)
GO
