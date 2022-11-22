CREATE UNIQUE INDEX CaseNameAndNumber ON case(name, number)

-- Creating indices on primary keys and unique constraints is redundant:
-- https://www.postgresql.org/docs/current/indexes-unique.html
-- CREATE INDEX DocumentExpirationDate ON document(id)