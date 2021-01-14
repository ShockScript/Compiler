# The DoveScript Compiler

## Status

_CURRENT GOALS:_

- [ ] JavaScript target
- [ ] Global Objects
- [ ] Object Reference Generator
- [ ] Runtime

## Building

Basic requirements:
- [Node.js](https://nodejs.org)

Backend requirements:
- JRE or JDK
- [Adobe AIR SDK](http://airsdk.harman.com/download)
- `asconfigc` tool, which may be installed with the command `npm install asconfigc -g`

Run:

```sh
cd backend && asconfigc
cd ../frontend && npm install -g
```

## Usage

The frontend provides the commands `dsc` and `dsdoc`.

For now, code or documentation generation are not yet supported. Running `dsc` will only verify sources; for example:

```
dsc --includeSources CustomProgram.ds --includeSources src
```

- [More backend information](backend/README.md)