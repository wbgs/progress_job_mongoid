module ProgressJobMongoid
  class Base
    def initialize(progress_max: 100)
      @progress_max = progress_max
    end

    def before(job)
      @job = job
      job.update(progress_max: @progress_max)
      job.update(progress_current: 0)
    end

    def update_progress(step: 1)
      @job.update(progress_current: @job.progress_current + step)
    end

    def update_stage(stage)
      @job.update(progress_stage: stage)
    end

    def update_stage_progress(stage, step: 1)
      update_stage(stage)
      update_progress(step: step)
    end

    def update_progress_max(progress_max)
      @job.update(progress_max: progress_max)
    end

    def error(job, exception)
      job.update(progress_stage: exception.message)
    end
  end
end
