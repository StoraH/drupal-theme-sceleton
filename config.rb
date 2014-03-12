# Change this to :production when ready to deploy the CSS to the live server.
environment = :development
#environment = :production

# In development, we can turn on the FireSass-compatible debug_info.
firesass = true
#firesass = false


# Location of the theme's resources.
http_path            = "/"               # Set this to the root of your project when deployed:
images_dir           = "images"          # The directory where the images are kept.
generated_images_dir = "images/sprite"   # The directory where generated images are kept.
sass_dir             = "styles/scss"      # The directory where the sass stylesheets are kept.
css_dir              = "styles/css"       # The full path to where css stylesheets are kept


# Require any additional compass plugins here.
require 'sass-globbing'
require 'susy'
require "breakpoint"

##
## You probably don't need to edit anything below this.
##

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = (environment == :development) ? :expanded : :compressed

# To enable relative paths to assets via compass helper functions. Uncomment:
relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false

# Pass options to sass. For development, we turn on the FireSass-compatible
# debug_info if the firesass config variable above is true.
sass_options = (environment == :development && firesass == true) ? {:debug_info => true} : {}
