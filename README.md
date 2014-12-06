morse
=====

arduinoのLEDでモールス信号させます。
```bash
bundle install --path /lib/bundler/man/
```

.envに通信のパスを書く。
例）
```.env
CONNECTION_PATH="/dev/tty.usbmodem1411"
```

好きな文字列を渡して実行
```bash
bundle exec ruby morse.rb hoge
```
