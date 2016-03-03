//
//  LZClassInfo.m
//  JSONToModel
//
//  Created by lizhao on 16/3/3.
//  Copyright © 2016年 lizhao. All rights reserved.
//

#import "LZClassInfo.h"

@implementation LZClassInfo

- (instancetype)initWithClassNameKey:(NSString *)classNameKey ClassName:(NSString *)className classDic:(NSDictionary *)classDic
{
    self = [super init];
    if (self) {
        self.classNameKey = classNameKey;
        self.className = className;
        self.classDic = classDic;
    }
    return self;
}

- (NSMutableDictionary *)propertyClassDic{
    if (!_propertyClassDic) {
        _propertyClassDic = [NSMutableDictionary dictionary];
    }
    return _propertyClassDic;
}

- (NSMutableDictionary *)propertyArrayDic{
    if (!_propertyArrayDic) {
        _propertyArrayDic = [NSMutableDictionary dictionary];
    }
    return _propertyArrayDic;
}



@end
