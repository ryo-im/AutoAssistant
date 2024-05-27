set :environment, "development"
every 1.minute do
  runner "UpdateMileageJob.perform_later"
end