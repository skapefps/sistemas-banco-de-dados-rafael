PRAGMA foreign_keys = ON;

CREATE TABLE Participante (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    telefone TEXT
);

CREATE TABLE Evento (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    descricao TEXT,
    local TEXT NOT NULL,
    data TEXT NOT NULL
);

CREATE TABLE Inscricao (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_evento INTEGER NOT NULL,
    id_participante INTEGER NOT NULL,
    data_inscricao TEXT,
    status TEXT CHECK (status IN ('confirmada', 'cancelada')),
    FOREIGN KEY (id_evento) REFERENCES Evento(id) ON DELETE CASCADE,
    FOREIGN KEY (id_participante) REFERENCES Participante(id) ON DELETE CASCADE
);

CREATE TABLE Pagamento (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_inscricao INTEGER UNIQUE,
    valor REAL,
    data_pagamento TEXT,
    status TEXT CHECK (status IN ('pago', 'pendente')),
    FOREIGN KEY (id_inscricao) REFERENCES Inscricao(id) ON DELETE CASCADE
);

INSERT INTO Participante (nome, email, telefone) VALUES
('Arthur Roque', 'arthurroque@gmail.com', '34999990001'),
('Joao Pedro', 'jp@egmail.com', '3499990002'),
('Carlos Eduardo', 'dudu@gmail.com', '34999990003');

INSERT INTO Evento (nome, descricao, local, data) VALUES
('Campeonato de League of Legends', 'Campeonato oficial de legue of legends', 'Sala 217 , Bloco F, UNIPAM', '2025-09-05'),
('Treinamento em JAVA', 'Aulas com exercicio para treinamento em JAVA', 'Laboratorio azul, Bloco F, UNIPAM', '2025-09-05');

INSERT INTO Inscricao (id_evento, id_participante, data_inscricao, status) VALUES
(1, 1, '2025-05-01', 'confirmada'),
(1, 2, '2025-05-02', 'confirmada'),
(1, 3, '2025-05-02', 'cancelada'),
(2, 2, '2025-05-03', 'confirmada');

INSERT INTO Pagamento (id_inscricao, valor, data_pagamento, status) VALUES
(1, 50.00, '2025-09-01', 'pago'),
(2, 100.00, '2025-09-02', 'pago'),
(3, 50.00, '2025-09-03', 'pendente'),
(4, 40.00, '2025-09-03', 'pago');
