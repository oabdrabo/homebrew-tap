cask "displaydeck" do
  version "2.7.2"
  sha256 "ecef4aaa0d1c7acd24413ebb91418f2e514b54940a8c7786b01687ac0e9b48ce"

  url "https://github.com/oabdrabo/DisplayDeck/releases/download/v#{version}/DisplayDeck.app.zip"
  name "DisplayDeck"
  desc "Menu-bar app for total control of your Mac's displays and windows"
  homepage "https://github.com/oabdrabo/DisplayDeck"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "DisplayDeck.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/DisplayDeck.app"]
  end

  uninstall quit: "com.local.DisplayDeck"

  zap trash: "~/Library/Preferences/com.local.DisplayDeck.plist"

  caveats <<~CAV
    DisplayDeck is self-signed (not notarized) and built on private APIs.
      - Display / HiDPI / brightness / warmth work out of the box.
      - Window transparency, blur, keep-on-top and the picture-in-picture
        pin need SIP disabled + the -arm64e_preview_abi boot-arg.
      - Picture-in-Picture also needs Accessibility permission.
    On first launch it asks once for an admin password to install its
    scripting addition into Dock.
  CAV
end
