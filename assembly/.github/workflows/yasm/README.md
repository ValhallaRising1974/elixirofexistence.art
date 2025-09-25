name: C Build

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Install GCC
        run: sudo apt-get install -y build-essential
      - name: Build
        run: gcc -O0 -g -o build/sum src/sum.c
      - name: Run
        run: ./build/sum

        name: C Build

