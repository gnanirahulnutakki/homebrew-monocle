cask "monocle" do
  version "1.10.3-rc32"

  on_arm do
    sha256 "cb998c34edd023471b9300bcafde6c2fc98c33ddbcfa0598b70ae750d7759e98"

    url "https://github.com/gnanirahulnutakki/homebrew-monocle/releases/download/v#{version}/Monocle-#{version}-apple-silicon.dmg"
  end
  on_intel do
    sha256 "50bc5a6b1b7cf99179397a4ce8e0ae685a1ef92fb2a6ac6b8b8870d792144b44"

    url "https://github.com/gnanirahulnutakki/homebrew-monocle/releases/download/v#{version}/Monocle-#{version}-intel.dmg"
  end

  name "Monocle"
  desc "Kubernetes desktop app built on Freelens"
  homepage "https://github.com/gnanirahulnutakki/homebrew-monocle"

  depends_on macos: ">= :monterey"

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

  caveats "Test build: unsigned and not notarized. On first launch, approve Monocle in System Settings > Privacy & Security > Open Anyway."
end
