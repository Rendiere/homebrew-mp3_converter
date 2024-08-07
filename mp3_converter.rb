class Mp3Converter < Formula
    include Language::Python::Virtualenv
  
    desc "Convert FLAC, AIFF, and WAV files to MP3"
    homepage "https://github.com/Rendiere/mp3_converter"
    url "https://github.com/Rendiere/mp3_converter/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "4320c8a5d8a806e530a0ec26bdb4c9a221c4efe9965f26e1701788efb07f7d84"
    license "MIT"
  
    depends_on "python@3.10"
    depends_on "ffmpeg"

    resource "pydub" do
      url "https://files.pythonhosted.org/packages/fe/9a/e6bca0eed82db26562c73b5076539a4a08d3cffd19c3cc5913a3e61145fd/pydub-0.25.1.tar.gz"
      sha256 "980a33ce9949cab2a569606b65674d748ecbca4f0796887fd6f46173a7b0d30f"
    end

    resource "mutagen" do
      url "https://files.pythonhosted.org/packages/b1/54/d1760a363d0fe345528e37782f6c18123b0e99e8ea755022fd51f1ecd0f9/mutagen-1.46.0.tar.gz"
      sha256 "6e5f8ba84836b99fe60be5fb27f84be4ad919bbb6b49caa6ae81e70584b55e58"
    end

    resource "colorama" do
      url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
      sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
    end

    def install
      virtualenv_install_with_resources
    end

    test do
      system bin/"mp3_converter", "--help"
    end
  end