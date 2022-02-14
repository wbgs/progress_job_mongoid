require "rails/generators"

module ProgressJobMongoid

  module Generators
    class InstallGenerator < Rails::Generators::Base

      def install
        route "get 'progress-job/:job_id' => 'progress_job_mongoid/progress#show'"
      end

    end
  end
end
