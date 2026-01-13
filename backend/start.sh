#!/bin/sh

yarn
yarn build
npx medusa user -e admin@medusa-test.com -p supersecret || true
yarn start
