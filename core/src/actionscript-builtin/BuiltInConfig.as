package  {
//import org.flowplayer.rtmp.RTMPStreamProvider;
//import org.flowplayer.controls.Controls;
//    import org.flowplayer.shareembed.ShareEmbed;
//    import org.flowplayer.pseudostreaming.PseudoStreaming;
    
public class BuiltInConfig {
//    private var rtmp:org.flowplayer.rtmp.RTMPStreamProvider;
//    private var controls:org.flowplayer.controls.Controls;
//    private var share:org.flowplayer.shareembed.ShareEmbed;
//    private var pseudo:org.flowplayer.pseudostreaming.PseudoStreamProvider;

//    [Embed(source="../assets/play.png")]
//    public var PlayButton:Class;
//
//    [Embed(source="../assets/play.png")]
//    public var Logo:Class;

    public static const videoconfig:Object = { 
        "plugins": {
            "controls": {
                "autoHide": true
            }
        },
        "clip": {
            "autoPlay": false,
            "autoBuffering": true,
            "scaling": "fit",
            "onMetaData": "function(clip) {\
                console.log(clip);\
                if (clip.mvideo.autosize && !clip.mvideo.resized) {\
                    clip.mvido.resized = true;\
                    alert(\"metadata!!! \"+clip.width+' '+clip.height+' '+JSON.stringify(clip.metaData));\
                    if (typeof(clip.metaData.width) == 'undefined' || typeof(clip.metaData.height) == 'undefined') {\
                        // bad luck, we have to guess - we may not get metadata at all\
                        var width = clip.width;\
                        var height = clip.height;\
                    } else {\
                        var width = clip.metaData.width;\
                        var height = clip.metaData.height;\
                    }\
                    var minwidth = 300; // controls are messed up in smaller objects\
                    if (width < minwidth) {\
                        height = (height * minwidth) / width;\
                        width = minwidth\
                    }\
\
                    var object = this._api();\
                    object.width = width;\
                    object.height = height;\
                }\
            }"
        }
    }

    public static const audioconfig:Object = { 
        "plugins": {
            "controls": {
                "autoHide": false,
                "fullscreen": false,
                "next": false,
                "previous": false,
                "scrubber": true,
                "play": true,
                "pause": true,
                "volume": true,
                "mute": false,
                "backgroundGradient": [0.5,0,0.3]
            }
        },
        "clip": {
            "provider": "audio",
            "autoPlay": false
        }
    }

    public static const config:Object = { 
       "plugins": {
//        "pseudo": {
//              "url": 'org.flowplayer.pseudostreaming.PseudoStreamProvider'
//        },
//        "rtmp": {
//            "url": 'org.flowplayer.rtmp.RTMPStreamProvider'
//        },
//        "controls": {
//            "url": 'org.flowplayer.controls.Controls'
//		}
//           viral: {
//               url: 'org.flowplayer.shareembed.ShareEmbed'
           }
       }
    }; 
}
