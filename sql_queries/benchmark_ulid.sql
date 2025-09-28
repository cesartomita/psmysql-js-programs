-- fn_sql_ulid
SELECT BENCHMARK(1000, fn_sql_ulid());
SELECT BENCHMARK(10000, fn_sql_ulid());
SELECT BENCHMARK(100000, fn_sql_ulid());
SELECT BENCHMARK(1000000, fn_sql_ulid());

-- fn_js_ulid
SELECT BENCHMARK(1000, fn_js_ulid());
SELECT BENCHMARK(10000, fn_js_ulid());
SELECT BENCHMARK(100000, fn_js_ulid());
SELECT BENCHMARK(1000000, fn_js_ulid());