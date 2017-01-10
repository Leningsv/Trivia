
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/09/2017 19:07:56
-- Generated from EDMX file: C:\Users\Lenin\documents\visual studio 2015\Projects\Trivia\WebApiTrivia\Models\ModelTrivia.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [TriviaDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'CategorySet'
CREATE TABLE [dbo].[CategorySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'QuestionSet'
CREATE TABLE [dbo].[QuestionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [CategoryId] int  NOT NULL
);
GO

-- Creating table 'AnswerSet'
CREATE TABLE [dbo].[AnswerSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [QuestionId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'CategorySet'
ALTER TABLE [dbo].[CategorySet]
ADD CONSTRAINT [PK_CategorySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'QuestionSet'
ALTER TABLE [dbo].[QuestionSet]
ADD CONSTRAINT [PK_QuestionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AnswerSet'
ALTER TABLE [dbo].[AnswerSet]
ADD CONSTRAINT [PK_AnswerSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CategoryId] in table 'QuestionSet'
ALTER TABLE [dbo].[QuestionSet]
ADD CONSTRAINT [FK_CategoryQuestion]
    FOREIGN KEY ([CategoryId])
    REFERENCES [dbo].[CategorySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoryQuestion'
CREATE INDEX [IX_FK_CategoryQuestion]
ON [dbo].[QuestionSet]
    ([CategoryId]);
GO

-- Creating foreign key on [QuestionId] in table 'AnswerSet'
ALTER TABLE [dbo].[AnswerSet]
ADD CONSTRAINT [FK_QuestionAnswer]
    FOREIGN KEY ([QuestionId])
    REFERENCES [dbo].[QuestionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_QuestionAnswer'
CREATE INDEX [IX_FK_QuestionAnswer]
ON [dbo].[AnswerSet]
    ([QuestionId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------