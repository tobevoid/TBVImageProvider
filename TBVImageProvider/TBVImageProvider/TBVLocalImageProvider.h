//
//  TBVLocalImageProvider.h
//  TBVImageBrowser
//
//  Created by tripleCC on 9/13/16.
//  Copyright © 2016 tripleCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TBVImageProviderProtocol.h"
CF_EXPORT NSString *const kTBVLocalImageProviderIdentifier;
@interface TBVLocalImageProvider : NSObject <TBVImageProviderProtocol>
@end
