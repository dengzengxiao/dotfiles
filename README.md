# dotfiles

[zh_cn](./README.zh_cn.md)

## User Configuration (GNU Stow)

`home/` is the only Stow package; its directory structure maps directly to `$HOME`. Run:

```sh
./scripts/link-home
```

Stow links the files and directories it contains into your home directory, so the files in this repository are the single source of truth for the configuration. Back up your existing configuration before using it.

When adding a new configuration file, first move the original file into this project's `home/` directory, then re-link the package:

```sh
repo="$HOME/dotfiles"
rel='.config/example/config.toml'
mkdir -p "$repo/home/$(dirname "$rel")"
mv "$HOME/$rel" "$repo/home/$rel"
stow --restow --dir="$repo" --target="$HOME" home # Or ./scripts/link-home
git -C "$repo" add "home/$rel"
```

If a file already exists at the target location, inspect potential conflicts with the command below. After reviewing the output, manually back up or move the conflicting files before linking. Do not use `--adopt` directly, as it can cause files on a new machine to overwrite the repository version.

```sh
stow --simulate --verbose=2 --dir="$HOME/dotfiles" --target="$HOME" home
```

## Deploying to a New Environment

```sh
git clone "https://github.com/dengzengxiao/dotfiles.git" "$HOME/dotfiles"
cd "$HOME/dotfiles"
./scripts/link-home
```

The schemas, tables, Lua scripts, and OpenCC rules required by rime-crane are already in `home/.local/share/fcitx5/rime/`.
After installing `fcitx5-rime` and `librime-lua`, run the command above and restart Fcitx5.

## System Configuration

`system/etc/` is a snapshot of selected system configuration. Its contents are copied as regular files rather than symlinked. Review them, then run:

```sh
./scripts/apply-system
```
