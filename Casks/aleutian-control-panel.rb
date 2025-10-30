cask "aleutian-control-panel" do
  # Use the version from your GUI app's release
  version "0.1.2"

  # Get the SHA256 of the .zip file you uploaded to the release
  sha256 "f74fbd04f99eeed9dee030e82514a13edc15ed82eb28276b0c8bd5cee018facf"

  # URL points to the .zip asset on your GUI app's release page
  url "https://github.com/jinterlante1206/ALeutianControlPanel/releases/download/v#{version}/AleutianControlPanel-v#{version}.zip"

  name "Aleutian Control Panel"
  desc "Menu bar app for managing and monitoring the AleutianLocal MLOps stack"
  homepage "https://github.com/jinterlante1206/AleutianControlPanel"

  # This line tells Homebrew to move the .app file to /Applications
  app "AleutianControlPanel.app"

  # (Optional) Add dependencies if the app needs them, though it usually just runs commands
  depends_on formula "aleutian"

  # (Optional) Add uninstall commands
  zap trash: [
    "~/Library/Application Support/AleutianControlPanel",
    "~/Library/Preferences/ai.aleutian.controlpanel.plist",
    "~/Library/Caches/ai.aleutian.controlpanel",
  ]
end