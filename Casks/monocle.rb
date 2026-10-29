cask "monocle" do
  version "1.10.3-rc34"

  on_arm do
    sha256 "2eceb9c322d495bfb4d255fe606a1542a2e7fdf6cfaf54070d8696e78c67aef0"

    url "https://github.com/gnanirahulnutakki/homebrew-monocle/releases/download/v#{version}/Monocle-#{version}-apple-silicon.dmg"
  end
  on_intel do
    sha256 "ee3cc37322a9467f1999568964bf275e8835ce9dd1945e9298ca32cec2663f22"

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
