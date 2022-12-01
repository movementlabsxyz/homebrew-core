class TwinePypi < Formula
  include Language::Python::Virtualenv

  desc "Utilities for interacting with PyPI"
  homepage "https://github.com/pypa/twine"
  url "https://files.pythonhosted.org/packages/b7/1a/a7884359429d801cd63c2c5512ad0a337a509994b0e42d9696d4778d71f6/twine-4.0.2.tar.gz"
  sha256 "9e102ef5fdd5a20661eb88fad46338806c3bd32cf1db729603fe3697b1bc83c8"
  license "Apache-2.0"
  head "https://github.com/pypa/twine.git", branch: "main"

  bottle do
    rebuild 3
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "7e5262bb542465be0429b69cd6d06f21e99c09858d1bcb770454f688985c527f"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "10083806283081cebc8dedf0dffbd7b8f1bbdc2f92847c8c5564605b3f2077c1"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "15962cdb9f53b0c953dde40d5b792ab3f6e28a4694bfe2e479bdb8a17ec24aa0"
    sha256 cellar: :any_skip_relocation, monterey:       "bc24d54b5e70f93d0a638ab5fd6c3dbe5951f8308cf83d9d4314c2170364a335"
    sha256 cellar: :any_skip_relocation, big_sur:        "3160dd3be09c065a97c8de83108095a0e11abd7f6ac480219fc83a9a13176e32"
    sha256 cellar: :any_skip_relocation, catalina:       "953c4e72fb8024d2969404ea30d93c53cbc03c51b00428ad942d36bd252edd50"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "4a9459402937eb51b090ad9c0fd34fd7454e22de8c52b833a62c2e483397193c"
  end

  depends_on "docutils"
  depends_on "pygments"
  depends_on "python@3.11"
  depends_on "six"

  resource "bleach" do
    url "https://files.pythonhosted.org/packages/c2/5d/d5d45a38163ede3342d6ac1ca01b5d387329daadf534a25718f9a9ba818c/bleach-5.0.1.tar.gz"
    sha256 "0d03255c47eb9bd2f26aa9bb7f2107732e7e8fe195ca2f64709fcf3b0a4a085c"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/cb/a4/7de7cd59e429bd0ee6521ba58a75adaec136d32f91a761b28a11d8088d44/certifi-2022.9.24.tar.gz"
    sha256 "0d9c601124e5a6ba9712dbc60d9c53c21e34f5f641fe83002317394311bdce14"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/a1/34/44964211e5410b051e4b8d2869c470ae8a68ae274953b1c7de6d98bbcf94/charset-normalizer-2.1.1.tar.gz"
    sha256 "5a3d016c7c547f69d6f81fb0db9449ce888b418b5b9952cc5e6e66843e9dd845"
  end

  resource "commonmark" do
    url "https://files.pythonhosted.org/packages/60/48/a60f593447e8f0894ebb7f6e6c1f25dafc5e89c5879fdc9360ae93ff83f0/commonmark-0.9.1.tar.gz"
    sha256 "452f9dc859be7f06631ddcb328b6919c67984aca654e5fefb3914d54691aed60"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
    sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
  end

  resource "importlib-metadata" do
    url "https://files.pythonhosted.org/packages/32/5a/e0d75c8010295ae6746f379f5324bc726076dfc426548bfa6f0763fce870/importlib_metadata-5.1.0.tar.gz"
    sha256 "d5059f9f1e8e41f80e9c56c2ee58811450c31984dfa625329ffd7c0dad88a73b"
  end

  resource "jaraco.classes" do
    url "https://files.pythonhosted.org/packages/bf/02/a956c9bfd2dfe60b30c065ed8e28df7fcf72b292b861dca97e951c145ef6/jaraco.classes-3.2.3.tar.gz"
    sha256 "89559fa5c1d3c34eff6f631ad80bb21f378dbcbb35dd161fd2c6b93f5be2f98a"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/1c/35/c22960f14f5e17384296b2f09da259f8b5244fb3831eccec71cf948a49c6/keyring-23.11.0.tar.gz"
    sha256 "ad192263e2cdd5f12875dedc2da13534359a7e760e77f8d04b50968a821c2361"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/13/b3/397aa9668da8b1f0c307bc474608653d46122ae0563d1d32f60e24fa0cbd/more-itertools-9.0.0.tar.gz"
    sha256 "5a6257e40878ef0520b1803990e3e22303a41b5714006c32a3fd8304b26ea1ab"
  end

  resource "pkginfo" do
    url "https://files.pythonhosted.org/packages/12/d1/03b865975864a30d4a23f87fd5b9f816db2e4b2e8f4fe696a3238b749cc0/pkginfo-1.9.2.tar.gz"
    sha256 "ac03e37e4d601aaee40f8087f63fc4a2a6c9814dda2c8fa6aab1b1829653bdfa"
  end

  resource "readme-renderer" do
    url "https://files.pythonhosted.org/packages/81/c3/d20152fcd1986117b898f66928938f329d0c91ddc47f081c58e64e0f51dc/readme_renderer-37.3.tar.gz"
    sha256 "cd653186dfc73055656f090f227f5cb22a046d7f71a841dfa305f55c9a513273"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/a5/61/a867851fd5ab77277495a8709ddda0861b28163c4613b011bc00228cc724/requests-2.28.1.tar.gz"
    sha256 "7c5599b102feddaa661c826c56ab4fee28bfd17f5abca1ebbe3e7f19d7c97983"
  end

  resource "requests-toolbelt" do
    url "https://files.pythonhosted.org/packages/0c/4c/07f01c6ac44f7784fa399137fbc8d0cdc1b5d35304e8c0f278ad82105b58/requests-toolbelt-0.10.1.tar.gz"
    sha256 "62e09f7ff5ccbda92772a29f394a49c3ad6cb181d568b1337626b2abb628a63d"
  end

  resource "rfc3986" do
    url "https://files.pythonhosted.org/packages/85/40/1520d68bfa07ab5a6f065a186815fb6610c86fe957bc065754e47f7b0840/rfc3986-2.0.0.tar.gz"
    sha256 "97aacf9dbd4bfd829baad6e6309fa6573aaf1be3f6fa735c8ab05e46cecb261c"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/11/23/814edf09ec6470d52022b9e95c23c1bef77f0bc451761e1504ebd09606d3/rich-12.6.0.tar.gz"
    sha256 "ba3a3775974105c221d31141f2c116f4fd65c5ceb0698657a11e9f295ec93fd0"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c2/51/32da03cf19d17d46cce5c731967bf58de9bd71db3a379932f53b094deda4/urllib3-1.26.13.tar.gz"
    sha256 "c083dd0dce68dbfbe1129d5271cb90f9447dea7d52097c6e0126120c521ddea8"
  end

  resource "webencodings" do
    url "https://files.pythonhosted.org/packages/0b/02/ae6ceac1baeda530866a85075641cec12989bd8d31af6d5ab4a3e8c92f47/webencodings-0.5.1.tar.gz"
    sha256 "b36a1c245f2d304965eb4e0a82848379241dc04b865afcc4aab16748587e1923"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/8e/b3/8b16a007184714f71157b1a71bbe632c5d66dd43bc8152b3c799b13881e1/zipp-3.11.0.tar.gz"
    sha256 "a7a22e05929290a67401440b39690ae6563279bced5f314609d9d03798f56766"
  end

  def install
    virtualenv_install_with_resources
    pkgshare.install "tests/fixtures/twine-1.5.0-py2.py3-none-any.whl"
  end

  test do
    wheel = "twine-1.5.0-py2.py3-none-any.whl"
    cmd = "#{bin}/twine upload -uuser -ppass #{pkgshare}/#{wheel} 2>&1"
    assert_match(/Uploading.*#{wheel}.*HTTPError: 403/m, shell_output(cmd, 1))
  end
end
