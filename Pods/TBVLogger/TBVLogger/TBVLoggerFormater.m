//
//  TBVLoggerFormater.m
//  TBVLogger
//
//  Created by tripleCC on 2017/6/17.
//  Copyright © 2017年 tripleCC. All rights reserved.
//

#import "TBVLoggerFormater.h"

@implementation TBVLoggerFormater
- (NSString *)formatLogMessage:(DDLogMessage *)logMessage {
    NSString *logLevel = nil;
    switch (logMessage.flag)
    {
        case DDLogFlagError:
            logLevel = @"<ERROR> ";
            break;
        case DDLogFlagWarning:
            logLevel = @"<WARN>  ";
            break;
        case DDLogFlagInfo:
            logLevel = @"<INFO>  ";
            break;
        case DDLogFlagDebug:
            logLevel = @"<DEBUG> ";
            break;
        case DDLogFlagVerbose:
            logLevel = @"<VBOSE> ";
            break;
    }
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    NSString *currentDate = [dateFormatter stringFromDate:[NSDate date]];
    
    NSString *formatStr = [NSString stringWithFormat:@"%@ %@ %@[%d]: %@",currentDate,
                           logLevel, logMessage.fileName,
                           (int)logMessage.line, logMessage.message];
    return formatStr;
}

@end
