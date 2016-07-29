#!/bin/bash

node -v
mkdir generated

# generate example citations
cd exampleCitationsGenerator
# npm install
node generateExampleCitations.js
cd ..

mkdir generated/csl-schema

# convert schema from .rnc (Relax NG Compact) to .rng (Relax NG XML)
java -jar "external/trang/trang.jar" "external/csl-schema/csl.rnc" "generated/csl-schema/csl.rng"
