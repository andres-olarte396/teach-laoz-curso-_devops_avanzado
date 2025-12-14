# EJERCICIO: Escribe un pipeline que ejecute tests en paralelo para Node y Python.

**Solución**:
```yaml
jobs:
  test-node:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: npm test
  test-python:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: pytest
```
