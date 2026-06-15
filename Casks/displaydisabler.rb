cask "displaydisabler" do
  version "2.0.0"
  sha256 "55b4b4e73cfc6a32f58e549e7fd9b2947a1532b1a9e548d62a9998296dd5e2f7"

  url "https://github.com/oabdrabo/DisplayDisabler/releases/download/v#{version}/DisplayDisabler.app.zip"
  name "DisplayDisabler"
  desc "Menu-bar app for total control of your Mac's displays"
  homepage "https://github.com/oabdrabo/DisplayDisabler"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "DisplayDisabler.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/DisplayDisabler.app"]
  end

  uninstall quit: "com.local.DisplayDisabler"

  zap trash: "~/Library/Preferences/com.local.DisplayDisabler.plist"

  caveats <<~CAV
    DisplayDisabler is ad-hoc signed and built on private APIs.
      - Display / HiDPI / brightness / warmth work out of the box.
      - Window transparency, blur, keep-on-top and the picture-in-picture
        pin need SIP disabled + the -arm64e_preview_abi boot-arg.
      - Picture-in-Picture also needs Accessibility permission.
    On first launch it asks once for an admin password to install its
    scripting addition into Dock.
  CAV
end
