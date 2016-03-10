//
//  LZJsonFormatCommonDefine.h
//  JSONToModel
//
//  Created by lizhao on 16/3/4.
//  Copyright © 2016年 lizhao. All rights reserved.
//

#ifndef LZJsonFormatCommonDefine_h
#define LZJsonFormatCommonDefine_h


#if 1
#define __DEBUG__
#endif

#ifdef __DEBUG__
#define NSLog(...) NSLog(__VA_ARGS__)
#else
#define NSLog(...) do{} while(0)
#endif

#define ESFormatResultNotification @"ESFormatResultNotification"

#define ESRootClassName @"ESRootClass"

#define ESItemClassName @"ESItemClass"

#define ESArrayKeyName @"esArray"

#define ESJsonFormatPluginPath [[NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"Developer/Shared/Xcode/Plug-ins/ESJsonFormat.xcplugin"]

#define ESUppercaseKeyWords @[@"id"]


#endif /* LZJsonFormatCommonDefine_h */
