require 'delayed_job_mongoid'
require 'mongoid'

module Delayed
  module Backend
    module Mongoid
      class Job
        include ::Mongoid::Document
        include ::Mongoid::Timestamps

        field :progress_stage,   type: String, default: ''
        field :progress_current, type: Integer, default: 0
        field :progress_max,     type: Integer, default: 100
      end
    end
  end
end
