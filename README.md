# homebrew-tap

`abcdlsj` 的个人 Homebrew tap，放自己的 app（cask）。

## 用法

```sh
brew tap abcdlsj/tap
brew install --cask kip     # 或任何放在 Casks/ 里的 cask
brew upgrade --cask         # 升级
```

## 目录

```
Casks/
  kip.rb      # https://github.com/abcdlsj/kip
```

一个 tap 可以放任意多个 cask，新 app 直接加一个 `Casks/<name>.rb` 即可，不需要再建仓库。

## kip 的 cask 从哪来

`kip` 的 release workflow 发布 `v*` tag 时会算出两个架构 dmg 的 sha256，生成带版本号的
`kip.rb` 并挂到那次 release 的资产里。发版后把它拷到 `Casks/kip.rb` 提交即可，避免手抄
sha256 出错。

## 签名

Kip 的 dmg 目前未签名、未 notarize。Homebrew 下载的文件不带 `com.apple.quarantine`，
所以 `brew install` 装出来的 app 能直接启动；从浏览器下载 dmg 手动安装则会被 Gatekeeper 拦。
