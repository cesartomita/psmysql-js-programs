/* fn_sql_capitalize_words */

-- Testando 1.000 vezes a função fn_sql_capitalize_words:
SELECT BENCHMARK(1000, fn_sql_capitalize_words('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'));

-- Testando 10.000 vezes a função fn_sql_capitalize_words:
SELECT BENCHMARK(10000, fn_sql_capitalize_words('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'));

-- Testando 100.000 vezes a função fn_sql_capitalize_words:
SELECT BENCHMARK(100000, fn_sql_capitalize_words('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'));

-- Testando 1.000.000 vezes a função fn_sql_capitalize_words:
SELECT BENCHMARK(1000000, fn_sql_capitalize_words('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'));

/* fn_js_capitalize_words */

-- Testando 1.000 vezes a função fn_js_capitalize_words:
SELECT BENCHMARK(1000, fn_js_capitalize_words('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'));

-- Testando 10.000 vezes a função fn_js_capitalize_words:
SELECT BENCHMARK(10000, fn_js_capitalize_words('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'));

-- Testando 100.000 vezes a função fn_js_capitalize_words:
SELECT BENCHMARK(100000, fn_js_capitalize_words('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'));

-- Testando 11.000.000 vezes a função fn_js_capitalize_words:
SELECT BENCHMARK(1000000, fn_js_capitalize_words('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'));