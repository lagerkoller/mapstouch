This application lets you use panning and zooming with multi-touch in the Google Maps Flash API: http://www.youtube.com/watch?v=L0Fp_0TZojg

**The first thing you need to do** is to register your own Google Maps API key. Refer to the comment in GoogleMapsPureAS on how to choose the right url name to make sure you do not have ugly debug strings (like in the youtube video above) on your screen.

**The second thing you need to do** is to download the Google Maps for Flash API from [here](http://maps.googleapis.com/maps/flash/release/sdk.zip). You have to include the swc file from the folder _lib_ of the uncompressed _sdk.zip_ file either in your Flash GUI or put it into the _libs_ folder of your Flex Builder project.

**More details** in the blog post about this project: [Google Maps Multi-touch Actionscript Code](http://johannesluderschmidt.de/google-maps-multi-touch-actionscript-code/87/)

The Google Maps Flash API can be found here: http://code.google.com/apis/maps/documentation/flash/

The code version of the touchlib's actionscript library can be found here: http://code.google.com/p/touchlib/source/browse/#svn/trunk/AS3%3Fstate%3Dclosed

The binary version of the touchlib can be found here: http://nuigroup.com/touchlib/.

For the touch signals TUIO is used from the nuigroup touchlib project: http://reactable.iua.upf.edu/pdfs/GW2005-KaltenBoverBencinaConstanza.pdf

**Please beware that executing Google Maps on a local computer or in the intranet seems to be not committed according to Google’s license agreements. You should not use it for commercial purposes within a local installation.**