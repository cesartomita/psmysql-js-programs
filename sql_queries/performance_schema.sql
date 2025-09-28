SELECT
	EVENT_NAME, SQL_TEXT, TIMER_WAIT
FROM	
	performance_schema.events_statements_history
WHERE
	EVENT_NAME = 'statement/sql/select'
ORDER BY
	EVENT_ID DESC;