# Abodo Challenge


## Getting started

Clone the project to a location on your machine.

`git clone https://github.com/jcarley/abodochallenge.git`

Change directories into the folder you cloned the project to.

`cd ~/Projects/ruby/abodochallenge`

Bootstrap the project by executing the `boostrap.sh` file in a terminal.

`./boostrap.sh`

Finally, browse to `localhost:3000/properties`


## View stats

Stats are captured when any controller action is accessed.  It uses
ActiveSupport to subscribe to an event, and then captures the metadata
from the event.  To view the stats browse to `localhost:3000/stats`
