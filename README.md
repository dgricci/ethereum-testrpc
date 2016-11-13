% Environnement Ethereum client - testRPC
% Didier Richard
% rév. 0.0.1 du 11/11/2016

---

# Building #

```bash
$ docker build -t dgricci/ethereum-testrpc:0.0.1 -t dgricci/ethereum-testrpc:latest .
```

## Behind a proxy (e.g. 10.0.1.2:3128) ##

```bash
$ docker build \
    --build-arg http_proxy=http://10.0.1.2:3128/ \
    --build-arg https_proxy=http://10.0.1.2:3128/ \
    -t dgricci/ethereum-testrpc:0.0.1 -t dgricci/ethereum-testrpc:latest .
```

# Use #

See `dgricci/jessie` README for handling permissions with dockers volumes.

```bash
$ docker run -it --rm --name=testrpc dgricci/ethereum-testrpc testrpc
EthereumJS TestRPC v3.0.0

Available Accounts
==================
(0) 0xe4d0cac0bc174061fe8904b96e70975470311857
(1) 0xd24a9649cd0d734989212f8d8942b7eb01a9a8b2
(2) 0xae590a7fad4eb85ec590f6542b6aed85831ede64
(3) 0xdd1a8f1335d7774fc0e41211280e795479b061fb
(4) 0x379fc2e3e9e337a35a3067b01542d685921f01ee
(5) 0x6c97084cc9372f84e96701631e09da04fca5bf3c
(6) 0x5979d4972ddffdd02fccff5b8f339159007d4af3
(7) 0x3fd3f51b30179ffbb5ade4334923f54f7f83f6d8
(8) 0xcd26b43e7cd9c0982ac001627d94062002e819b6
(9) 0xa468d3830507046b896445deb35c8c4a08eff6b9

Private Keys
==================
(0) c5f0603d1e61e316c08921f47324542bd7bd42cccba987e96486a10d7d0dad3c
(1) cc097b040f0c5c18e69944a8e0186c1107f419de11ee1c4f4d33cebfc61c78fd
(2) 523534681563167d6d44c2c0a356606b09a43a3a52f04c7535aae892f30255da
(3) 6ed442c97a75f05bd508c3ae60584ec7d74643b7162fca249095f96afb12c41c
(4) 5b3598ca23d74a6a46fa697cbc6a96ca93f474a7018ce539dd05c17b74f78211
(5) c5ae187b5bb40fad0766327fb904988398b9eb0d932fc0f126a2c3e60c464bfb
(6) 8837165812d2b6661268a1fc3e9ae4e0cff3e2e857d85379d416ec44f6ccebee
(7) fd9bf2f7a023c3d2f1be6ae9856ef91bab0e758499f7aae2ed50ad6b6e6fd2c5
(8) 9642523881c0a4e07861bd4bdda23dfc0a6c4d0eb0c4d9fac9c8e60632a03e86
(9) c97e28d1be98feb2d019e3a052e28b4c59a56dff6b56de33926d2578abe94a81

HD Wallet
==================
Mnemonic:      armed find meadow glimpse below weird else rifle federal minor
road april
Base HD Path:  m/44'/60'/0'/0/{account_index}

Listening on localhost:8545
```

Dans un autre terminal, on peut arrêter le service :

```bash
$ docker stop testrpc
testrpc
```

__Et voilà !__


_fin du document[^pandoc_gen]_

[^pandoc_gen]: document généré via $ `pandoc -V fontsize=10pt -V geometry:"top=2cm, bottom=2cm, left=1cm, right=1cm" -s -N --toc -o ethereum-testrpc.pdf README.md`{.bash}

