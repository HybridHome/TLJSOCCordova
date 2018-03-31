//
//  TLAudioPlayer.h
//  TLJSOCCordova
//
//  Created by lichuanjun on 2018/3/29.
//  Copyright © 2018年 lichuanjun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface TLAudioPlayer : NSObject

+ (AVAudioPlayer *)playMusic:(NSString *)fileName;

+ (void)pauseMusic:(NSString *)fileName;

+ (void)stopMusic:(NSString *)fileName;


+ (void)playSound:(NSString *)soundName;

+ (void)disposeSound:(NSString *)soundName;

@end
