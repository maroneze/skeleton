Skeleton (plug-in template)
===========================

Template for a Frama-C plug-in following good practices.

This template can be used for external plug-ins (not distributed with Frama-C),
but it also allows the plug-in to be internalized and distributed with custom
versions of Frama-C.

## Usage

- Clone this repository and rename it to your plug-in's name;
- Replace all occurrences of SKELETON/Skeleton/skeleton with your plug-in's name
  (do NOT rename `PLUGIN_*` variables; they must remain as `PLUGIN_*`),
  in all files;
- Rename `Skeleton.mli` and `tests/skeleton`;
- Add test dirs and tests inside `tests/`;
- Open `configure.ac` and update it according to its instructions;
- Open `Makefile.in` and update it according to its instructions;
- Update the `opam` file.
    - Ideally, test with all Frama-C versions it should be compatible with and
      [add constraints](https://opam.ocaml.org/doc/Packaging.html#More-on-opam-files)
      to blacklist incompatible versions if needed;
- Don't forget to notify the Frama-C developers about your plug-in!

## Plug-in installation and testing

- Run `autoconf -f` to regenerate `configure`;
- Run `./configure` to generate the Makefile;
- Run `make` and then `make install` to install the plug-in;
- Run `make Skeleton_TESTS` (replacing `Skeleton` with your plug-in name) to
  run `ptests` on all test directories. For more information about the `ptests`
  tool, see the [Frama-C Plug-in Development guide](http://frama-c.com/download/frama-c-plugin-development-guide.pdf).
