CREATE VIEW case_documents AS
SELECT [case].id, [case].name, [case].number, COUNT (document.id)
FROM case
JOIN document ON [case].id = document.case_id
GROUP BY [case].id, [case].name, [case].number;

CREATE VIEw box_cases AS
SELET [box].id, [box].weight, [box].location_id, COUNT ([case].id)
FROM box
JOIN case ON box.id = case.box_id
GROUP BY [box].id, [box].weight, [box].location_id;


CREATE MATERIALIZED VIEW box_locations AS
SELECT [box].id, [box].weight, [location].address, [location].shelf_no, [location].level
FROM box
JOIN location ON box.location_id = location.id;