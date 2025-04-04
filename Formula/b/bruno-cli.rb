class BrunoCli < Formula
  desc "CLI of the open-source IDE For exploring and testing APIs"
  homepage "https://www.usebruno.com/"
  url "https://registry.npmjs.org/@usebruno/cli/-/cli-2.0.1.tgz"
  sha256 "a9d78aca0c6f4c3b4859e5ce1e84c6bb24fc4f4071dd8f5a68417f76068ebd6c"
  license "MIT"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c066ce9a01894c7727d406cc4ead3084995df0d234df974f6439cfbd3037d809"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "c066ce9a01894c7727d406cc4ead3084995df0d234df974f6439cfbd3037d809"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "c066ce9a01894c7727d406cc4ead3084995df0d234df974f6439cfbd3037d809"
    sha256 cellar: :any_skip_relocation, sonoma:        "dcf188d450c9bfbb962cd2f4a9af1dfaf0e5c23fda52be434aafb0658b90418a"
    sha256 cellar: :any_skip_relocation, ventura:       "dcf188d450c9bfbb962cd2f4a9af1dfaf0e5c23fda52be434aafb0658b90418a"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "c066ce9a01894c7727d406cc4ead3084995df0d234df974f6439cfbd3037d809"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "c066ce9a01894c7727d406cc4ead3084995df0d234df974f6439cfbd3037d809"
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    # supress `punycode` module deprecation warning, upstream issue: https://github.com/usebruno/bruno/issues/2229
    (bin/"bru").write_env_script libexec/"bin/bru", NODE_OPTIONS: "--no-deprecation"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bru --version")
    assert_match "You can run only at the root of a collection", shell_output("#{bin}/bru run 2>&1", 4)
  end
end
