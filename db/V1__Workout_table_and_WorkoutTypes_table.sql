USE Workouter
CREATE TABLE Workouts(
    Id INT PRIMARY KEY IDENTITY,
    TypeId INT NOT NULL,
    Distance FLOAT NOT NULL
);


CREATE TABLE WorkoutTypes(
    Id INT PRIMARY KEY IDENTITY,
    Name VARCHAR (100) NOT NULL
);