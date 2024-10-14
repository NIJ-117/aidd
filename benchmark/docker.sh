#!/bin/bash

docker run \
       -it --rm \
       -v `pwd`:/hclcode \
       -v `pwd`/tmp.benchmarks/.:/benchmarks \
       -e OPENAI_API_KEY=$OPENAI_API_KEY \
       -e HISTFILE=/hclcode/.bash_history \
       -e hclcode_DOCKER=1 \
       -e hclcode_BENCHMARK_DIR=/benchmarks \
       hclcode-benchmark \
       bash
