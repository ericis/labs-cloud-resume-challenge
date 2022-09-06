.DEFAULT_GOAL:=all

all: install

# Installs the application locally.
.PHONY: install
install:
	@echo "Hello Cloud Resume Challenge!"

# Cleans and restores the application to new.
.PHONY: clean
clean:
	@echo 'The project has been restored to new!'

# Syncronizes code changes with `git`.
.PHONY: sync
sync:
	@git-town sync

# Return to "main" branch:
# - Syncronize the current branch.
# - Clean the project.
# - Checkout "main".
# - Sync with "main".
# - Prune branches.
.PHONY: main
main:
	@make sync
	@make clean
	@git checkout main
	@make sync
	@git-town prune-branches

# Makes a GitHub Pull Request (PR).
.PHONY: pr
pr:
	@git-town new-pull-request
