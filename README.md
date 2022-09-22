# Chromium-Wipe

A small, manifest V3-based chromium extension that autodeletes cookies,
cache and history on startup and on demand.

## Building the CRX file

Simply type

```
make
```

This requires `chromium`, `openssl` (or libressl) and `make` installed.
Alternatively, if you have just installed chromium, you can run 

```
chromium --pack-extension=ext
```

The makefile is provided for convenience

## Credits

- [Harutekku](https://github.com/harutekku)

