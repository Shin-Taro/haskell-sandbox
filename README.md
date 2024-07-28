# haskell-sandbox

## Required

### GHCup

https://www.haskell.org/ghcup/install/#how-to-install の通り以下で install

```sh
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

install 出来たら recommended が入っているので、全部 latest にしておく。

(latest じゃなくても多分動くし結局 ghc は 9.6.6 になる。正直よく分かってない。)

#### install 中の選択肢

- `P`があるやつは`P`で OK
- 無い奴は`Y`で OK

#### build 時に `cannot find -lgmp` みたいなエラーが出たら

libgmp3-dev(Ubuntu の場合)を install.

mac は何もしなくても入ってるはず.

#### その他のエラー

[この辺](https://github.com/haskell/haskell-language-server/issues/2864)とか見て頑張って。

## set up

- プロジェクトルートで `stack setup` (やらなくても OK)
- `stack build`でビルド
- `stack exec -- {コマンド名}` で実行
  - 実行できるコマンドは `package.yaml`の`executables`(sample とか fizzBuzz とか)

vscode の場合 [Haskell の拡張](https://marketplace.visualstudio.com/items?itemName=haskell.haskell)入れておくべし
