# Generated by tools/update-brew-tap.py. DO NOT EDIT!
# Please refers to the original template file Formula/openllm.rb.j2
# vim: set ft=ruby:
class Openllm < Formula
  desc "OpenLLM: Operating LLMs in production"
  homepage "https://github.com/bentoml/OpenLLM"
  version "0.4.38"
  license "Apache-2.0"
  head "https://github.com/bentoml/OpenLLM, branch: main"
  url "https://github.com/bentoml/OpenLLM/archive/v0.4.38.tar.gz"
  sha256 "c6bf956233b3d206cb5909cb39847089734b0363c57df4eaca4efcb50a949282"

  on_linux do
    url "https://github.com/bentoml/OpenLLM/releases/download/v0.4.38/openllm-0.4.38-x86_64-unknown-linux-musl.tar.gz"
    sha256 "6744f261ae83e59761488445a6307d2eda8aeb51d068f6e4fb61ff41efe9c0b2"
  end
  on_macos do
    on_arm do
      url "https://github.com/bentoml/OpenLLM/releases/download/v0.4.38/openllm-0.4.38-aarch64-apple-darwin.tar.gz"
      sha256 "0ea391e00a71387be253bf1475a17f0439c535aa3e37719b760c3462373d0b9d"
    end
    on_intel do
      url "https://github.com/bentoml/OpenLLM/releases/download/v0.4.38/openllm-0.4.38-x86_64-apple-darwin.tar.gz"
      sha256 "89bc3af712649f1d4f93e831c258dc13b2c02a0b81c83a07d418d6dc9758b7c4"
    end
  end

  def install
    on_linux do
      bin.install "openllm-0.4.38-x86_64-unknown-linux-musl" => "openllm"
    end
  on_macos do
    on_arm do
      bin.install "openllm-0.4.38-aarch64-apple-darwin" => "openllm"
    end
    on_intel do
      bin.install "openllm-0.4.38-x86_64-apple-darwin" => "openllm"
    end
  end
    ohai "To get started, run: 'openllm --help'"
    ohai "To see supported models, run: 'openllm models'"
  end

  test do
    shell_output "#{bin}/openllm --version"
  end
end
