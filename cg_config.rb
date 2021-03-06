require 'coursegen'

# Copyright string
COPYRIGHT_STRING = "Copyright (2014-2015) R. Pito Salas, pitosalas@gmail.com"

# Bucket Deployment of the course
AWS_BUCKET = "cosi165a-f2015"

# Course short name
COURSE_SHORT_NAME = "Cosi 165a"
COURSE_LONG_NAME = "Software Entrepreneurship"
COURSE_ABBREV = "cs165"

# Schedule information. Note that Monday is day 0
LECTURES_SCHEDULE_CONFIG = ScheduleDef.new(
    first_day: "aug-27-2015",
    weekdays: [:tuesday, :thursday],
    number: 26,
    skips: ["sep-10-2015", "sep-15-2015", "sep-29-2015", "nov-26-2015"],
    start_time: "15:30",
    end_time: "16:50")

# Sections in the right hand margin of the page
SECTION_CONFIG = [
  SectionDef.new("Welcome", "welcome", type: :section, collapsed: false, bullet: :star),
  SectionDef.new("Lectures", "lectures", type: :lecture, schedule: LECTURES_SCHEDULE_CONFIG, bullet: :dash),
  SectionDef.new("Background", "background", type: :section, collapsed: false),
  SectionDef.new("Topics", "topics", hidden: true, type: :section),
  SectionDef.new("Extras", "extras", hidden: true, type: :section)
]

# Options are:
# bullet_style: css style for each bullet
STYLING_CONFIG = {bullet_style: "\"font-size: 60%; width: 10px; color: grey\""}
