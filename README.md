# ocaml-corebuild-skeleton

`hello_world.ml` stolen from https://bitbucket.org/yminsky/core-hello-world/overview.

# setup

```
opam init
eval `opam config env`
opam switch 4.04.0
opam install utop merlin ocp-indent core core_extended ounit
corebuild hello_world.native
corebuild test_blah.byte
```
