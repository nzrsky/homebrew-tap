# Homebrew cask for CacheCleaner (full version).
# Lives in the nzrsky/homebrew-tap repository as Casks/cachecleaner.rb.
# After each release: bump `version`, paste sha256 printed by scripts/release.sh.
cask "cachecleaner" do
  version "2.9.0"
  sha256 "8114e888c633b2d708ccfac5ad6f12c4792100e72be0cc30c796c7c3a87e4e6b"

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
