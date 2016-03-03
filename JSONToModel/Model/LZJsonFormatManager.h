//
//  ESJsonFormatManager.h
//  ESJsonFormat
//
//  Created by 尹桥印 on 15/6/28.
//  Copyright (c) 2015年 EnjoySR. All rights reserved.
//

#import <Foundation/Foundation.h>
@class LZClassInfo;
@interface LZJsonFormatManager : NSObject

/**
 *  解析一个类里面属性字段的内容
 *
 *  @param classInfo 类信息
 *
 *  @return 
 */
+ (NSString *)parsePropertyContentWithClassInfo:(LZClassInfo *)classInfo;

/**
 *  解析一个类头文件的内容(会根据是否创建文件返回的内容有所不同)
 *
 *  @param classInfo 类信息
 *
 *  @return 类头文件里面的内容
 */
+ (NSString *)parseClassHeaderContentWithClassInfo:(LZClassInfo *)classInfo;


/**
 *  解析一个类实现文件内容 (仅对OC有效)
 *
 *  @param classInfo 类信息
 *
 *  @return 实现文件里面的内容
 */
+ (NSString *)parseClassImpContentWithClassInfo:(LZClassInfo *)classInfo;


/**
 *  生成 MJExtension2.0 的集合中指定对象的方法
 *
 *  @param classInfo 指定类信息
 *
 *  @return
 */
+ (NSString *)methodContentOfObjectClassInArrayWithClassInfo:(LZClassInfo *)classInfo;


/**
 *  创建文件
 *
 *  @param folderPath 输出的文件夹路径
 *  @param classInfo  类信息
 */
+ (void)createFileWithFolderPath:(NSString *)folderPath classInfo:(LZClassInfo *)classInfo;


@end
