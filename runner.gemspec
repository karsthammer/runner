# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{runner}
  s.version = "0.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeffrey Wilcke"]
  s.date = %q{2011-04-14}
  s.email = %q{stygeo@gmail.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "app/controllers/runner/processes_controller.rb",
     "app/models/runner/process.rb",
     "config/routes.rb",
     "lib/generators/runner/runner_generator.rb",
     "lib/generators/runner/templates/default_initializer.rb",
     "lib/generators/runner/templates/migration.rb",
     "lib/runner.rb",
     "lib/runner/backend/active_record.rb",
     "lib/runner/backend/base.rb",
     "lib/runner/concurrecy.rb",
     "lib/runner/engine.rb",
     "lib/runner/messaging.rb",
     "lib/runner/performable_method.rb",
     "lib/runner/serialization/marshal.rb",
     "lib/runner/serialization/yaml.rb",
     "lib/runner/task_handler.rb",
     "lib/runner/task_spawner.rb",
     "lib/runner/yaml_ext.rb"
  ]
  s.homepage = %q{http://spicedcocoa.wordpress.com}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Runner: A Rails 3 background worker based on delayed_job and spawn.}
  s.test_files = [
    "spec/active_record_spec.rb",
     "spec/concurrency_spec.rb",
     "spec/messaging_spec.rb",
     "spec/performable_method_spec.rb",
     "spec/spec_helper.rb",
     "spec/task_handler_spec.rb",
     "spec/task_spawner_spec.rb",
     "spec/yaml_serialization_spec.rb"
  ]
	s.add_dependency "activesupport"

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

