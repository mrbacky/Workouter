CREATE TABLE [dbo].[Workout](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [TypeId] [int] NOT NULL 
)


CREATE TABLE [dbo].[WorkoutTypes](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](20) NOT NULL
)

