-- Lokacijos
INSERT INTO location (level, shelf_no, address) VALUES (0, 0, "Sandeliu g. 15")
INSERT INTO location (level, shelf_no, address) VALUES (0, 1, "Sandeliu g. 15")
INSERT INTO location (level, shelf_no, address) VALUES (1, 0, "Sandeliu g. 15")
INSERT INTO location (level, shelf_no, address) VALUES (1, 1, "Sandeliu g. 15")
INSERT INTO location (level, shelf_no, address) VALUES (0, 0, "Sandeliu g. 16")
INSERT INTO location (level, shelf_no, address) VALUES (0, 1, "Sandeliu g. 16")
INSERT INTO location (level, shelf_no, address) VALUES (1, 0, "Sandeliu g. 16")
INSERT INTO location (level, shelf_no, address) VALUES (1, 1, "Sandeliu g. 16")

-- Boxes
INSERT INTO box (id, location_id, weight) VALUES (1, 0, 5.5)
INSERT INTO box (id, location_id, weight) VALUES (2, 2, 3.1)
INSERT INTO box (id, location_id, weight) VALUES (3, 4, 2.7)
INSERT INTO box (id, location_id, weight) VALUES (4, 6, 4.8)

-- Cases
INSERT INTO case (id, box_id, name, number) VALUES (21, 2, "X žmogaus teismas", 0)
INSERT INTO case (id, box_id, name, number) VALUES (31, 3, "Y žmogaus teismas", 1)
INSERT INTO case (id, box_id, name, number) VALUES (32, 3, "Z žmogaus teismas", 0)
INSERT INTO case (id, box_id, name, number) VALUES (41, 4, "šantažo atvejis", 0)
INSERT INTO case (id, box_id, name, number) VALUES (42, 4, "turto reketavimas", 0)

-- Documents
INSERT INTO document (id, case_id, text, expiration_date) VALUES (311, 31, "doc txt", make_date(2022-12-30))
INSERT INTO document (id, case_id, text, expiration_date) VALUES (312, 31, "doc txt", make_date(2022-12-29))
INSERT INTO document (id, case_id, text, expiration_date) VALUES (321, 32, "doc txt", make_date(2022-12-31))
INSERT INTO document (id, case_id, text, expiration_date) VALUES (411, 41, "doc txt", make_date(2022-12-31))
INSERT INTO document (id, case_id, text, expiration_date) VALUES (412, 41, "doc txt", make_date(2022-12-29))
INSERT INTO document (id, case_id, text, expiration_date) VALUES (421, 42, "doc txt", make_date(2022-12-30))