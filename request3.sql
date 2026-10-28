-- 3. Создать таблицу, содержащую данные 1 запроса с указанием веса, длины, ширины и высоты, а также всей информации о видах корреспонденции.
SELECT c.track_number, c.weight, c.length, c.width, c.height,
       t.type_code, t.type_name, t.packaging,
       t.min_weight, t.max_weight,
       t.min_length, t.min_width, t.min_height,
       t.max_length, t.max_width, t.max_height
INTO new_table
FROM correspondence c
JOIN types_of_correspondence t ON c.code_types_cor = t.type_code
WHERE t.packaging = 'Конверт';