# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mongocli < Formula
  desc "The MongoDB Command Line Interface (mongocli) is a tool for managing your MongoDB cloud services, like MongoDB Atlas, MongoDB Cloud Manager, and MongoDB Ops Manager."
  homepage "https://github.com/mongodb/mongocli"
  version "1.13.0"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mongodb/mongocli/releases/download/v1.13.0/mongocli_1.13.0_macos_x86_64.zip"
    sha256 "21468eea1c8bf221113c489955a1d643191ab4d265670b36d0cc66a6c60e9516"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mongodb/mongocli/releases/download/v1.13.0/mongocli_1.13.0_linux_x86_64.tar.gz"
    sha256 "745c4266998e554fd7d94e78434aa9e231b3d6d6a7c86636e678fefe718d923d"
  end

  def install
    bin.install "mongocli"
    (bash_completion/"mongocli.sh").write `#{bin}/mongocli completion bash`
    (zsh_completion/"_mongocli").write `#{bin}/mongocli completion zsh`
    (fish_completion/"mongocli.fish").write `#{bin}/mongocli completion fish`
  end

  test do
    system "#{bin}/mongocli --version"
  end
end
