# TODO Reviewed ??-??-2026.

[windows]
set shell := ["cmd.exe", "/c"]

# Show the maintenance commands available in this archive.
default:
    @just --list

# Apply the repository's formatting rules to supported tracked file types.
format:
    dprint fmt --log-level=error

# Verify formatting first, then run the repository-wide hooks through prek.
check:
    dprint check --log-level=error
    prek --config prek.toml run --all-files
