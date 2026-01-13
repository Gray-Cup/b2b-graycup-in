#!/bin/sh
set -e

yarn install
yarn build

medusa start --host 0.0.0.0 --port 9000
