//
//  ViewController.m
//  JSONToModel
//
//  Created by lizhao on 15/12/1.
//  Copyright © 2015年 lizhao. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *path;

@end

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
    [self saveFile];
    return;
    NSString *jsonString = [[self.inputJsonTextView string] stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSLog(@"json = %@",jsonString);
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    
    NSError *err = nil;
    
    id dicOrArray = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&err];
    if (err) {
        NSLog(@"err = %@", [err localizedDescription]);
        [self clickbtnAddAdapter:err];
    } else {
        NSLog(@"dicOrArray = %@", dicOrArray);
    }
}


- (void)clickbtnAddAdapter:(NSError *)error
{
    NSAlert *alert = [NSAlert alertWithError:error];
    [alert runModal];
}

- (void)saveFile {
    NSSavePanel*    panel = [NSSavePanel savePanel];
    [panel setNameFieldStringValue:@"test.onecodego"];
    [panel setMessage:@"Choose the path to save the document"];
    [panel setAllowsOtherFileTypes:YES];
    [panel setAllowedFileTypes:@[@"onecodego"]];
    [panel setExtensionHidden:YES];
    [panel setCanCreateDirectories:YES];
    [panel beginSheetModalForWindow:[[NSApplication sharedApplication] keyWindow] completionHandler:^(NSInteger result){
        if (result == NSFileHandlingPanelOKButton)
        {
            NSString *path = [[panel URL] path];
            [@"onecodego" writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:nil];
        }
    }];}

-(NSString *)getFullpath {
    NSOpenPanel *panel = [NSOpenPanel openPanel];
    NSArray* fileTypes = [[NSArray alloc] initWithObjects:@"txt",@"doc", nil];
    [panel setMessage:@"select a file"];
    [panel setPrompt:@"OK"];
    [panel setCanChooseDirectories:NO];
    [panel setCanCreateDirectories:YES];
    [panel setCanChooseFiles:YES];
    [panel setAllowsMultipleSelection:YES];
    
    [panel setAllowedFileTypes:fileTypes];
    NSString *path_all=@"";
    NSArray *select_files;
    NSInteger result = [panel runModal];
    if (result ==NSFileHandlingPanelOKButton)
    {
        select_files = [panel URLs] ;
        for (int i=0; i<select_files.count; i++)
        {
            
            NSURL *fileUrl = select_files[i];
            NSString *path = [fileUrl path];
            NSString *lastPath = [path lastPathComponent];
            path_all= [select_files objectAtIndex:i];
            //            self.path = [self.path stringByAppendingString:path_all];
            //            self.path = [self.path stringByAppendingString:@"\n"];
            //            NSLog(path_all);
        }
    }
    return @"";
}

@end
