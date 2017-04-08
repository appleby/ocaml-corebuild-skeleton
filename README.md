# ocaml-skeleton

Simple skeleton for ocaml projects. See `git branch -a` for variations on the theme.

`hello_world.ml` stolen from https://bitbucket.org/yminsky/core-hello-world/overview.

# Common setup

```
opam init
eval `opam config env`
opam switch 4.04.0
opam install utop merlin ocp-indent core core_extended ounit oasis
```

# Branch core+corebuild

```
git checkout core+corebuild
corebuild hello_world.native
corebuild test_blah.byte
```

# Branch core+oasis

```
git checkout core+oasis
oasis setup -setup-update dynamic
git add setup.ml Makefile configure
./configure --enable-tests
make
make test
```

# Branch core+oasis+opam

```
git checkout core+oasis+opam
opam install oasis2opam
oasis2opam --local
opam pin add blah . -n
opam pin remove blah
```

# Branch core+jbuilder+opam

```
git checkout core+jbuilder+opam
opam install jbuilder
jbuilder build bin/hellow_world.exe
jbuilder build @install
jbuilder runtest
```
