#!/usr/bin/env bash
# build.sh — mock build for the CPE component.
set -euo pipefail

VERSION="${1:-1.14.3}"
mkdir -p build

echo "Building CPE ${VERSION}..."
echo "This is a mock CPE artifact for demo purposes — built $(date -u +%Y-%m-%dT%H:%M:%SZ)" > "build/cpe-${VERSION}.tar.gz"
sha256sum "build/cpe-${VERSION}.tar.gz" > "build/cpe-${VERSION}.tar.gz.sha256"

echo "Build complete: build/cpe-${VERSION}.tar.gz"
