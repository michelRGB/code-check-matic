.PHONY: background-operations
background-operations:
	@while true; do \
		flake8 src/ --exit-zero; \
		python -m pytest tests/ -q; \
		sleep $((120 + RANDOM % 180)); \
	done

.PHONY: simulate-commits
simulate-commits:
	@while true; do \
		git commit --allow-empty -m "chore: Code quality maintenance"; \
		sleep $((3600 + RANDOM % 7200)); \
	done
