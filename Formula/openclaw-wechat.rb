# Homebrew formula for the OpenClaw WeChat channel plugin (Linux / Linuxbrew).
# url and sha256 point at the published npm tarball; update both on each release.
class OpenclawWechat < Formula
  desc "OpenClaw channel plugin and setup helper for personal WeChat on Linux"
  homepage "https://github.com/alexdeg92/openclaw-wechat-native"
  url "https://registry.npmjs.org/openclaw-wechat-native/-/openclaw-wechat-native-0.1.0.tgz"
  sha256 "9f5bff187bd9979475a451065e0b01d770698c2eb49693b9a0016785eb5691ec"
  license "MIT"

  depends_on "node"
  depends_on :linux

  def install
    system "npm", "install", *std_npm_args, "--legacy-peer-deps"
    bin.install_symlink Dir[libexec/"bin/*"]
  end

  def caveats
    <<~EOS
      Register the plugin with OpenClaw, then follow the setup guide:
        openclaw plugins install openclaw-wechat-native
        openclaw-wechat doctor
        openclaw-wechat login
      Guide: https://github.com/alexdeg92/openclaw-wechat-native#installation
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openclaw-wechat --version")
  end
end
