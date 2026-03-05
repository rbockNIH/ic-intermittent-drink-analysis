# Intially created by Roland Bock NIH/NIMH|NIAAA 2019
#
# This file specifies the column structure of each IntelliCage data file for the exported (using the
# TSE Analyzer program) and for importing data tables directly from the ziped archives.

# a file to define table specifications for the Intellicages data files
library(readr)

# define the csv structure of the Animal.txt file from the Analyzer exported files
mouse.col.spec <<- cols(
  .default = col_double(),
  Animal = col_character(),
  Tag = col_character(),
  Sex = col_character(),
  Group = col_character(),
  Notes = col_logical(),
  FirstVisitDateTime = col_datetime(format = ""),
  LastVisitDateTime = col_datetime(format = ""))

# define the csv structure for the Animal.txt file in the zip archive
mouseAR.col.spec <<- cols(
  .default = col_character(),
  AnimalName = col_character(),
  AnimalTag = col_character(),
  Sex = col_character(),
  GroupName = col_character(),
  AnimalNotes = col_character()
)

# rename the columns from the archived Animal.txt file
mouseAR.col.names <<- c(
  Animal = "AnimalName",
  Tag = "AnimalTag",
  Group = "GroupName",
  Note = "AnimalNotes"
)

# setup the column specification for the visits.txt file to ensure consistency
## to avoid potential clashes with the scales package that masks the col_factor()
## from the readr package, it is used here explicitly.
visits.col.spec <<- cols(
  .default = col_character(),
  VisitID = col_integer(),
  VisitOrder = col_integer(),
  Animal = col_character(),
  Tag = col_character(),
  Sex = col_character(),
  Group = col_character(),
  Module = col_character(),
  Cage = col_integer(),
  Corner = col_integer(),
  CornerCondition = readr::col_factor(),
  PlaceError = col_logical(),
  SideErrors = col_double(),
  TimeErrors = col_double(),
  ConditionErrors = col_double(),
  NosepokeNumber = col_double(),
  NosepokeDuration = col_double(),
  LickNumber = col_double(),
  LickDuration = col_double(),
  LickContactTime = col_double(),
  StartDate = col_date(),
  StartTime = col_time(),
  StartTimecode = col_double(),
  EndDate = col_date(),
  EndTime = col_time(),
  EndTimecode = col_double(),
  VisitDuration = col_double(),
  Session = col_integer()
)

# column specification for the archived visits.txt within the Intellicage folder
visitsAR.col.spec <<- cols(
  .default = col_character(),
  VisitID = col_integer(),
  AnimalTag = col_character(),
  Start = col_datetime(format = "%Y-%m-%d %H:%M:%OS"),
  End = col_datetime(format = "%Y-%m-%d %H:%M:%OS"),
  ModuleName = col_character(),
  Cage = col_integer(),
  Corner = col_integer(),
  CornerCondition = col_integer(),
  PlaceError = col_logical(),
  AntennaNumber = col_skip(),
  AntennaDuration = col_skip(),
  PresenceNumber = col_skip(),
  PresenceDuration = col_skip(),
  VisitSolution = col_skip(),
  LickNumber = col_double(),
  LickContactTime = col_double(),
  LickDuration = col_double()
)

visitsAR.col.name <<- c(
  Tag = "AnimalTag",
  Module = "ModuleName"
)

# define the column specifications for the Nosepoke.txt files
pokes.col.spec <<- cols(
  .default = col_integer(),
  VisitID = col_integer(),
  NosepokeOrder = col_integer(),
  Animal = col_character(),
  Tag = col_character(),
  Sex = col_character(),
  Group = col_character(),
  Cage = col_integer(),
  Corner = col_integer(),
  Side = col_integer(),
  SideError = col_logical(),
  TimeError = col_logical(),
  ConditionError = col_logical(),
  NosepokeDuration = col_double(),
  LickNumber = col_double(),
  LickDuration = col_double(),
  LickContactTime = col_double(),
  StartDate = col_date(),
  StartTime = col_time(),
  StartTimecode = col_double(),
  EndDate = col_date(),
  EndTime = col_time(),
  EndTimecode = col_double(),
  LickStartTime = col_datetime()
)

# define the columns specifications for the Nosepokes.txt within the zipped archive.
pokesAR.col.spec <<- cols(
  .default = col_integer(),
  Start = col_datetime(format = "%Y-%m-%d %H:%M:%OS"),
  End = col_datetime(format = "%Y-%m-%d %H:%M:%OS"),
  SideError = col_logical(),
  TimeError = col_logical(),
  ConditionError = col_logical(),
  LickContactTime = col_double(),
  LickDuration = col_double(),
  AirState = col_logical(),
  DoorState = col_logical(),
  LED1State = col_logical(),
  LED2State = col_logical(),
  LED3State = col_logical(),
  LickStartTime = col_datetime(format = "%Y-%m-%d %H:%M:%OS")
)

# define the column specs for the Environment.txt files. They contain
# luminescence and temperature information. This specification also works for
# the archive files.
environment.col.spec <<- cols(
  .default = col_integer(),
  DateTime = col_datetime(),
  Temperature = col_double(),
  Illumination = col_integer(),
  Cage = col_integer()
)

# define the column specs for the HardwareEvents.txt files. They contain
# the events for door opening and closing and air puffs.
hardware.col.spec <<- cols(
  .default = col_integer(),
  DateTime = col_datetime(format = "%Y-%m-%d %H:%M:%OS"),
  Type = col_character(),
  Cage = col_integer(),
  Corner = col_integer(),
  Side = col_integer(),
  State = col_logical()
)

# define the hardware events columns for the reading directly from the archive
# file.
# The hardware events are encoded as 0 = Air, 1 = Door and 2 = LED
hardwareAR.col.spec <<- cols(
  .default = col_integer(),
  DateTime = col_datetime(format = "%Y-%m-%d %H:%M:%OS")
)

# in this experiment design, we are only using boolean reporters, so I am treating
#  all as logical.
reportersBool.col.spec <<- cols(
  .default = col_logical(),
  VisitID = col_integer()
)
