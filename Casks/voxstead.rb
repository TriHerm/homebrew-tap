cask "voxstead" do
  version "0.3.18"
  sha256 "d088659e246d4808ff29c64f910df1b542d0e35c6c160aea25ac735dad05b231"

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
