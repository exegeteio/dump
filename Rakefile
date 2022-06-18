# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

begin
  require "rubocop/rake_task"

  task default: %i[rubocop test]

  desc "Run rubocop"
  task :rubocop do
    RuboCop::RakeTask.new
  end
rescue LoadError # No rubocop
end
