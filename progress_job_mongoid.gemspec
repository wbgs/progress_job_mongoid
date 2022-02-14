require_relative "lib/progress_job_mongoid/version"

Gem::Specification.new do |spec|
  spec.name = "progress_job_mongoid"
  spec.version = ProgressJobMongoid::VERSION
  spec.authors = ["Priyank Abhani"]
  spec.email = ["developer@webgenius.co.nz"]

  spec.summary = %q{Delayed jobs with progress with support for mongoid.}
  spec.description = %q{Add progress feature to delayed jobs}
  spec.homepage = "https://github.com/wbgs/progress_job_mongoid"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.files = %w[README.md progress_job_mongoid.gemspec] + Dir['lib/**/*.rb']
  spec.require_paths = ["lib"]

  spec.add_dependency 'delayed_job_mongoid'
  spec.add_dependency 'mongoid', '>= 5.0'
end
