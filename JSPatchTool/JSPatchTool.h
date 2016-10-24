//
//  JSPatchTool.h
//  JSPatchToolDemo
//
//  Created by huang on 2016/10/24.
//  Copyright © 2016年 huang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSPatchPlatform/JSPatch.h>

#define JSPATCH_APP_KEY @"cc73aee6e15193c3"

@interface JSPatchTool : NSObject
+(void)testScriptInBundle;                  //使用本地js文件（本地测试）
+(void)sync;                                //开始同步JSPatch后台文件
+(void)loadJS:(NSString*)jspatch;           //加载本地js文件
@end
