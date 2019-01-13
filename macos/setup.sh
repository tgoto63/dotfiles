##################################################
# Host name
##################################################
# 次のコマンドを入力して Mac のプライマリ ホスト名を変更する:
# このホスト名は完全修飾ホスト名にします(myMac.domain.com など)。
# sudo scutil --set HostName <新しいホスト名>

# 次のコマンドを入力して Mac の Bonjour ホスト名を変更する:
# このホスト名は、ローカル ネットワーク上で使用できる名前にします(myMac.local など)。
# sudo scutil --set LocalHostName <新しいホスト名>
sudo scutil --set LocalHostName tgoto63

# 任意: コンピュータ名を変更する場合は、次のコマンドを入力します。
# このコンピュータ名は Finder に表示されるため、分かりやすいコンピュータ名にします(myMac など)。
# sudo scutil --set ComputerName <新しい名>
sudo scutil --set ComputerName tgoto63

# 次のように入力して DNS キャッシュをフラッシュします。
dscacheutil -flushcache

##################################################
# Mac OS
##################################################
# スタンバイまでの時間を24時間へ変更 (デフォルト1時間)
sudo pmset -a standbydelay 86400
# ブート時のサウンドの無効化 (寂しい気もしますが煩いので消しています)
sudo nvram SystemAudioVolume=" "
# スクロールバーの常時表示
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
# コンソールアプリケーションの画面サイズ変更を高速にする
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
# フリーズすると自動的に再起動
sudo systemsetup -setrestartfreeze on
# スリープさせない
sudo systemsetup -setcomputersleep Off > /dev/null
# 自動大文字の無効化
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
# クラッシュレポートの無効化
defaults write com.apple.CrashReporter DialogType -string "none"
# 時計アイコンクリック時にOSやホスト名ipを表示する
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
# Bluetoothヘッドフォン/ヘッドセットの音質を向上させる
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

##################################################
# Dock
##################################################
# window効果の最大/最小を変更
defaults write com.apple.dock mineffect -string "scale"
# Dockで開いているアプリケーションのインジケータライトを表示する
defaults write com.apple.dock show-process-indicators -bool true
# 開いているアプリケーションのみをdockに表示
defaults write com.apple.dock static-only -bool true
# アプリケーション起動時のアニメーションを無効化
defaults write com.apple.dock launchanim -bool false
# すべての（デフォルトの）アプリアイコンをDockから消去する
defaults write com.apple.dock persistent-apps -array
# Dashboard無効化
defaults write com.apple.dashboard mcx-disabled -bool true

##################################################
# Finder
##################################################
# アニメーションを無効化する
defaults write com.apple.finder DisableAllAnimations -bool true
# デフォルトで隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles -bool true
# ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true
# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true
# 名前で並べ替えを選択時にディレクトリを前に置くようにする
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# 検索時にデフォルトでカレントディレクトリを検索
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# 拡張子変更時の警告を無効化
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# ディレクトリのスプリングロードを有効化
defaults write NSGlobalDomain com.apple.springing.enabled -bool true
# スプリングロード遅延(1秒)
defaults write NSGlobalDomain com.apple.springing.delay -float 1
# USBやネットワークストレージに.DS_Storeファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
# ディスク検証を無効化
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true
# ボリュームマウント時に自動的にFinderを表示
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true
# ゴミ箱を空にする前の警告の無効化
defaults write com.apple.finder WarnOnEmptyTrash -bool false
# ~/Libraryフォルダを表示
chflags nohidden ~/Library
# /Volumesフォルダを表示
sudo chflags nohidden /Volumes

##################################################
# Trackpad
##################################################
# enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write com.apple.driver.AppleMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# enable three-finger drag
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -int 1
defaults write com.apple.driver.AppleMultitouch.trackpad TrackpadThreeFingerDrag -int 1

##################################################
# Safari
##################################################
# 検索クエリをAppleへ送信しない
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

##################################################
# Terminal
##################################################
# UTF-8のみを使用する
defaults write com.apple.terminal StringEncodings -array 4
# ターミナル終了時のプロンプトを非表示にする
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

##################################################
# App Store
##################################################
# WebKitデベロッパーツールを有効にする
defaults write com.apple.appstore WebKitDeveloperExtras -bool true
# デバッグメニューを有効にする
defaults write com.apple.appstore ShowDebugMenu -bool true
# 自動更新チェックを有効にする
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true
# 毎日アプリケーションのアップデートを確認する
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
# アプリケーションのアップデートをバックグラウンドでダウンロードする
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1
# システムデータファイルとセキュリティ更新プログラムをインストールする
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1
# アプリケーションの自動更新を有効化
defaults write com.apple.commerce AutoUpdate -bool true
# 再起動が必要なアプリケーションの場合自動で再起動を有効化する
defaults write com.apple.commerce AutoUpdateRestartRequired -bool true

##################################################
# Google Chrome
##################################################
# システム固有の印刷プレビューダイアログを使用する
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome.canary DisablePrintPreview -bool true
# 既定で印刷ダイアログを展開する
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true
defaults write com.google.Chrome.canary PMPrintingExpandedStateForPrint2 -bool true
