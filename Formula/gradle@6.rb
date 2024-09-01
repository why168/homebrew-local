class GradleAT6 < Formula
  desc "Open-source build automation tool based on the Groovy and Kotlin DSL"
  homepage "https://www.gradle.org/"
  url "https://services.gradle.org/distributions/gradle-6.8.3-all.zip"
  sha256 "9af5c8e7e2cd1a3b0f694a4ac262b9f38c75262e74a9e8b5101af302a6beadd7"
  license "Apache-2.0"

  livecheck do
    url "https://services.gradle.org/distributions/"
    regex(/href=.*?gradle[._-]v?(\d+(?:\.\d+)+)-all\.(?:[tz])/i)
  end

  # gradle currently does not support Java 16
  # if Hardware::CPU.arm?
  #   depends_on "openjdk@11"
  # else
  #   depends_on "openjdk"
  # end

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin docs lib src]
    env = if Hardware::CPU.arm?
      Language::Java.overridable_java_home_env("11")
    else
      Language::Java.overridable_java_home_env
    end
    (bin/"gradle").write_env_script libexec/"bin/gradle", env
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gradle --version")

    (testpath/"settings.gradle").write ""
    (testpath/"build.gradle").write <<~EOS
      println "gradle works!"
    EOS
    gradle_output = shell_output("#{bin}/gradle build --no-daemon")
    assert_includes gradle_output, "gradle works!"
  end
end
