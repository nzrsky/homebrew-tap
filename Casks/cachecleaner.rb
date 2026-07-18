# Homebrew cask for CacheCleaner (full version).
# Lives in the nzrsky/homebrew-tap repository as Casks/cachecleaner.rb.
# After each release: bump `version`, paste sha256 printed by scripts/release.sh.
cask "cachecleaner" do
  version "1.0.0"
  sha256 "2ea26bec7fdc6cd020e62435140920e0c3bc5c63a53f94f0e7c341cddf61b775"

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
