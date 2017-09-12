# ipfs-service
A shell script to run ipfs-daemon on macOS as a service.

Installs `ipfs-update v1.5.2` and fetches latest `go-ipfs binary` and installs
it. Initialize ipfs node and launches it as a service.

Service scripts are taken from
[ipfs examples](https://github.com/ipfs/examples/tree/master/examples/init)

## For macOS
run `launchctl list | grep ipfs` to check if service is running

## For linux
need work
