# Copied from Lippy's own repository when a release is cut, so the version
# and checksum match what was published.

cask "lippy" do
  version "0.10.0"
  sha256 "fa351810abbbb48110436ad0b5904f44d4f464459e44bbdad993892c6e062ac7"

  url "https://github.com/cscmsg/lippy-releases/releases/download/v#{version}/Lippy-#{version}.dmg"
  name "Lippy"
  desc "Local dictation with on-device transcript cleanup"
  homepage "https://protodemo.com/lippy/"

  # MLX is Apple Silicon only, and the app targets macOS 14+.
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Lippy.app"

  caveats <<~EOS
    Before first use, run the setup script to build the Python environment and
    download the models (about 4.5 GB, once):

      "#{appdir}/Lippy.app/Contents/Resources/setup.sh"

    or choose "Run First-Time Setup..." from Lippy's menu bar item.

    Lippy then needs Microphone and Accessibility permission. macOS will
    ask; Accessibility is what lets the hotkey work and the text paste.
  EOS

  uninstall launchctl: "com.cscmsg.lippy.lippyd",
            quit:      "com.cscmsg.lippy"

  # Deliberately not zapping the Hugging Face cache: those weights are shared
  # with any other MLX tool on the machine, and re-downloading is 4.5 GB.
  zap trash: [
    "~/Library/Application Support/Lippy",
    "~/Library/LaunchAgents/com.cscmsg.lippy.lippyd.plist",
    "~/Library/Preferences/com.cscmsg.lippy.plist",
  ]
end
