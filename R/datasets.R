genericSamsungHealthCSVLoader <- function(path) {
  read.csv(path, stringsAsFactors = F, skip = 1)
}

#' @export
#' @name load_device_profile
#' @title Load Device Profile
#' @description Load a device profile CSV from Samsung Health Data.
#' @param path path to the CSV file
load_device_profile <- genericSamsungHealthCSVLoader

#' @export
#' @name load_food_info
#' @title Load Food Information
#' @description Loads food information CSV from Samsung Health Data.
#' @param path path to CSV file
load_food_info <- genericSamsungHealthCSVLoader

#' @export
#' @name load_user_profile
#' @title Load User Profile Information
#' @description Loads user profile CSV from Samsung Health Data.
#'    Note: does not load dashboard config yet.
#' @param path path to CSV file
load_user_profile <- genericSamsungHealthCSVLoader

#' @export
#' @name load_weight
#' @title Load Weight Information
#' @description Loads weight CSV from Samsung Health Data. Note that
#'    Samsung reports weight in kilograms, even if the data was input
#'    in Pounds.
#' @param path path to CSV file
load_weight <- genericSamsungHealthCSVLoader

#' @export
#' @name load_day_summary
#' @title Load Day Summary Information
#' @description Loads day summary CSV from Samsung Health Data.
#'    Note: does not load extra data yet.
#' @param path path to CSV file
load_day_summary <- genericSamsungHealthCSVLoader

#' @export
#' @name load_goal
#' @title Load Goal Information
#' @description Loads goals CSV from Samsung Health Data.
#' @param path path to CSV file
load_goal <- genericSamsungHealthCSVLoader

#' @export
#' @name load_best_records
#' @title Load Best Records Information
#' @description Loads best records CSV from Samsung Health Data.
#' @param path path to CSV file
load_best_records <- genericSamsungHealthCSVLoader

#' @export
#' @name load_blood_pressure
#' @title Load Blood Pressure
#' @description Loads Blood Pressure CSV from Samsung Health Data.
#' @param path path to CSV file
load_blood_pressure <- genericSamsungHealthCSVLoader

#' @export
#' @name load_details
#' @title Load details
#' @description Loads details CSV from Samsung Health Data.
#' @param path path to CSV file
load_details <- genericSamsungHealthCSVLoader

#' @export
#' @name load_exercise
#' @title Load exercise
#' @description Loads exercise CSV from Samsung Health Data.
#' @param path path to CSV file
load_exercise <- genericSamsungHealthCSVLoader

#' @export
#' @name load_weather
#' @title Load weather
#' @description Loads weather CSV from Samsung Health Data.
#' @param path path to CSV file
load_weather <- genericSamsungHealthCSVLoader

#' @export
#' @name load_food_frequent
#' @title Load Frequent Food
#' @description Loads Frequent Food CSV from Samsung Health Data.
#' @param path path to CSV file
load_food_frequent <- genericSamsungHealthCSVLoader

#' @export
#' @name load_goal_history
#' @title Load Goal History
#' @description Loads Goal History CSV from Samsung Health Data.
#' @param path path to CSV file
load_goal_history <- genericSamsungHealthCSVLoader

#' @export
#' @name load_hourly_accumulated_active_time
#' @title Load Hourly Accumulated Active Time
#' @description Loads Hourly Accumulated Active Time CSV from Samsung Health Data.
#' @param path path to CSV file
load_hourly_accumulated_active_time <- genericSamsungHealthCSVLoader

#' @export
#' @name load_milestones
#' @title Load milestones
#' @description Loads milestones CSV from Samsung Health Data.
#' @param path path to CSV file
load_milestones <- genericSamsungHealthCSVLoader

#' @export
#' @name load_preferences
#' @title Load preferences
#' @description Loads preferences CSV from Samsung Health Data.
#' @param path path to CSV file
load_preferences <- genericSamsungHealthCSVLoader

#' @export
#' @name load_report
#' @title Load report
#' @description Loads report CSV from Samsung Health Data.
#' @param path path to CSV file
load_report <- genericSamsungHealthCSVLoader

#' @export
#' @name load_rewards
#' @title Load rewards
#' @description Loads rewards CSV from Samsung Health Data.
#' @param path path to CSV file
load_rewards <- genericSamsungHealthCSVLoader

#' @export
#' @name load_leaderboard
#' @title Load leaderboard
#' @description Loads leaderboard CSV from Samsung Health Data.
#' @param path path to CSV file
load_leaderboard <- genericSamsungHealthCSVLoader

#' @export
#' @name load_service_status
#' @title Load Service Status
#' @description Loads Service Status CSV from Samsung Health Data.
#' @param path path to CSV file
load_service_status <- genericSamsungHealthCSVLoader

#' @export
#' @name load_step_daily_trend
#' @title Load Daily Step Trend
#' @description Loads Daily Step Trend CSV from Samsung Health Data.
#' @param path path to CSV file
load_step_daily_trend <- genericSamsungHealthCSVLoader

#' @export
#' @name load_stress
#' @title Load stress
#' @description Loads stress CSV from Samsung Health Data.
#' @param path path to CSV file
load_stress <- genericSamsungHealthCSVLoader

#' @export
#' @name load_histogram
#' @title Load histogram
#' @description Loads histogram CSV from Samsung Health Data.
#' @param path path to CSV file
load_histogram <- genericSamsungHealthCSVLoader

#' @export
#' @name load_heart_rate
#' @title Load Heart Rate
#' @description Loads Heart Rate CSV from Samsung Health Data.
#' @param path path to CSV file
load_heart_rate <- genericSamsungHealthCSVLoader

#' @export
#' @name load_oxygen_saturation
#' @title Load Oxygen Saturation
#' @description Loads Oxygen Saturation CSV from Samsung Health Data.
#' @param path path to CSV file
load_oxygen_saturation <- genericSamsungHealthCSVLoader

#' @export
#' @name load_pedometer_day_summary
#' @title Load Daily Pedometer Summary
#' @description Loads Daily Pedometer Summary CSV from Samsung Health Data.
#' @param path path to CSV file
load_pedometer_day_summary <- genericSamsungHealthCSVLoader

#' @export
#' @name load_pedometer_event
#' @title Load Pedometer Events
#' @description Loads Pedometer Events CSV from Samsung Health Data.
#' @param path path to CSV file
load_pedometer_event <- genericSamsungHealthCSVLoader

#' @export
#' @name load_pedometer_step_count
#' @title Load Pedometer Step Count
#' @description Loads Pedometer Step Count CSV from Samsung Health Data.
#' @param path path to CSV file
load_pedometer_step_count <- genericSamsungHealthCSVLoader

