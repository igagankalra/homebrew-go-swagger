class GoSwagger < Formula
  on_macos do
    head "https://github.com/go-swagger/go-swagger.git" , branch: "master"
  end

  option "with-goswagger", "Names the binary goswagger instead of swagger"

  def install
    nm = "swagger"
    if build.with? "goswagger"
      nm = "goswagger"
    end
    system "mv", @@filename, nm
    bin.install nm
  end

  # test do
  #   if build.with? "goswagger"
  #     system "#{bin}/goswagger", "version"
  #   else
  #     system "#{bin}/swagger", "version"
  #   end
  # end

end
