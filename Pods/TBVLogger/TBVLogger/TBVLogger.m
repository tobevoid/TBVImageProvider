//
//  TBVLogger.m
//  TBVNetworking
//
//  Created by tripleCC on 8/21/16.
//  Copyright © 2016 tripleCC. All rights reserved.
//
#import <CocoaLumberjack/CocoaLumberjack.h>
#import "TBVLogger.h"
#import "TBVLoggerFormater.h"

BOOL TBVLogDebugEnable  = YES;
BOOL TBVLogInfoEnable   = YES;
BOOL TBVLogWarnEnable   = YES;
BOOL TBVLogErrorEnable  = YES;

@implementation TBVLogger

+ (void)configureLogger {
    // formatter
    TBVLoggerFormater *loggerFormatter = [[TBVLoggerFormater alloc] init];
    [[DDTTYLogger sharedInstance] setLogFormatter:loggerFormatter];
    
    // fileLogger
    DDFileLogger* fileLogger = [[DDFileLogger alloc] init];
    fileLogger.rollingFrequency = 60 * 60 * 24; // 24 hour rolling
    fileLogger.logFileManager.maximumNumberOfLogFiles = 7;
    fileLogger.logFormatter = loggerFormatter;
    [DDLog addLogger:fileLogger];
    
    /* XcodeColors
     * 1、In Xcode bring up the Scheme Editor (Product -> Edit Scheme...)
     * 2、Select "Run" (on the left), and then the "Arguments" tab
     * 3、Add a new Environment Variable named "XcodeColors", with a value of "YES"
     */
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    [DDTTYLogger sharedInstance].colorsEnabled = YES;
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor redColor]
                                     backgroundColor:nil
                                             forFlag:DDLogFlagInfo];
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor orangeColor]
                                     backgroundColor:nil
                                             forFlag:DDLogFlagWarning];
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor greenColor]
                                     backgroundColor:nil
                                             forFlag:DDLogFlagInfo];
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor cyanColor]
                                     backgroundColor:nil
                                             forFlag:DDLogFlagDebug];
}
@end
