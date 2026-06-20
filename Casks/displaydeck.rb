cask "displaydeck" do
  version "2.8.0"
  sha256 "a7bf9d3ae42de3bf699f46ff7632bc6ff6ca2f5ab0dfb2f322dfab5e991a514c"

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
