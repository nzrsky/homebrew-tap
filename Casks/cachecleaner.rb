# Homebrew cask for CacheCleaner (full version).
# Lives in the nzrsky/homebrew-tap repository as Casks/cachecleaner.rb.
# After each release: bump `version`, paste sha256 printed by scripts/release.sh.
cask "cachecleaner" do
  version "1.0.0"
  sha256 "c79f54aaa587829f808fb04437f67c3694cb221ee7a4534b1b22906790d4040e"

  url "https://cachecleaner.app/downloads/CacheCleaner-#{version}.dmg"
  name "CacheCleaner"
  desc "Finds and deletes developer junk: caches, build folders, runtimes"
  homepage "https://cachecleaner.app/"

  auto_updates true # ships with Sparkle
  depends_on macos: ">= :monterey"

  app "CacheCleaner.app"

  zap trash: [
    "~/Library/Preferences/vc.ptr.CacheCleaner.plist",
  ]
end
