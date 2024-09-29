class Plotdbconn < Formula
    desc "A script to open an SSM port forwarding session to an AWS EC2 instance and connect to an RDS database"
    homepage "https://github.com/mangchhe/homebrew-plot"
    url "https://github.com/mangchhe/homebrew-plot/releases/download/v0.0.2/plotdbconn-0.0.2.tar.gz"
    sha256 "2517a2ff01f06559262ee67b3aab93b45320dce9d88c0b95b4eea8991f18fbbe"
  
    depends_on "awscli"
  
    def install
      bin.install "plotdbconn.sh" => "plotdbconn"
    end
  
    test do
      system "#{bin}/plotdbconn", "--help"
    end
  end