-- SQL

-- Cenário A: Validação com sucesso
SELECT BENCHMARK(1000, fn_validate_email_sql('teste@dominio.com'));
-- Cenário B: Falha imediata
SELECT BENCHMARK(1000, fn_validate_email_sql('teste.com'));
-- Cenário C: Falha no final
SELECT BENCHMARK(1000, fn_validate_email_sql('teste@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx..com'));

-- Cenário A: Validação com sucesso
SELECT BENCHMARK(10000, fn_validate_email_sql('teste@dominio.com'));
-- Cenário B: Falha imediata
SELECT BENCHMARK(10000, fn_validate_email_sql('teste.com'));
-- Cenário C: Falha no final
SELECT BENCHMARK(10000, fn_validate_email_sql('teste@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx..com'));

-- Cenário A: Validação com sucesso
SELECT BENCHMARK(100000, fn_validate_email_sql('teste@dominio.com'));
-- Cenário B: Falha imediata
SELECT BENCHMARK(100000, fn_validate_email_sql('teste.com'));
-- Cenário C: Falha no final
SELECT BENCHMARK(100000, fn_validate_email_sql('teste@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx..com'));

-- Cenário A: Validação com sucesso
SELECT BENCHMARK(1000000, fn_validate_email_sql('teste@dominio.com'));
-- Cenário B: Falha imediata
SELECT BENCHMARK(1000000, fn_validate_email_sql('teste.com'));
-- Cenário C: Falha no final
SELECT BENCHMARK(1000000, fn_validate_email_sql('teste@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx..com'));

-- JS

-- Cenário A: Validação com sucesso
SELECT BENCHMARK(1000, fn_validate_email_js('teste@dominio.com'));
-- Cenário B: Falha imediata
SELECT BENCHMARK(1000, fn_validate_email_js('teste.com'));
-- Cenário C: Falha no final
SELECT BENCHMARK(1000, fn_validate_email_js('teste@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx..com'));

-- Cenário A: Validação com sucesso
SELECT BENCHMARK(10000, fn_validate_email_js('teste@dominio.com'));
-- Cenário B: Falha imediata
SELECT BENCHMARK(10000, fn_validate_email_js('teste.com'));
-- Cenário C: Falha no final
SELECT BENCHMARK(10000, fn_validate_email_js('teste@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx..com'));

-- Cenário A: Validação com sucesso
SELECT BENCHMARK(100000, fn_validate_email_js('teste@dominio.com'));
-- Cenário B: Falha imediata
SELECT BENCHMARK(100000, fn_validate_email_js('teste.com'));
-- Cenário C: Falha no final
SELECT BENCHMARK(100000, fn_validate_email_js('teste@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx..com'));

-- Cenário A: Validação com sucesso
SELECT BENCHMARK(1000000, fn_validate_email_js('teste@dominio.com'));
-- Cenário B: Falha imediata
SELECT BENCHMARK(1000000, fn_validate_email_js('teste.com'));
-- Cenário C: Falha no final
SELECT BENCHMARK(1000000, fn_validate_email_js('teste@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx..com'));