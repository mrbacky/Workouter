CREATE TABLE Workouter.dbo.Workouts(
    Id INT PRIMARY KEY IDENTITY,
    TypeId INT NOT NULL,
    Distance FLOAT NOT NULL
);


CREATE TABLE Workouter.dbo.WorkoutTypes(
    Id INT PRIMARY KEY IDENTITY,
    Name VARCHAR (50) NOT NULL
);