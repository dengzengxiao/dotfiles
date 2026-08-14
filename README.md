# dotfiles

`home/` is a GNU Stow package. It contains the user configuration managed as
symbolic links into this repository.

```sh
./scripts/link-home
```

`system/etc/` is a snapshot of selected system configuration. It is deployed
as regular files, never symlinks, with an explicit privileged command:

```sh
./scripts/apply-system
```

Mihomo subscription data, caches, Rime build data and user dictionaries,
browser data, chat data, and application caches are intentionally excluded.
