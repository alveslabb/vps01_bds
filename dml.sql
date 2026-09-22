INSERT INTO usuario (nome, email, telefone, departamento, carga, status)
VALUES
('João Silva', 'joao@email.com', '11999990000', 'TI', '40h', 'Ativo'),
('Maria Santos', 'maria@email.com', '11988880000', 'Financeiro', '40h', 'Ativo'),
('Lucas Oliveira', 'lucas@email.com', '11977770000', 'RH', '30h', 'Ativo');

INSERT INTO tecnico (nome, email, especialidade, status)
VALUES
('Carlos Oliveira', 'carlos@email.com', 'Hardware', 'Ativo'),
('Pedro Souza', 'pedro@email.com', 'Software', 'Ativo'),
('Ana Costa', 'ana@email.com', 'Rede', 'Ativo');

INSERT INTO categoria (nome, descricao)
VALUES
('Hardware', 'Problemas relacionados aos equipamentos'),
('Software', 'Problemas relacionados aos programas'),
('Rede', 'Problemas de conexão e rede'),
('Acesso', 'Problemas de login e permissões');

INSERT INTO chamado (
    titulo,
    descricao,
    data_abertura,
    data_fechamento,
    status,
    prioridade,
    id_usuario,
    id_categoria,
    id_tecnico
)
VALUES
(
    'Computador não liga',
    'Computador não inicia',
    '2026-09-22 10:00:00',
    '2026-09-22 12:00:00',
    'Resolvido',
    'Alta',
    1,
    1,
    1
),
(
    'Erro no sistema',
    'Sistema apresenta erro',
    '2026-09-22 11:00:00',
    NULL,
    'Aberto',
    'Média',
    2,
    2,
    2
),
(
    'Sem acesso à rede',
    'Computador não conecta à rede',
    '2026-09-22 13:00:00',
    NULL,
    'Em andamento',
    'Alta',
    3,
    3,
    3
);

INSERT INTO historico (
    id_chamado,
    id_usuario,
    data_hora,
    descricao,
    tipo
)
VALUES
(
    1,
    1,
    '2026-09-22 10:00:00',
    'Chamado aberto pelo usuário',
    'Abertura'
),
(
    1,
    1,
    '2026-09-22 11:00:00',
    'Equipamento verificado',
    'Atualização'
),
(
    1,
    1,
    '2026-09-22 12:00:00',
    'Problema solucionado',
    'Solução'
),
(
    2,
    2,
    '2026-09-22 13:00:00',
    'Erro identificado no sistema',
    'Atualização'
);