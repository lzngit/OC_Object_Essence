//
//  main.m
//  NSObject05
//
//  Created by lzn on 2019/5/24.
//  Copyright © 2019 PEAR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <malloc/malloc.h>

// NOTE:重定义结构体指针类型, 在前
typedef struct AA_animal *AA_classAnimal;


// 定义一个动物结构体,有年龄,有父亲
struct AA_animal {
    AA_classAnimal father;
    int age;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建NSObject对象
        // obj是指针变量, obj存放的是NSObject对象的内存地址
        // 可以浅显的说:变量被创建在 栈 空间中,对象被创建在 堆 空间中
        NSObject *obj = [[NSObject alloc] init];
        
        NSLog(@"obj变量的地址:%p", &obj);
        NSLog(@"obj变量指向NSObjcet对象的地址:%p", obj);
        NSLog(@"%@",obj);
        
        
        struct AA_animal father = {NULL, 99};
        struct AA_animal son = {&father, 1};
        
        NSLog(@"通过儿子获取父亲的年龄:%d", son.father->age);
        
        // 创建同样形式的结构体,测试其size
        struct AA_IMPL {
            Class isa;
        };
        
        NSLog(@"sizeof 获取 struct AA_IMPL内存大小: %lu", sizeof(struct AA_IMPL));
        
        
        NSLog(@"runtime方法获取类NSObject需要内存空间: %lu", class_getInstanceSize([NSObject class]));
        
        NSLog(@"malloc方法计算内存空间: %lu", malloc_size((__bridge void *)obj));
        
    }
    return 0;
}
