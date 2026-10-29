cask "monocle" do
  version "1.10.3-rc33"

  on_arm do
    sha256 "509dddad9723c357502a1aaec6c84c9cd1b80d8e2708a84bf1773168cc640eac"

    url "https://github.com/gnanirahulnutakki/homebrew-monocle/releases/download/v#{version}/Monocle-#{version}-apple-silicon.dmg"
  end
  on_intel do
    sha256 "82090bc1ce18ab0019cfb2ea57eeaf6dcf7efb78dd9dec20123830c865c6d477"

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
