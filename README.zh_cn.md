# dotfiles

## 用户配置（GNU Stow）

`home/` 是唯一的 Stow package；其目录结构直接对应 `$HOME`。运行：

```sh
./scripts/link-home
```

Stow 会把其中的文件或目录链接到家目录，仓库内的文件才是配置的唯一来源。因此，使用配置前请先做好备份。

添加一个新的配置文件时，先把原文件移入本项目目录下的 `home/`，再重新链接：

```sh
repo="$HOME/dotfiles"
rel='.config/example/config.toml'
mkdir -p "$repo/home/$(dirname "$rel")"
mv "$HOME/$rel" "$repo/home/$rel"
stow --restow --dir="$repo" --target="$HOME" home
git -C "$repo" add "home/$rel"
```

如果目标位置已有文件，先用下列命令查看冲突；确认后手动备份或移走冲突文件，再执行链接。不要直接使用 `--adopt`，否则新机器上的文件会反向覆盖仓库版本。

```sh
stow --simulate --verbose=2 --dir="$HOME/dotfiles" --target="$HOME" home
```

## 新环境部署

```sh
git clone "https://github.com/dengzengxiao/dotfiles.git" "$HOME/dotfiles"
cd "$HOME/dotfiles"
./scripts/link-home
```

## 系统配置

`system/etc/` 是选定系统配置的快照，会复制为普通文件而非符号链接。检查内容后运行：

```sh
./scripts/apply-system
```

