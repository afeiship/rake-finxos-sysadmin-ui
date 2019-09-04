require "json"
pkg = JSON.load File.open "./package.json"

# main task list:
namespace :app do
  # rake hello_with_args[afei,bash]
  desc "Create view"
  task :view do |task, args|
    sh "yo react-app:view"
  end

  desc "Create service"
  task :service do |task, args|
    sh "yo react-app:service"
  end

  desc "Create mixin"
  task :mixin do |task, args|
    sh "yo react-app:mixin"
  end

  desc "Package dist file."
  task :pack, [:version, :dist] do |task, args|
    args.with_defaults(
      version: pkg["version"],
      dist: "dist",
    )
    dist = args[:dist]
    sh "rm -rf *.tar.gz"
    sh "tar zcf #{dist}-#{args[:version]}.tar.gz #{dist}"
  end
end
