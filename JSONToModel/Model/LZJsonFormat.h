//
//  ESJsonFormat.h
//  ESJsonFormat
//
//  Created by 尹桥印 on 15/6/28.
//  Copyright (c) 2015年 EnjoySR. All rights reserved.
//

#import <AppKit/AppKit.h>

@class LZJsonFormat;

static LZJsonFormat *sharedPlugin;
static LZJsonFormat *instance;

@interface LZJsonFormat : NSObject

@property (nonatomic, assign,getter=isSwift) BOOL swift;

+ (instancetype)sharedPlugin;
+ (instancetype)instance;
- (id)initWithBundle:(NSBundle *)plugin;

@property (nonatomic, strong, readonly) NSBundle* bundle;
@end