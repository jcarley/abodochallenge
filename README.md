# Abodo Challenge


## Getting started

The project currently requires ruby >=2.5.1.  It should work on other rubies,
but this hasnt' been tested.  The bootstrap script will check for the ruby version.

Clone the project to a location on your machine.

`git clone https://github.com/jcarley/abodochallenge.git`

Change directories into the folder you cloned the project to.  On my machine this was `cd ~/Projects/ruby/abodochallenge`.
You should change this to what ever the location is on your machine.

Bootstrap the project by executing the `boostrap.sh` file in a terminal.

`./boostrap.sh`

Finally, browse to `localhost:3000/properties`


## View stats

Stats are captured when any controller action is accessed.  It uses
ActiveSupport to subscribe to an event, and then captures the metadata
from the event.  To view the stats browse to `localhost:3000/stats`.  You can
add to the stats by refreshing any page, for example, `localhost:3000/properties`.
