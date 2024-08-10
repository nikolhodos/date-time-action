KEYWORD=FIXED

run: build
	docker run -t print-date-time-action .

build: 
	docker run --rm print-date-time-action

test: build
    @output=$$(docker run --rm print-date-time-action); \
    echo $$output; \
    if echo $$output | grep -q "IST"; then \
        echo "Test Passed: Output for IST timezone."; \
    else \
        echo "Test Failed: No output for IST timezone."; \
        exit 1; \
    fi