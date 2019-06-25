# Bands On Rails
An open source band management application in Rails
* Manage Song information, charts, YoutTube links, with performance notes, and collect songs together as SetLists
* Gigs and basic payment tracking.

## Worklist (features in active development)
### Done
* Basic user management with Devise
* (Very) rough CSV import for existing band repertoire (command line tool at this stage)
* Song model
* SetList model (SetLists `has_many` Songs)
* Venue model
* Gig model (gigs have a Venue and a SetList)

### To Do
* Add Songs to a SetList
* Copy a SetList to a new one
* Drag-and-drop to add Songs to a SetList
* Google Maps link for Venues
* Song search/filter in list
* Pick List for Song.key
* Tag handling for Songs, SetLists, Gigs, Venues etc
* Sidebar
* humanize dates in listings

## Roadmap (features it would be nice to have but not currently planned)
* Performance Mode - steps through lyrics and charts in SetList order, displaying these as appropriate on mobile devices for the band
* Practice Mode - highlights songs with least practice or not recently Gigged
* MarkDown based Song Editor instead of external links

## Useful links
https://github.com/pcreux/csv-importer
https://github.com/seyhunak/twitter-bootstrap-rails

## Development Links
ngrok local log panel http://localhost:4040
mailcatcher
