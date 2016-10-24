//
//  JSPatchTool.m
//  JSPatchToolDemo
//
//  Created by huang on 2016/10/24.
//  Copyright © 2016年 huang. All rights reserved.
//

#import "JSPatchTool.h"

@implementation JSPatchTool
+(void)testScriptInBundle
{
#ifdef DEBUG
    [JSPatch testScriptInBundle];
#endif
    
 

}
+(void)sync                                //开始同步JSPatch后台文件
{
    [JSPatch startWithAppKey:JSPATCH_APP_KEY];
#ifdef DEBUG
    [JSPatch setupDevelopment];
#endif
    [self setupUserData];
    [JSPatch sync];
}

//定义用户属性，在 +sync: 之前调用，用于条件下发，
+(void)setupUserData
{
    
}

+(void)loadJS:(NSString*)jspatch           //加载本地js文件
{
    [JPEngine startEngine];
//    NSString *sourcePath = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"dribbble/main.js"];
    if (jspatch && jspatch.length>0) {
        
        if([[NSFileManager defaultManager] fileExistsAtPath:jspatch])
        {
            [JPEngine evaluateScriptWithPath:jspatch];
        }
        else
        {
            NSLog(@"路径不存在 path=%@",jspatch);
        }
    }
    
    
    
}

@end
