#!/usr/bin/env bash
set -x
# This script generates the depdendant JSON files.
# The environment variables SKYTEMPLE_DIR SKYTEMPLE_RUST_DIR, SKYTEMPLE_SSB_EMULATOR_DIR must be set to the correct paths
# of SkyTemple and skytemple-rust in matching versions.
python3 flatpak-builder-tools/pip/flatpak-pip-generator -r $SKYTEMPLE_DIR/requirements-mac-windows.txt -o requirements-skytemple
python3 flatpak-builder-tools/cargo/flatpak-cargo-generator.py $SKYTEMPLE_RUST_DIR/Cargo.lock -o cargo-sources.json
python3 flatpak-builder-tools/cargo/flatpak-cargo-generator.py $SKYTEMPLE_SSB_EMULATOR_DIR/Cargo.lock -o cargo-sources-ssb-emulator.json
