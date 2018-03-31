//
//  TLCommonPlugin.h
//  TLJSOCCordova
//
//  Created by lichuanjun on 2018/3/28.
//  Copyright © 2018年 lichuanjun. All rights reserved.
//

#import "CDVPlugin.h"

@interface TLCommonPlugin : CDVPlugin

- (void)scan:(CDVInvokedUrlCommand *)command;

- (void)location:(CDVInvokedUrlCommand *)command;

- (void)pay:(CDVInvokedUrlCommand *)command;

- (void)share:(CDVInvokedUrlCommand *)command;

- (void)changeColor:(CDVInvokedUrlCommand *)command;

- (void)shake:(CDVInvokedUrlCommand *)command;

- (void)playSound:(CDVInvokedUrlCommand *)command;

@end
