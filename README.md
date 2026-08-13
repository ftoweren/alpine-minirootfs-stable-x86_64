# Alpine-minirootfs-latest-stable (AARCH64) | active ssh with root permitted

_general info:_

- Alpine-minirootfs-stable (linux/x86_64) from locally, downloaded from:
```
https://dl-cdn.alpinelinux.org/alpine/latest-stable/releases/x86_64/
```
- Active SSH
- Expose ssh 22 (8222:22)
- Built and tested on AMD64/X86_64 mechine (i5-8250u) with Debian WSL running

---

## Quick Start

### Pull Image
```bash
docker pull ftoweren/alpine-minirootfs-stable-x86_64:latest
```

### Run Container
```bash
docker run -itd \
	--name alpine-minirootfs-x86_64 \
	-p 8222:22 \
    --restart always \
	ftoweren/alpine-minirootfs-stable-x86_64:latest
```

### Post-Installation Management
Change Container Root Password (if needed):
```bash
docker exec -it alpine-minirootfs-x86_64 passwd
```
---

## Build from Source

### Build Docker Image
```
docker build --no-cache -f path/Dockerfile -t image_name:tag .
```
