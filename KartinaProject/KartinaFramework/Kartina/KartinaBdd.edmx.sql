
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/24/2019 11:58:42
-- Generated from EDMX file: C:\Users\titoi\source\repos\Projet-K\KartinaProject\KartinaFramework\Kartina\KartinaBdd.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [KartinaTP];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Adresse_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Adresse] DROP CONSTRAINT [FK_Adresse_User];
GO
IF OBJECT_ID(N'[dbo].[FK_DetailCommande_Cadre]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetailCommande] DROP CONSTRAINT [FK_DetailCommande_Cadre];
GO
IF OBJECT_ID(N'[dbo].[FK_DetailCommande_Commande]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetailCommande] DROP CONSTRAINT [FK_DetailCommande_Commande];
GO
IF OBJECT_ID(N'[dbo].[FK_DetailCommande_Format]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetailCommande] DROP CONSTRAINT [FK_DetailCommande_Format];
GO
IF OBJECT_ID(N'[dbo].[FK_DetailCommande_Photo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetailCommande] DROP CONSTRAINT [FK_DetailCommande_Photo];
GO
IF OBJECT_ID(N'[KartinaTPModelStoreContainer].[FK_DetailCommandePhoto_DetailCommande]', 'F') IS NOT NULL
    ALTER TABLE [KartinaTPModelStoreContainer].[DetailCommandePhoto] DROP CONSTRAINT [FK_DetailCommandePhoto_DetailCommande];
GO
IF OBJECT_ID(N'[KartinaTPModelStoreContainer].[FK_DetailCommandePhoto_Photo]', 'F') IS NOT NULL
    ALTER TABLE [KartinaTPModelStoreContainer].[DetailCommandePhoto] DROP CONSTRAINT [FK_DetailCommandePhoto_Photo];
GO
IF OBJECT_ID(N'[dbo].[FK_Finition_Finition]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Finition] DROP CONSTRAINT [FK_Finition_Finition];
GO
IF OBJECT_ID(N'[KartinaTPModelStoreContainer].[FK_FinitionCadre_Cadre]', 'F') IS NOT NULL
    ALTER TABLE [KartinaTPModelStoreContainer].[FinitionCadre] DROP CONSTRAINT [FK_FinitionCadre_Cadre];
GO
IF OBJECT_ID(N'[KartinaTPModelStoreContainer].[FK_FinitionCadre_Finition]', 'F') IS NOT NULL
    ALTER TABLE [KartinaTPModelStoreContainer].[FinitionCadre] DROP CONSTRAINT [FK_FinitionCadre_Finition];
GO
IF OBJECT_ID(N'[dbo].[FK_Format_Finition]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Format] DROP CONSTRAINT [FK_Format_Finition];
GO
IF OBJECT_ID(N'[KartinaTPModelStoreContainer].[FK_FormatFinition_Finition]', 'F') IS NOT NULL
    ALTER TABLE [KartinaTPModelStoreContainer].[FormatFinition] DROP CONSTRAINT [FK_FormatFinition_Finition];
GO
IF OBJECT_ID(N'[KartinaTPModelStoreContainer].[FK_FormatFinition_Format]', 'F') IS NOT NULL
    ALTER TABLE [KartinaTPModelStoreContainer].[FormatFinition] DROP CONSTRAINT [FK_FormatFinition_Format];
GO
IF OBJECT_ID(N'[dbo].[FK_Orientation_Photo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orientation] DROP CONSTRAINT [FK_Orientation_Photo];
GO
IF OBJECT_ID(N'[dbo].[FK_Photo_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Photo] DROP CONSTRAINT [FK_Photo_User];
GO
IF OBJECT_ID(N'[KartinaTPModelStoreContainer].[FK_PhotoFormat_Format]', 'F') IS NOT NULL
    ALTER TABLE [KartinaTPModelStoreContainer].[PhotoFormat] DROP CONSTRAINT [FK_PhotoFormat_Format];
GO
IF OBJECT_ID(N'[KartinaTPModelStoreContainer].[FK_PhotoFormat_Photo]', 'F') IS NOT NULL
    ALTER TABLE [KartinaTPModelStoreContainer].[PhotoFormat] DROP CONSTRAINT [FK_PhotoFormat_Photo];
GO
IF OBJECT_ID(N'[KartinaTPModelStoreContainer].[FK_PhotoTag_Photo]', 'F') IS NOT NULL
    ALTER TABLE [KartinaTPModelStoreContainer].[PhotoTag] DROP CONSTRAINT [FK_PhotoTag_Photo];
GO
IF OBJECT_ID(N'[KartinaTPModelStoreContainer].[FK_PhotoTag_Tag]', 'F') IS NOT NULL
    ALTER TABLE [KartinaTPModelStoreContainer].[PhotoTag] DROP CONSTRAINT [FK_PhotoTag_Tag];
GO
IF OBJECT_ID(N'[dbo].[FK_Role_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Role] DROP CONSTRAINT [FK_Role_User];
GO
IF OBJECT_ID(N'[dbo].[FK_Theme_Photo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Theme] DROP CONSTRAINT [FK_Theme_Photo];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Adresse]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Adresse];
GO
IF OBJECT_ID(N'[dbo].[Cadre]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cadre];
GO
IF OBJECT_ID(N'[dbo].[Commande]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Commande];
GO
IF OBJECT_ID(N'[dbo].[DetailCommande]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DetailCommande];
GO
IF OBJECT_ID(N'[dbo].[Finition]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Finition];
GO
IF OBJECT_ID(N'[dbo].[Format]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Format];
GO
IF OBJECT_ID(N'[dbo].[Orientation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orientation];
GO
IF OBJECT_ID(N'[dbo].[Photo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Photo];
GO
IF OBJECT_ID(N'[dbo].[Role]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Role];
GO
IF OBJECT_ID(N'[dbo].[Tag]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tag];
GO
IF OBJECT_ID(N'[dbo].[Theme]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Theme];
GO
IF OBJECT_ID(N'[dbo].[User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User];
GO
IF OBJECT_ID(N'[KartinaTPModelStoreContainer].[DetailCommandePhoto]', 'U') IS NOT NULL
    DROP TABLE [KartinaTPModelStoreContainer].[DetailCommandePhoto];
GO
IF OBJECT_ID(N'[KartinaTPModelStoreContainer].[FinitionCadre]', 'U') IS NOT NULL
    DROP TABLE [KartinaTPModelStoreContainer].[FinitionCadre];
GO
IF OBJECT_ID(N'[KartinaTPModelStoreContainer].[FormatFinition]', 'U') IS NOT NULL
    DROP TABLE [KartinaTPModelStoreContainer].[FormatFinition];
GO
IF OBJECT_ID(N'[KartinaTPModelStoreContainer].[PhotoFormat]', 'U') IS NOT NULL
    DROP TABLE [KartinaTPModelStoreContainer].[PhotoFormat];
GO
IF OBJECT_ID(N'[KartinaTPModelStoreContainer].[PhotoTag]', 'U') IS NOT NULL
    DROP TABLE [KartinaTPModelStoreContainer].[PhotoTag];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Adresse'
CREATE TABLE [dbo].[Adresse] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Label] nvarchar(50)  NOT NULL,
    [Rue] nvarchar(250)  NOT NULL,
    [CodePostal] nchar(10)  NOT NULL,
    [Ville] nvarchar(50)  NOT NULL,
    [Pays] nvarchar(50)  NOT NULL,
    [IDUser] int  NULL
);
GO

-- Creating table 'Cadre'
CREATE TABLE [dbo].[Cadre] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Label] nvarchar(50)  NOT NULL,
    [Prix] int  NOT NULL
);
GO

-- Creating table 'Commande'
CREATE TABLE [dbo].[Commande] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Date] datetime  NOT NULL,
    [Statut] nvarchar(200)  NOT NULL,
    [IDUser] int  NOT NULL
);
GO

-- Creating table 'DetailCommande'
CREATE TABLE [dbo].[DetailCommande] (
    [Id] int  NOT NULL,
    [NbPhotos] int  NOT NULL,
    [IDCommande] int  NOT NULL,
    [PrixPhoto] int  NOT NULL,
    [IDPhoto] int  NOT NULL,
    [IDFormat] int  NOT NULL,
    [IDFinition] int  NOT NULL,
    [IDCadre] int  NOT NULL
);
GO

-- Creating table 'Finition'
CREATE TABLE [dbo].[Finition] (
    [id] int IDENTITY(1,1) NOT NULL,
    [Label] nvarchar(200)  NOT NULL,
    [Prix] int  NOT NULL
);
GO

-- Creating table 'Format'
CREATE TABLE [dbo].[Format] (
    [id] int IDENTITY(1,1) NOT NULL,
    [Label] nvarchar(50)  NOT NULL,
    [Prix] int  NOT NULL
);
GO

-- Creating table 'Orientation'
CREATE TABLE [dbo].[Orientation] (
    [Id] int  NOT NULL,
    [Label] nvarchar(50)  NOT NULL,
    [IDPhoto] int  NOT NULL
);
GO

-- Creating table 'Photo'
CREATE TABLE [dbo].[Photo] (
    [id] int IDENTITY(1,1) NOT NULL,
    [Titre] nvarchar(200)  NOT NULL,
    [Prix] int  NOT NULL,
    [Chemin] nvarchar(250)  NOT NULL,
    [Date] nvarchar(50)  NOT NULL,
    [NbTiragesMax] nchar(10)  NOT NULL,
    [IDUser] int  NOT NULL
);
GO

-- Creating table 'Role'
CREATE TABLE [dbo].[Role] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Titre] nvarchar(50)  NOT NULL,
    [IDUser] int  NULL
);
GO

-- Creating table 'Tag'
CREATE TABLE [dbo].[Tag] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Label] nvarchar(50)  NOT NULL,
    [Description] varchar(max)  NOT NULL
);
GO

-- Creating table 'Theme'
CREATE TABLE [dbo].[Theme] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Label] nvarchar(50)  NOT NULL,
    [IDPhoto] int  NOT NULL
);
GO

-- Creating table 'User'
CREATE TABLE [dbo].[User] (
    [id] int IDENTITY(1,1) NOT NULL,
    [Civilité] nvarchar(50)  NOT NULL,
    [Prenom] nvarchar(200)  NOT NULL,
    [Nom] nvarchar(200)  NOT NULL,
    [Email] nvarchar(250)  NOT NULL,
    [MotDePasse] nvarchar(200)  NOT NULL,
    [Telephone] nvarchar(50)  NULL,
    [Biographie] varchar(max)  NULL
);
GO

-- Creating table 'DetailCommandePhoto'
CREATE TABLE [dbo].[DetailCommandePhoto] (
    [DetailCommande1_Id] int  NOT NULL,
    [Photo1_id] int  NOT NULL
);
GO

-- Creating table 'FinitionCadre'
CREATE TABLE [dbo].[FinitionCadre] (
    [Cadre_Id] int  NOT NULL,
    [Finition_id] int  NOT NULL
);
GO

-- Creating table 'FormatFinition'
CREATE TABLE [dbo].[FormatFinition] (
    [Finition1_id] int  NOT NULL,
    [Format1_id] int  NOT NULL
);
GO

-- Creating table 'PhotoFormat'
CREATE TABLE [dbo].[PhotoFormat] (
    [Format_id] int  NOT NULL,
    [Photo_id] int  NOT NULL
);
GO

-- Creating table 'PhotoTag'
CREATE TABLE [dbo].[PhotoTag] (
    [Photo_id] int  NOT NULL,
    [Tag_Id] int  NOT NULL
);
GO

-- Creating table 'DetailCommandePhoto1'
CREATE TABLE [dbo].[DetailCommandePhoto1] (
    [DetailCommande11_Id] int  NOT NULL,
    [Photo11_id] int  NOT NULL
);
GO

-- Creating table 'FinitionCadre1'
CREATE TABLE [dbo].[FinitionCadre1] (
    [Cadre1_Id] int  NOT NULL,
    [Finition1_id] int  NOT NULL
);
GO

-- Creating table 'FormatFinition1'
CREATE TABLE [dbo].[FormatFinition1] (
    [Finition11_id] int  NOT NULL,
    [Format11_id] int  NOT NULL
);
GO

-- Creating table 'PhotoFormat1'
CREATE TABLE [dbo].[PhotoFormat1] (
    [Format1_id] int  NOT NULL,
    [Photo1_id] int  NOT NULL
);
GO

-- Creating table 'PhotoTag1'
CREATE TABLE [dbo].[PhotoTag1] (
    [Photo1_id] int  NOT NULL,
    [Tag1_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Adresse'
ALTER TABLE [dbo].[Adresse]
ADD CONSTRAINT [PK_Adresse]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Cadre'
ALTER TABLE [dbo].[Cadre]
ADD CONSTRAINT [PK_Cadre]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Commande'
ALTER TABLE [dbo].[Commande]
ADD CONSTRAINT [PK_Commande]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DetailCommande'
ALTER TABLE [dbo].[DetailCommande]
ADD CONSTRAINT [PK_DetailCommande]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [id] in table 'Finition'
ALTER TABLE [dbo].[Finition]
ADD CONSTRAINT [PK_Finition]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Format'
ALTER TABLE [dbo].[Format]
ADD CONSTRAINT [PK_Format]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Id] in table 'Orientation'
ALTER TABLE [dbo].[Orientation]
ADD CONSTRAINT [PK_Orientation]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [id] in table 'Photo'
ALTER TABLE [dbo].[Photo]
ADD CONSTRAINT [PK_Photo]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Id] in table 'Role'
ALTER TABLE [dbo].[Role]
ADD CONSTRAINT [PK_Role]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tag'
ALTER TABLE [dbo].[Tag]
ADD CONSTRAINT [PK_Tag]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Theme'
ALTER TABLE [dbo].[Theme]
ADD CONSTRAINT [PK_Theme]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [id] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [PK_User]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [DetailCommande1_Id], [Photo1_id] in table 'DetailCommandePhoto'
ALTER TABLE [dbo].[DetailCommandePhoto]
ADD CONSTRAINT [PK_DetailCommandePhoto]
    PRIMARY KEY CLUSTERED ([DetailCommande1_Id], [Photo1_id] ASC);
GO

-- Creating primary key on [Cadre_Id], [Finition_id] in table 'FinitionCadre'
ALTER TABLE [dbo].[FinitionCadre]
ADD CONSTRAINT [PK_FinitionCadre]
    PRIMARY KEY CLUSTERED ([Cadre_Id], [Finition_id] ASC);
GO

-- Creating primary key on [Finition1_id], [Format1_id] in table 'FormatFinition'
ALTER TABLE [dbo].[FormatFinition]
ADD CONSTRAINT [PK_FormatFinition]
    PRIMARY KEY CLUSTERED ([Finition1_id], [Format1_id] ASC);
GO

-- Creating primary key on [Format_id], [Photo_id] in table 'PhotoFormat'
ALTER TABLE [dbo].[PhotoFormat]
ADD CONSTRAINT [PK_PhotoFormat]
    PRIMARY KEY CLUSTERED ([Format_id], [Photo_id] ASC);
GO

-- Creating primary key on [Photo_id], [Tag_Id] in table 'PhotoTag'
ALTER TABLE [dbo].[PhotoTag]
ADD CONSTRAINT [PK_PhotoTag]
    PRIMARY KEY CLUSTERED ([Photo_id], [Tag_Id] ASC);
GO

-- Creating primary key on [DetailCommande11_Id], [Photo11_id] in table 'DetailCommandePhoto1'
ALTER TABLE [dbo].[DetailCommandePhoto1]
ADD CONSTRAINT [PK_DetailCommandePhoto1]
    PRIMARY KEY CLUSTERED ([DetailCommande11_Id], [Photo11_id] ASC);
GO

-- Creating primary key on [Cadre1_Id], [Finition1_id] in table 'FinitionCadre1'
ALTER TABLE [dbo].[FinitionCadre1]
ADD CONSTRAINT [PK_FinitionCadre1]
    PRIMARY KEY CLUSTERED ([Cadre1_Id], [Finition1_id] ASC);
GO

-- Creating primary key on [Finition11_id], [Format11_id] in table 'FormatFinition1'
ALTER TABLE [dbo].[FormatFinition1]
ADD CONSTRAINT [PK_FormatFinition1]
    PRIMARY KEY CLUSTERED ([Finition11_id], [Format11_id] ASC);
GO

-- Creating primary key on [Format1_id], [Photo1_id] in table 'PhotoFormat1'
ALTER TABLE [dbo].[PhotoFormat1]
ADD CONSTRAINT [PK_PhotoFormat1]
    PRIMARY KEY CLUSTERED ([Format1_id], [Photo1_id] ASC);
GO

-- Creating primary key on [Photo1_id], [Tag1_Id] in table 'PhotoTag1'
ALTER TABLE [dbo].[PhotoTag1]
ADD CONSTRAINT [PK_PhotoTag1]
    PRIMARY KEY CLUSTERED ([Photo1_id], [Tag1_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [IDUser] in table 'Adresse'
ALTER TABLE [dbo].[Adresse]
ADD CONSTRAINT [FK_Adresse_User]
    FOREIGN KEY ([IDUser])
    REFERENCES [dbo].[User]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Adresse_User'
CREATE INDEX [IX_FK_Adresse_User]
ON [dbo].[Adresse]
    ([IDUser]);
GO

-- Creating foreign key on [IDCadre] in table 'DetailCommande'
ALTER TABLE [dbo].[DetailCommande]
ADD CONSTRAINT [FK_DetailCommande_Cadre]
    FOREIGN KEY ([IDCadre])
    REFERENCES [dbo].[Cadre]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DetailCommande_Cadre'
CREATE INDEX [IX_FK_DetailCommande_Cadre]
ON [dbo].[DetailCommande]
    ([IDCadre]);
GO

-- Creating foreign key on [IDCommande] in table 'DetailCommande'
ALTER TABLE [dbo].[DetailCommande]
ADD CONSTRAINT [FK_DetailCommande_Commande]
    FOREIGN KEY ([IDCommande])
    REFERENCES [dbo].[Commande]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DetailCommande_Commande'
CREATE INDEX [IX_FK_DetailCommande_Commande]
ON [dbo].[DetailCommande]
    ([IDCommande]);
GO

-- Creating foreign key on [IDFormat] in table 'DetailCommande'
ALTER TABLE [dbo].[DetailCommande]
ADD CONSTRAINT [FK_DetailCommande_Format]
    FOREIGN KEY ([IDFormat])
    REFERENCES [dbo].[Format]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DetailCommande_Format'
CREATE INDEX [IX_FK_DetailCommande_Format]
ON [dbo].[DetailCommande]
    ([IDFormat]);
GO

-- Creating foreign key on [IDPhoto] in table 'DetailCommande'
ALTER TABLE [dbo].[DetailCommande]
ADD CONSTRAINT [FK_DetailCommande_Photo]
    FOREIGN KEY ([IDPhoto])
    REFERENCES [dbo].[Photo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DetailCommande_Photo'
CREATE INDEX [IX_FK_DetailCommande_Photo]
ON [dbo].[DetailCommande]
    ([IDPhoto]);
GO

-- Creating foreign key on [id] in table 'Finition'
ALTER TABLE [dbo].[Finition]
ADD CONSTRAINT [FK_Finition_Finition]
    FOREIGN KEY ([id])
    REFERENCES [dbo].[Finition]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [id] in table 'Format'
ALTER TABLE [dbo].[Format]
ADD CONSTRAINT [FK_Format_Finition]
    FOREIGN KEY ([id])
    REFERENCES [dbo].[Finition]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IDPhoto] in table 'Orientation'
ALTER TABLE [dbo].[Orientation]
ADD CONSTRAINT [FK_Orientation_Photo]
    FOREIGN KEY ([IDPhoto])
    REFERENCES [dbo].[Photo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Orientation_Photo'
CREATE INDEX [IX_FK_Orientation_Photo]
ON [dbo].[Orientation]
    ([IDPhoto]);
GO

-- Creating foreign key on [IDUser] in table 'Photo'
ALTER TABLE [dbo].[Photo]
ADD CONSTRAINT [FK_Photo_User]
    FOREIGN KEY ([IDUser])
    REFERENCES [dbo].[User]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Photo_User'
CREATE INDEX [IX_FK_Photo_User]
ON [dbo].[Photo]
    ([IDUser]);
GO

-- Creating foreign key on [IDPhoto] in table 'Theme'
ALTER TABLE [dbo].[Theme]
ADD CONSTRAINT [FK_Theme_Photo]
    FOREIGN KEY ([IDPhoto])
    REFERENCES [dbo].[Photo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Theme_Photo'
CREATE INDEX [IX_FK_Theme_Photo]
ON [dbo].[Theme]
    ([IDPhoto]);
GO

-- Creating foreign key on [IDUser] in table 'Role'
ALTER TABLE [dbo].[Role]
ADD CONSTRAINT [FK_Role_User]
    FOREIGN KEY ([IDUser])
    REFERENCES [dbo].[User]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Role_User'
CREATE INDEX [IX_FK_Role_User]
ON [dbo].[Role]
    ([IDUser]);
GO

-- Creating foreign key on [DetailCommande1_Id] in table 'DetailCommandePhoto'
ALTER TABLE [dbo].[DetailCommandePhoto]
ADD CONSTRAINT [FK_DetailCommandePhoto_DetailCommande]
    FOREIGN KEY ([DetailCommande1_Id])
    REFERENCES [dbo].[DetailCommande]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Photo1_id] in table 'DetailCommandePhoto'
ALTER TABLE [dbo].[DetailCommandePhoto]
ADD CONSTRAINT [FK_DetailCommandePhoto_Photo]
    FOREIGN KEY ([Photo1_id])
    REFERENCES [dbo].[Photo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DetailCommandePhoto_Photo'
CREATE INDEX [IX_FK_DetailCommandePhoto_Photo]
ON [dbo].[DetailCommandePhoto]
    ([Photo1_id]);
GO

-- Creating foreign key on [Cadre_Id] in table 'FinitionCadre'
ALTER TABLE [dbo].[FinitionCadre]
ADD CONSTRAINT [FK_FinitionCadre_Cadre]
    FOREIGN KEY ([Cadre_Id])
    REFERENCES [dbo].[Cadre]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Finition_id] in table 'FinitionCadre'
ALTER TABLE [dbo].[FinitionCadre]
ADD CONSTRAINT [FK_FinitionCadre_Finition]
    FOREIGN KEY ([Finition_id])
    REFERENCES [dbo].[Finition]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FinitionCadre_Finition'
CREATE INDEX [IX_FK_FinitionCadre_Finition]
ON [dbo].[FinitionCadre]
    ([Finition_id]);
GO

-- Creating foreign key on [Finition1_id] in table 'FormatFinition'
ALTER TABLE [dbo].[FormatFinition]
ADD CONSTRAINT [FK_FormatFinition_Finition]
    FOREIGN KEY ([Finition1_id])
    REFERENCES [dbo].[Finition]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Format1_id] in table 'FormatFinition'
ALTER TABLE [dbo].[FormatFinition]
ADD CONSTRAINT [FK_FormatFinition_Format]
    FOREIGN KEY ([Format1_id])
    REFERENCES [dbo].[Format]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FormatFinition_Format'
CREATE INDEX [IX_FK_FormatFinition_Format]
ON [dbo].[FormatFinition]
    ([Format1_id]);
GO

-- Creating foreign key on [Format_id] in table 'PhotoFormat'
ALTER TABLE [dbo].[PhotoFormat]
ADD CONSTRAINT [FK_PhotoFormat_Format]
    FOREIGN KEY ([Format_id])
    REFERENCES [dbo].[Format]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Photo_id] in table 'PhotoFormat'
ALTER TABLE [dbo].[PhotoFormat]
ADD CONSTRAINT [FK_PhotoFormat_Photo]
    FOREIGN KEY ([Photo_id])
    REFERENCES [dbo].[Photo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoFormat_Photo'
CREATE INDEX [IX_FK_PhotoFormat_Photo]
ON [dbo].[PhotoFormat]
    ([Photo_id]);
GO

-- Creating foreign key on [Photo_id] in table 'PhotoTag'
ALTER TABLE [dbo].[PhotoTag]
ADD CONSTRAINT [FK_PhotoTag_Photo]
    FOREIGN KEY ([Photo_id])
    REFERENCES [dbo].[Photo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Tag_Id] in table 'PhotoTag'
ALTER TABLE [dbo].[PhotoTag]
ADD CONSTRAINT [FK_PhotoTag_Tag]
    FOREIGN KEY ([Tag_Id])
    REFERENCES [dbo].[Tag]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoTag_Tag'
CREATE INDEX [IX_FK_PhotoTag_Tag]
ON [dbo].[PhotoTag]
    ([Tag_Id]);
GO

-- Creating foreign key on [DetailCommande11_Id] in table 'DetailCommandePhoto1'
ALTER TABLE [dbo].[DetailCommandePhoto1]
ADD CONSTRAINT [FK_DetailCommandePhoto1_DetailCommande]
    FOREIGN KEY ([DetailCommande11_Id])
    REFERENCES [dbo].[DetailCommande]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Photo11_id] in table 'DetailCommandePhoto1'
ALTER TABLE [dbo].[DetailCommandePhoto1]
ADD CONSTRAINT [FK_DetailCommandePhoto1_Photo]
    FOREIGN KEY ([Photo11_id])
    REFERENCES [dbo].[Photo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DetailCommandePhoto1_Photo'
CREATE INDEX [IX_FK_DetailCommandePhoto1_Photo]
ON [dbo].[DetailCommandePhoto1]
    ([Photo11_id]);
GO

-- Creating foreign key on [Cadre1_Id] in table 'FinitionCadre1'
ALTER TABLE [dbo].[FinitionCadre1]
ADD CONSTRAINT [FK_FinitionCadre1_Cadre]
    FOREIGN KEY ([Cadre1_Id])
    REFERENCES [dbo].[Cadre]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Finition1_id] in table 'FinitionCadre1'
ALTER TABLE [dbo].[FinitionCadre1]
ADD CONSTRAINT [FK_FinitionCadre1_Finition]
    FOREIGN KEY ([Finition1_id])
    REFERENCES [dbo].[Finition]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FinitionCadre1_Finition'
CREATE INDEX [IX_FK_FinitionCadre1_Finition]
ON [dbo].[FinitionCadre1]
    ([Finition1_id]);
GO

-- Creating foreign key on [Finition11_id] in table 'FormatFinition1'
ALTER TABLE [dbo].[FormatFinition1]
ADD CONSTRAINT [FK_FormatFinition1_Finition]
    FOREIGN KEY ([Finition11_id])
    REFERENCES [dbo].[Finition]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Format11_id] in table 'FormatFinition1'
ALTER TABLE [dbo].[FormatFinition1]
ADD CONSTRAINT [FK_FormatFinition1_Format]
    FOREIGN KEY ([Format11_id])
    REFERENCES [dbo].[Format]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FormatFinition1_Format'
CREATE INDEX [IX_FK_FormatFinition1_Format]
ON [dbo].[FormatFinition1]
    ([Format11_id]);
GO

-- Creating foreign key on [Format1_id] in table 'PhotoFormat1'
ALTER TABLE [dbo].[PhotoFormat1]
ADD CONSTRAINT [FK_PhotoFormat1_Format]
    FOREIGN KEY ([Format1_id])
    REFERENCES [dbo].[Format]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Photo1_id] in table 'PhotoFormat1'
ALTER TABLE [dbo].[PhotoFormat1]
ADD CONSTRAINT [FK_PhotoFormat1_Photo]
    FOREIGN KEY ([Photo1_id])
    REFERENCES [dbo].[Photo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoFormat1_Photo'
CREATE INDEX [IX_FK_PhotoFormat1_Photo]
ON [dbo].[PhotoFormat1]
    ([Photo1_id]);
GO

-- Creating foreign key on [Photo1_id] in table 'PhotoTag1'
ALTER TABLE [dbo].[PhotoTag1]
ADD CONSTRAINT [FK_PhotoTag1_Photo]
    FOREIGN KEY ([Photo1_id])
    REFERENCES [dbo].[Photo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Tag1_Id] in table 'PhotoTag1'
ALTER TABLE [dbo].[PhotoTag1]
ADD CONSTRAINT [FK_PhotoTag1_Tag]
    FOREIGN KEY ([Tag1_Id])
    REFERENCES [dbo].[Tag]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoTag1_Tag'
CREATE INDEX [IX_FK_PhotoTag1_Tag]
ON [dbo].[PhotoTag1]
    ([Tag1_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------