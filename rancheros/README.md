## How to run on RancherOS

```
modprobe cpuid
modprobe msr
system-docker run --rm -it -v /:/host niusmallnan/spectre-meltdown-checker
```

## How to debug

```
system-docker run --entrypoint /bin/bash --rm -it -v /:/host niusmallnan/spectre-meltdown-checker
```
