-- 1. Вывести трек-номера для всей корреспонденции, отправленной в конвертах.
SELECT track_number FROM correspondence
WHERE code_types_cor IN (SELECT type_code FROM types_of_correspondence WHERE packaging = 'Конверт');
