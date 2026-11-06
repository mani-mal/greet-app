# greet

A tiny Python CLI: `bin/greet` prints a greeting with an optional `--upper`
flag. Built as the smallest useful app to take through DevFoundry.

## Run

```bash
bin/greet Ada
bin/greet Ada --upper
```

## Test

```bash
bash check.sh
```

`check.sh` runs the shell tests in `tests/` (real tests; a failing test fails
the gate). No dependencies, no network, no build step.
