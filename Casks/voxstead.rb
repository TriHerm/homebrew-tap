cask "voxstead" do
  version "0.3.17"
  sha256 "8ad8053e9c8fe14fb221b84e9331e625c13eba43a878c52403d08a8f4b40f193"

  url "https://github.com/TriHerm/voxstead/releases/download/v#{version}/Voxstead-#{version}-arm64.dmg"
  name "Voxstead"
  desc "Live captions, call assistance, meeting notes, and voice dictation"
  homepage "https://github.com/TriHerm/voxstead"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Voxstead.app"

  caveats <<~EOS
    Voxstead uses an ad hoc signature and has not been notarized by Apple.
    If macOS blocks the first launch and you trust this release, open
    System Settings > Privacy & Security and select Open Anyway for Voxstead.
  EOS
end
