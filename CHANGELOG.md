# Changelog

## v1.13 (2017-07-06)

- Fix error and help messages
- Add builder for Ubuntu (deb package)
- Add flag `sam import --restore` (If it is exist then sam clear DB before installation)
- Fix access for command `connect` (Before only user `smilart`)
- Fix checking format for import file (Compatible with sam v1.12)
- Remove subcommand `sam upgrade`
- Remove flag `--email` for work witch repositories
- Fix command `sam purge` (Now it work for only apps with label `com.smilart.repo_base_name=smilart`)
- Fix compatibility options `--raw` and `--label` in subcommand `sam list`
- Fix error if file `history` of Sam not exist
- Add sorting for subcommand `sam list`
- Add bash complete to Ubuntu

## v1.12
