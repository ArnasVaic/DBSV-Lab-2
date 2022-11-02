CREATE TABLE arva8345.location (
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 0 INCREMENT BY 1),
	"level" INTEGER NOT NULL DEFAULT 0
	shelf_no INTEGER NOT NULL DEFAULT 0,
	"address" VARCHAR NOT NULL,
	CONSTRAINT non_negative CHECK("level" >= 0 AND shelf_no >= 0)
);

CREATE TABLE arva8345.box (
	id INTEGER PRIMARY KEY,
	location_id INTEGER,
	"weight_kg" FLOAT,
	CONSTRAINT fk_location FOREIGN KEY(location_id) REFERENCES location(id),
	CONSTRAINT positive_mass CHECK("weight_kg" > 0)
);

CREATE TABLE arva8345.case (
	id INTEGER PRIMARY KEY,
	box_id INTEGER,
	"name" VARCHAR,
	"number" INTEGER,
	CONSTRAINT fk_box FOREIGN KEY(box_id) REFERENCES box(id),
	CONSTRAINT positive_num CHECK("number" >= 0),
	UNIQUE ("name", "number")
);

CREATE TABLE arva8345.document (
	id INTEGER PRIMARY KEY,
	case_id INTEGER,
	"text" TEXT,
	expiration_date DATE,
	CONSTRAINT fk_case FOREIGN KEY(case_id) REFERENCES case(id)
);