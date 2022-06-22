# The method will help the user to track tasks. 
# It will return true if it detects "#TODO" in the string
# It will return false if it  does not detect "#TODO"

# Structure
tracked_task = task_tracker(to_do)

to_do: a string (e.g. "#TODO something")


# My tests:

task_tracker("#TODO: something") => true
task_tracker("I need #TODO something") => true
task_tracker("I need #todo something") => false
task_tracker("this is a task") => false
task_tracker("TODO: something") => false