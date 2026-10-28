-- 2. Вывести виды корреспонденции, для которых средние значения длины, ширины и высоты являются пропорциональными.
SELECT *
FROM types_of_correspondence
WHERE (ABS(min_length * min_height - POWER(min_width,  2)) < 0.01
   AND ABS(max_length * max_height - POWER(max_width,  2)) < 0.01)   -- д/ш = ш/в
   OR (ABS(min_width  * min_height - POWER(min_length, 2)) < 0.01
   AND ABS(max_width  * max_height - POWER(max_length, 2)) < 0.01)   -- ш/д = д/в
   OR (ABS(min_length * min_width  - POWER(min_height, 2)) < 0.01
   AND ABS(max_length * max_width  - POWER(max_height, 2)) < 0.01);  -- д/в = в/ш