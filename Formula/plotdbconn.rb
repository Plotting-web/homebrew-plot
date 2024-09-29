class Plotdbconn < Formula
    desc "A script to open an SSM port forwarding session to an AWS EC2 instance and connect to an RDS database"
    homepage "https://github.com/mangchhe/homebrew-plot"
    url "https://github.com/mangchhe/homebrew-plot/releases/download/v0.0.1/plotdbconn-0.0.1.tar.gz"
    sha256 "5c91d9ee608e18be4d72e7b514b101d493f7995201b600e909d8b64bde0b9f82"
  
    depends_on "awscli"
  
    def install
      bin.install "plotdbconn.sh"
    end
  
    test do
      system "#{bin}/plotdbconn", "--help"
    end
  end