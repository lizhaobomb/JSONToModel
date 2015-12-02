//
//  ViewController.m
//  JSONToModel
//
//  Created by lizhao on 15/12/1.
//  Copyright © 2015年 lizhao. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}
- (IBAction)validateJson:(NSButton *)sender {
    NSLog(@"button clicked!!!");
    NSString *jsonString = [[self.inputJsonTextView string] stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSLog(@"json = %@",jsonString);
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    
    NSError *err = nil;
    
    id dicOrArray = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&err];
    if (err) {
        NSLog(@"err = %@", [err localizedDescription]);
    } else {
        NSLog(@"dicOrArray = %@", dicOrArray);
    }
}

@end
