# Homebrew cask for CacheCleaner (full version).
# Lives in the nzrsky/homebrew-tap repository as Casks/cachecleaner.rb.
# After each release: bump `version`, paste sha256 printed by scripts/release.sh.
cask "cachecleaner" do
  version "1.0.0"
  sha256 "e66857a17125116ca8e616f98c1af4a7bf2adafd1f94301d9db44d268da498b6"

  url "https://cachecleaner.app/downloads/CacheCleaner-#{version}.dmg"
  name "CacheCleaner"
  desc "Finds and deletes developer junk: caches, build folders, runtimes"
  homepage "https://cachecleaner.app/"

  auto_updates true # ships with Sparkle
  depends_on macos: ">= :sonoma"

  app "CacheCleaner.app"

  zap trash: [
    "~/Library/Preferences/vc.ptr.CacheCleaner.plist",
  ]
end
