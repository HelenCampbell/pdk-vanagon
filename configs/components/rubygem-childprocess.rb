component "rubygem-childprocess" do |pkg, settings, platform|
  pkg.version "0.7.1"
  pkg.md5sum "7256bd0c8e65e34903b7540fab490441"
  pkg.url "http://buildsources.delivery.puppetlabs.net/childprocess-#{pkg.get_version}.gem"

  pkg.build_requires "ruby-#{settings[:ruby_version]}"

  if platform.is_windows?
    pkg.environment "PATH", settings[:gem_path_env]
  end

  pkg.install do
    "#{settings[:gem_install]} childprocess-#{pkg.get_version}.gem"
  end
end
