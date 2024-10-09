class Plotdbconn < Formula
    desc "A script to open an SSM port forwarding session to an AWS EC2 instance and connect to an RDS database"
    homepage "https://github.com/mangchhe/homebrew-plot"
    url "https://github.com/mangchhe/homebrew-plot/releases/download/v0.0.4/plotdbconn-0.0.4.tar.gz"
    sha256 "51751d6581d2543fd19e0d65425a97a3a4f4d22089895732463e1ffde6b2371c"
  
    depends_on "awscli"
  
    def install
      bin.install "plotdbconn.sh" => "plotdbconn"
    end
  
    test do
      system "#{bin}/plotdbconn", "--help"
    end
  end