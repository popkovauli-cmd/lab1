-- Создание главной таблицы: Депо
CREATE TABLE Depots (
    depot_number SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    parking_spaces INTEGER NOT NULL,
    repair_spaces INTEGER NOT NULL,
    address TEXT NOT NULL,
    contact_phone VARCHAR(20) NOT NULL
);

-- Создание зависимой таблицы: Пути
CREATE TABLE Tracks (
    depot_number INTEGER NOT NULL,
    track_number INTEGER NOT NULL,
    purpose VARCHAR(100) NOT NULL,
    track_length NUMERIC(6, 2) NOT NULL,
    is_free BOOLEAN NOT NULL,
    is_electrified BOOLEAN NOT NULL,
    PRIMARY KEY (depot_number, track_number),
    FOREIGN KEY (depot_number) REFERENCES Depots (depot_number)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
