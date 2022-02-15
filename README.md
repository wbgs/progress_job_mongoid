# ProgressJobMongoid

This gem adds a couple of columns to delayed job table, and gives you a basic class for working with progress with support for delayed_job_mongoid.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'progress_job_mongoid'
```

And then execute:

    $ bundle install

Run generator (run delayed job generators first):

    $ rails generate progress_job_mongoid:install

## Usage

Create a new class that extends ProgressJobMongoid::Base

```
class NewJob < ProgressJobMongoid::Base

  def perform
    # some actions
  end

end
```

Inside perform method you can use:

```
update_progress(step: 10) # default step is 1
update_stage('name of stage')
update_stage_progress('name of stage', step: 11)
update_progress_max(progress_max)
```
methods to update the job progress.

To create a new job use Delayed job enqueue method, and pass the progress_max value

    $ job = Delayed::Job.enqueue NewJob.new(progress_max: 100) # default progress_max is 100

There is also a controller which returns the delayed job with calculated percentage

    $ GET 'progress-jobs/:job_id/'
