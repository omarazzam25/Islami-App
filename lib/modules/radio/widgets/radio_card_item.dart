import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:islami/core/settings/provider/radio_manager_provider.dart';
import 'package:islami/core/them/app_color.dart';
import 'package:provider/provider.dart';

import '../../../core/gen/assets.gen.dart';

class RadioCardItem extends StatefulWidget {

   RadioCardItem({super.key , required this.name, required this.url,});

  String name;
  String url;
  bool isVolumeUp = true;



  @override
  State<RadioCardItem> createState() => _RadioCardItemState();
}

class _RadioCardItemState extends State<RadioCardItem> {
  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return Consumer<RadioManagerProvider>(
        builder:
            ( context, Provider ,  child) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 133,
                  width: .infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                        color: AppColor.primary,
                    image: DecorationImage(image: AssetImage(Assets.images.mosqueCardRadio.path,),colorFilter:ColorFilter.mode(AppColor.black.withValues(alpha: 0.2), BlendMode.srcIn) ,fit: BoxFit.cover)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13.0),
                    child: Column(
                      children: [
                        Text(widget.name, style: them.textTheme.titleLarge,),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            GestureDetector(
                                onTap: (){
                                  Provider.play(widget.url);

                                },
                                child:Provider.isPlaying && Provider.currentPlayingUrl == widget.url ? Icon(Icons.pause,size: 40,) : Assets.icons.playRadioIcon.svg()
                            ),
                            Gap(20),
                            GestureDetector(
                                onTap: (){
                                  if(Provider.currentPlayingUrl == widget.url && Provider.isPlaying){
                                Provider.stop();
                                  }
                                  },
                                child: Icon(Icons.stop,size: 40,)
                            ),
                            Gap(20),

                            // GestureDetector(
                            //     onTap:(){
                            //       widget.isVolumeUp = !widget.isVolumeUp;
                            //      Provider.setVolume(widget.isVolumeUp ? 2 : 0 );
                            //      setState(() {
                            //
                            //      });
                            //     },
                            //     child:widget.isVolumeUp ? Assets.icons.volumeHigh.svg() : Assets.icons.volumeMute.svg()
                            // ),

                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );


            }
            );
  }
}
