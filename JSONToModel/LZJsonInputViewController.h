//
//  ViewController.h
//  JSONToModel
//
//  Created by lizhao on 15/12/1.
//  Copyright © 2015年 lizhao. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@protocol ESInputJsonControllerDelegate <NSObject>

@optional
-(void)windowWillClose;
@end


@interface LZJsonInputViewController : NSWindowController

@property (nonatomic, weak) id<ESInputJsonControllerDelegate> delegate;

@property (unsafe_unretained) IBOutlet NSTextView *inputJsonTextView;

@end

