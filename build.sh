#!/usr/bin/env bash
set -e   # exit immediately if any command fails, no manual error checking needed
echo "Compiling n-joint-ik-solver..."
cmake -B build
echo "Building executable for n-joint-ik-solver..."
cmake --build build
echo "Done !"