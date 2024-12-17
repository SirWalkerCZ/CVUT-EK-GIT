- [x] objednat držák na disk 
- [x] sestavit
- [ ] flashnout
- [ ] připojit
- [ ] https://www.baeldung.com/linux/raid-intro
- [ ] https://ultahost.com/knowledge-base/install-samba-on-ubuntu/
- [ ] přetáhnout mámě data

[[Ubuntu Server CLI cheat sheet 2024 v6.pdf]]

```
#cloud-config

autoinstall:
  version: 1
  identity:
    hostname: ubuntu-server
    password: "$6$exDY1mhS4KUYCE/2$zmn9ToZwTKLhCw.b4/b.ZRTIZM30JZ4QrOQ2aOXJ8yk96xpcCof0kxKwuX1kqLG/ygbJ1f8wxED22bTL4F46P0"
    username: ubuntu
ssh:

      install-server: true

      allow-pw: true

    network:

      version: 2

      ethernets:

        eth0:

          dhcp4: true
```

ssh homeServerWalker@192.168.1.94
ssh -o KexAlgorithms=+diffie-hellman-group1-sha1 homeServerWalker@192.168.1.94

![[Pasted image 20241109162406.png]]