//
//  TBVAssetsPickerManager.h
//  PhotoBrowser
//
//  Created by tripleCC on 8/24/16.
//  Copyright © 2016 tripleCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TBVAssetsManagerProtocol.h"

@interface TBVAssetsPickerManager : NSObject <TBVAssetsManagerProtocol>
+ (TBVAssetsPickerManager *)manager;
@property (assign, nonatomic, readonly) BOOL photoKitAvailable;
@end
