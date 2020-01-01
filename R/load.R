#' @title Load Samsung Health Data
#' @name load_samsunghealth
#' @description load_samsunghealth loads a Samsung Health Data export
#' @param path Path to the exported Samsung Health Data
#' @export
load_samsunghealth <- function(path) {
  if (grepl('\\.tar\\.[bg]z[2]?', path)) {
      t <- tempdir(T)
      samsungHealthTempDir <- file.path(t, "samsungHealth")
      if (dir.exists(samsungHealthTempDir))
        file.remove(samsungHealthTempDir, recursive = T)
      dir.create(samsungHealthTempDir)
      x <- untar(path, exdir = samsungHealthTempDir)
      extDirs <- list.files(samsungHealthTempDir)
      stopifnot(length(extDirs) == 1)
      extDir <- file.path(samsungHealthTempDir, extDirs[1])
      loadSamsungHealthFromDir(extDir)
  }
  else
    loadSamsungHealthFromDir(path)
}

#' @import jsonlite
getJson <- function(dir, context, json) {
  fromJSON(file.path(dir, context, json))
}

loadSamsungHealthFromDir <- function(dir) {
  files <- list.files(dir)
  deviceProfileFile <- files[grepl("com.samsung.health.device_profile", files)]
  deviceProfile <- load_device_profile(file.path(dir, deviceProfileFile))
  foodInfoFile <- files[grepl("com.samsung.health.food_info", files)]
  foodInfo <- load_food_info(file.path(dir, foodInfoFile))
  userProfileFile <- files[grepl("com.samsung.health.user_profile", files)]
  userProfile <- load_user_profile(file.path(dir, userProfileFile))
  weightFile <- files[grepl("com.samsung.health.weight", files)]
  weight <- load_weight(file.path(dir, weightFile))
  daySummaryFile <- files[grepl("com.samsung.shealth.activity.day_summary", files)]
  daySummary <- load_day_summary(file.path(dir, daySummaryFile))
  goalFile <- files[grepl("com.samsung.shealth.activity.goal", files)]
  goal <- load_goal(file.path(dir, goalFile))
  bestRecordsFile <- files[grepl("com.samsung.shealth.best_records", files)]
  bestRecords <- load_best_records(file.path(dir, bestRecordsFile))
  bloodPressureFile<- files[grepl('com.samsung.shealth.blood_pressure', files)]
  bloodPressure <- load_blood_pressure(file.path(dir, bloodPressureFile))
  detailsFile<- files[grepl('com.samsung.shealth.calories_burned.details', files)]
  details <- load_details(file.path(dir, detailsFile))
  exerciseFile<- files[grepl('com.samsung.shealth.exercise.\\d', files)]
  exercise <- load_exercise(file.path(dir, exerciseFile))
  weatherFile<- files[grepl('com.samsung.shealth.exercise.weather', files)]
  weather <- load_weather(file.path(dir, weatherFile))
  foodFrequentFile<- files[grepl('com.samsung.shealth.food_frequent', files)]
  foodFrequent <- load_food_frequent(file.path(dir, foodFrequentFile))
  goalHistoryFile<- files[grepl('com.samsung.shealth.goal_history', files)]
  goalHistory <- load_goal_history(file.path(dir, goalHistoryFile))
  hourlyAccumulatedActiveTimeFile<- files[grepl('com.samsung.shealth.insight.hourly_accumulated_active_time', files)]
  hourlyAccumulatedActiveTime <- load_hourly_accumulated_active_time(file.path(dir, hourlyAccumulatedActiveTimeFile))
  milestonesFile<- files[grepl('com.samsung.shealth.insight.milestones', files)]
  milestones <- load_milestones(file.path(dir, milestonesFile))
  preferencesFile<- files[grepl('com.samsung.shealth.preferences', files)]
  preferences <- load_preferences(file.path(dir, preferencesFile))
  reportFile<- files[grepl('com.samsung.shealth.report', files)]
  report <- load_report(file.path(dir, reportFile))
  rewardsFile<- files[grepl('com.samsung.shealth.rewards', files)]
  rewards <- load_rewards(file.path(dir, rewardsFile))
  leaderboardFile<- files[grepl('com.samsung.shealth.social.leaderboard', files)]
  leaderboard <- load_leaderboard(file.path(dir, leaderboardFile))
  serviceStatusFile<- files[grepl('com.samsung.shealth.social.service_status', files)]
  serviceStatus <- load_service_status(file.path(dir, serviceStatusFile))
  stepDailyTrendFile<- files[grepl('com.samsung.shealth.step_daily_trend', files)]
  stepDailyTrend <- load_step_daily_trend(file.path(dir, stepDailyTrendFile))
  stressFile<- files[grepl('com.samsung.shealth.stress.\\d', files)]
  stress <- load_stress(file.path(dir, stressFile))
  histogramFile<- files[grepl('com.samsung.shealth.stress.histogram', files)]
  histogram <- load_histogram(file.path(dir, histogramFile))
  heartRateFile<- files[grepl('com.samsung.shealth.tracker.heart_rate', files)]
  heartRate <- load_heart_rate(file.path(dir, heartRateFile))
  oxygenSaturationFile<- files[grepl('com.samsung.shealth.tracker.oxygen_saturation', files)]
  oxygenSaturation <- load_oxygen_saturation(file.path(dir, oxygenSaturationFile))
  pedometerDaySummaryFile<- files[grepl('com.samsung.shealth.tracker.pedometer_day_summary', files)]
  pedometerDaySummary <- load_pedometer_day_summary(file.path(dir, pedometerDaySummaryFile))
  pedometerEventFile<- files[grepl('com.samsung.shealth.tracker.pedometer_event', files)]
  pedometerEvent <- load_pedometer_event(file.path(dir, pedometerEventFile))
  pedometerStepCountFile<- files[grepl('com.samsung.shealth.tracker.pedometer_step_count', files)]
  pedometerStepCount <- load_pedometer_step_count(file.path(dir, pedometerStepCountFile))
  list (
    deviceProfile = deviceProfile,
    foodInfo = foodInfo,
    userProfile = userProfile,
    weight = weight,
    daySummary = daySummary,
    goal = goal,
    bestRecords = bestRecords,
    bloodPressure = bloodPressure,
    details = details,
    exercise = exercise,
    weather = weather,
    foodFrequent = foodFrequent,
    goalHistory = goalHistory,
    hourlyAccumulatedActiveTime = hourlyAccumulatedActiveTime,
    milestones = milestones,
    preferences = preferences,
    report = report,
    rewards = rewards,
    leaderboard = leaderboard,
    serviceStatus = serviceStatus,
    stepDailyTrend = stepDailyTrend,
    stress = stress,
    histogram = histogram,
    heartRate = heartRate,
    oxygenSaturation = oxygenSaturation,
    pedometerDaySummary = pedometerDaySummary,
    pedometerEvent = pedometerEvent,
    pedometerStepCount = pedometerStepCount
  )
}
