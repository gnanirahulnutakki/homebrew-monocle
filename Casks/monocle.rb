cask "monocle" do
  version "1.10.3-rc35"

  on_arm do
    sha256 "9e1aaeb5281f3c5766dad26fadc0738d2d188003e026ae2a292b609a05411f09"

    url "https://github.com/gnanirahulnutakki/homebrew-monocle/releases/download/v#{version}/Monocle-#{version}-apple-silicon.dmg"
  end
  on_intel do
    sha256 "ae2be8db45c6cc15c5f0db02cf5670b044c69bcfd0231ef1cbf88365d9b03c3c"

    url "https://github.com/gnanirahulnutakki/homebrew-monocle/releases/download/v#{version}/Monocle-#{version}-intel.dmg"
  end

  name "Monocle"
  desc "Kubernetes desktop app built on Freelens"
  homepage "https://github.com/gnanirahulnutakki/homebrew-monocle"

  depends_on macos: :monterey

  app "Monocle.app"

  # Only the extension folders Monocle installs; other Freelens extensions in the same folder stay.
  zap trash: [
    "~/.freelens/extensions/freelens-ai-explain",
    "~/.freelens/extensions/freelens-ai-workloads",
    "~/.freelens/extensions/freelens-argo-events",
    "~/.freelens/extensions/freelens-cloud-clusters",
    "~/.freelens/extensions/freelens-diagnose",
    "~/.freelens/extensions/freelens-fleet",
    "~/.freelens/extensions/freelens-gitops-overview",
    "~/.freelens/extensions/freelens-local-clusters",
    "~/.freelens/extensions/freelens-observability",
    "~/.freelens/extensions/freelens-open-in-editor",
    "~/.freelens/extensions/freelens-policies",
    "~/.freelens/extensions/freelens-team",
    "~/.freelens/extensions/freelens-uptime",
    "~/Library/Application Support/Monocle",
    "~/Library/Logs/Monocle",
    "~/Library/Preferences/app.monocle.Monocle.plist",
  ]

  caveats <<~EOS
    Test build: unsigned and not notarized. On first launch, approve Monocle in
    System Settings > Privacy & Security > Open Anyway.
  EOS
end
