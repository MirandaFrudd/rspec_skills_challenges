# Helps a user to manage their time by accepting any items that contain the string #TODO


# `time_management` returns the rough ammount of time it will take to read the string
managed_time = time_management(string)

# TESTS: 
time_management("This is a really short string") => "2 seconds"

time_management("This is a slightly longer string, but still not very long") => "3 seconds"

time_management("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nunc risus, lacinia id vestibulum sit amet, tincidunt in leo. Donec eu dui vel neque bibendum pulvinar. Vivamus suscipit est sit amet lobortis elementum. Cras placerat, augue sit amet gravida scelerisque, sapien ipsum dignissim nisl, et cursus eros neque consequat tortor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris suscipit imperdiet lacinia. Pellentesque euismod elit nec tincidunt placerat. Nullam sollicitudin sem ac erat lobortis suscipit. Etiam feugiat turpis vitae neque consequat faucibus et vel risus. Vestibulum lacinia quis nulla nec ornare. Pellentesque fermentum ex sit amet.") => "33 seconds"

