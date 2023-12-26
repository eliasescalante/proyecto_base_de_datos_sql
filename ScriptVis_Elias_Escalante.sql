CREATE OR REPLACE VIEW view_students_with_graduation AS
    SELECT s.full_name AS student_name, g.level AS graduation_level
    FROM  student s
    JOIN graduation g ON s.graduation = g.id_graduation;


CREATE OR REPLACE VIEW view_teachers_with_graduation AS
    SELECT t.full_name AS teacher_name, g.level AS graduation_level
    FROM  teacher t
    JOIN graduation g ON t.graduation = g.id_graduation;


CREATE OR REPLACE VIEW view_schools_with_teacher AS
    SELECT sc.name AS school_name, t.full_name AS teacher_in_charge_name
    FROM school sc
    LEFT JOIN teacher t ON sc.teacher_in_charge = t.teacher_file;


CREATE OR REPLACE VIEW view_schools_with_sede AS
    SELECT sc.name AS school_name, sd.name AS sede_name, sd.adress AS sede_address
    FROM school sc
    JOIN sede sd ON sc.sede = sd.id_sede;



CREATE OR REPLACE VIEW view_masters_with_graduation_and_school AS
    SELECT m.full_name AS master_name, g.level AS graduation_level,  m.school_in_charge AS school_in_charge
    FROM master m
    JOIN graduation g ON m.graduation = g.id_graduation;
