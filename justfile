[windows]
set shell := ["cmd.exe", "/c"]

default:
    @just --list

format:
    dprint fmt --log-level=error

check:
    dprint check --log-level=error
    prek --config prek.toml run --all-files
