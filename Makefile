
#
# Default.
#

default: server

#
# Tasks.
#

# Install node_modules on your machine.
install: node_modules

# Install node modules with npm.
node_modules: package.json
	@npm install
	@touch node_modules

# Clean.
clean:
	rm -rf node_modules

# Server.
server:
	@python3 -m http.server 8000 \
  `open "http://localhost:8000/docs"`

# Deploy.
deploy:
	./deploy.sh

#
# Phonies.
#

.PHONY: install
.PHONY: clean
.PHONY: server