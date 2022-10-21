class GoSwagger < Formula
  on_macos do
    head "https://github.com/go-swagger/go-swagger.git" , branch: "master"
  end

  option "with-goswagger", "Names the binary goswagger instead of swagger"

  def install
   bin.install "GoSwagger"
  end

  # test do
  #   if build.with? "goswagger"
  #     system "#{bin}/goswagger", "version"
  #   else
  #     system "#{bin}/swagger", "version"
  #   end
  # end

end
