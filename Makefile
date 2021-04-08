BINARY="bin/cfnctl"

ifeq (, $(shell which goimports))
$(warning "could not find goimports in your $$PATH, run: go get golang.org/x/tools/cmd/goimports")
endif

bin/cfnctl: build

build:
	@go build -o $(BINARY)

check:
	go test -v ./...

clean:
	rm -rf $(BINARY)

clean-deep: clean
	go clean -i -r -cache -testcache -modcache

format:
	@goimports -w . && echo "Code formatting complete!"

lint: vet
	@test -z $$(goimports -e -l .) \
		|| (echo "Error! Formatting needed; Run \"make format\" to fix." \
		&& false);

# Alias for make check
test: check

# Run go vet against code
vet:
	@go vet ./...
