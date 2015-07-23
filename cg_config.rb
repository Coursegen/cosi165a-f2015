require 'coursegen'

# Copyright string
COPYRIGHT_STRING = "Copyright (2014-2016) R. Pito Salas, pitosalas@gmail.com"

# Bucket Deployment of the course
AWS_BUCKET = "cosi165-2015"

# Course short name
COURSE_SHORT_NAME = "Cosi 165a"
COURSE_LONG_NAME = "Software Entrepreneurship"

# Schedule information. Note that Monday is day 0
LECTURES_SCHEDULE_CONFIG = ScheduleDef.new(
    first_day: "sep-3-2014",
    weekdays: [:monday, :wednesday],
    number: 26,
    skips: ["oct-13-2014", "nov-26-2014"])


# Sections in the right hand margin of the page
SECTION_CONFIG = [
  SectionDef.new("Welcome", "welcome", type: :section, collapsed: false, bullet: :star),
  SectionDef.new("Lectures", "lectures", type: :lecture, schedule: LECTURES_SCHEDULE_CONFIG, bullet: :dash),
  SectionDef.new("Background", "background", type: :section, collapsed: false),
  SectionDef.new("Topics", "topics", hidden: true, type: :section),
  SectionDef.new("Hidden", "hidden", hidden: true, type: :section)
]

# Options are:
# bullet_style: css style for each bullet
STYLING_CONFIG = {bullet_style: "\"font-size: 60%; width: 10px; color: grey\""}
