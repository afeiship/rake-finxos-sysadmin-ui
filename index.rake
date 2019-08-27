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
end
