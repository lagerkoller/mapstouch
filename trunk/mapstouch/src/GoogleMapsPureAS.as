package {
	import com.google.maps.LatLng;
	import com.google.maps.MapEvent;
	import com.google.maps.MapType;
	import com.google.maps.controls.MapTypeControl;
	import com.google.maps.controls.PositionControl;
	import com.google.maps.controls.ZoomControl;
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;
	
	import tuio.TUIO;

	public class GoogleMapsPureAS extends Sprite
	{
		//use my extended touch map instead of Google's
		private var map:TappableMap;
		
		public function GoogleMapsPureAS()
		{
			addEventListener(Event.ADDED_TO_STAGE, onAdd);
			addEventListener(Event.RESIZE, resizeMap);
			map = new TappableMap();
			
//			put your own google maps key in map.key. you get it here: http://code.google.com/apis/maps/signup.html
//			use the qualified name of your computer e.g. http://johannes.local/googleMapsMultitouch
//			and not http://localhost/googleMapsMultitouch to get rid of the red DEBUG string on the screen
//			additionally, opening the swf in the Flash Player is not possible if you don't want to see
//			the DEBUG string. open it in your browser under the url where your google maps key has been
//			registered for!!!
			map.key = "";
   			map.addEventListener(MapEvent.MAP_READY, onMapReady);
    		addChild(map);
		}
		private function onAdd(event:Event):void{
			//open up connection to TUIO server
			TUIO.init(this, "localhost",3000,"",true);
			map.setSize(new Point(1024, 768));
		}
		private function onMapReady(event:MapEvent):void {
			//use my living place in wiesbaden as your center
		    map.setCenter(new LatLng(50.08474,8.237396), 14, MapType.NORMAL_MAP_TYPE);
		    
		    //set some control widgets on the map. they are not touchable, only clickable
		    map.enableScrollWheelZoom();
		  	map.addControl(new ZoomControl());
			map.addControl(new PositionControl());
		  	map.addControl(new MapTypeControl());
			
			//start of with the satellite view
		    map.setMapType(MapType.SATELLITE_MAP_TYPE);
		}
		public function resizeMap(event:Event):void {
			map.setSize(new Point(width, height));
		}
	}
}
