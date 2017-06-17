//
//  TBVLogger.h
//  TBVNetworking
//
//  Created by tripleCC on 8/21/16.
//  Copyright © 2016 tripleCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CocoaLumberjack/CocoaLumberjack.h>

//====================================
//    运行时更改（比如关闭debug日志）：
//    命令行输入：
//    expr TBVLogDebugEnable = NO
//====================================
CF_EXPORT BOOL TBVLogDebugEnable;
CF_EXPORT BOOL TBVLogInfoEnable;
CF_EXPORT BOOL TBVLogWarnEnable;
CF_EXPORT BOOL TBVLogErrorEnable;

#ifdef DEBUG
static const int ddLogLevel = DDLogLevelVerbose;
#else
static const int ddLogLevel = DDLogLevelError;
#endif

#if DEBUG
#define TBVLogDebug(frmt, ...) if (TBVLogDebugEnable) { DDLogDebug(frmt, ##__VA_ARGS__); }
#define TBVLogInfo(frmt, ...)  if (TBVLogInfoEnable) { DDLogInfo(frmt, ##__VA_ARGS__); }
#define TBVLogWarn(frmt, ...)  if (TBVLogWarnEnable) { DDLogWarn(frmt, ##__VA_ARGS__); }
#define TBVLogError(frmt, ...)  if (TBVLogErrorEnable) { DDLogError(frmt, ##__VA_ARGS__); }
#define TBVLogVerbose(frmt, ...)  if (TBVLogWarnEnable) { DDLogVerbose(frmt, ##__VA_ARGS__); }
#else
#define TBVLogDebug(frmt, ...) DDLogDebug(frmt, ##__VA_ARGS__)
#define TBVLogInfo(frmt, ...)  DDLogInfo(frmt, ##__VA_ARGS__)
#define TBVLogWarn(frmt, ...)  DDLogWarn(frmt, ##__VA_ARGS__)
#define TBVLogError(frmt, ...)  DDLogError(frmt, ##__VA_ARGS__)
#define TBVLogVerbose(frmt, ...)  DDLogVerbose(frmt, ##__VA_ARGS__)
#endif

@interface TBVLogger : NSObject
+ (void)configureLogger;
@end
