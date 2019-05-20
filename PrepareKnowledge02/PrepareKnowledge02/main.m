//
//  main.m
//  PrepareKnowledge02
//
//  Created by lzn on 2019/5/20.
//  Copyright © 2019 PEAR. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建NSObject对象
        NSObject *obj = [[NSObject alloc] init];
        
        //打印
        NSLog(@"%@", obj);
        NSLog(@"obj指向NSObject对象的地址:%p", obj);
        NSLog(@"obj变量的地址:%p", &obj);
        
        
    }
    return 0;
}
