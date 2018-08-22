## How to run on RancherOS

```
modprobe cpuid
modprobe msr
system-docker run --rm -it -v /:/host niusmallnan/spectre-meltdown-checker
```
