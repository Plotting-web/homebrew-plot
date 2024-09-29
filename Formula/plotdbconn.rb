class Plotdbconn < Formula
    desc "A script to open an SSM port forwarding session to an AWS EC2 instance and connect to an RDS database"
    homepage "https://github.com/mangchhe/homebrew-plot"
    url "https://github.com/mangchhe/homebrew-plot/releases/download/v0.0.3/plotdbconn-0.0.3.tar.gz"
    sha256 "eed0484f9159c5854a8269bb758502098dd0988f970d254eb1375db801b0f14b"
  
    depends_on "awscli"
  
    def install
      bin.install "plotdbconn.sh" => "plotdbconn"
    end
  
    test do
      system "#{bin}/plotdbconn", "--help"
    end
  end