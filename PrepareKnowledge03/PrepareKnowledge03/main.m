//
//  main.m
//  PrepareKnowledge03
//
//  Created by lzn on 2019/5/21.
//  Copyright © 2019 PEAR. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 基础类型变量,需要内存空间
        NSLog(@"BOOL       需要内存空间字节数:%lu", sizeof(BOOL));
        NSLog(@"int        需要内存空间字节数:%lu", sizeof(int));
        NSLog(@"float      需要内存空间字节数:%lu", sizeof(float));
        NSLog(@"double     需要内存空间字节数:%lu", sizeof(double));
        NSLog(@"NSInteger  需要内存空间字节数:%lu", sizeof(NSInteger));
        NSLog(@"NSUInteger 需要内存空间字节数:%lu", sizeof(NSUInteger));
        
        NSLog(@"");
        
        // 打印指针变量类型,需要内存空间
        NSLog(@"BOOL *       需要内存空间字节数:%lu", sizeof(BOOL *));
        NSLog(@"int *        需要内存空间字节数:%lu", sizeof(int *));
        NSLog(@"float *      需要内存空间字节数:%lu", sizeof(float *));
        NSLog(@"double *     需要内存空间字节数:%lu", sizeof(double *));
        NSLog(@"NSInteger *  需要内存空间字节数:%lu", sizeof(NSInteger *));
        NSLog(@"NSUInteger * 需要内存空间字节数:%lu", sizeof(NSUInteger *));
        
        NSLog(@"");
        
        // 创建基础变量
        BOOL       isFlag_BOOL = false;
        int        i1_int = 9;
        float      f1_float = 1.22;
        double     d1_double = 3.33;
        NSInteger  nsi1_NSInteger = 199;
        NSUInteger nsui1_NSUInteger = 3456;
        
        // 创建指针变量
        BOOL       *p_BOOL = &isFlag_BOOL;
        int        *p_int = &i1_int;
        float      *p_float = &f1_float;
        double     *p_double = &d1_double;
        NSInteger  *p_NSInteger = &nsi1_NSInteger;
        NSUInteger *p_NSUInteger = &nsui1_NSUInteger;
        
        NSLog(@"      BOOL变量: %lu %lu %lu", sizeof(isFlag_BOOL), sizeof(&isFlag_BOOL), sizeof(p_BOOL));
        NSLog(@"       int变量: %lu %lu %lu", sizeof(i1_int), sizeof(&i1_int), sizeof(p_int));
        NSLog(@"     float变量: %lu %lu %lu", sizeof(f1_float), sizeof(&f1_float), sizeof(p_float));
        NSLog(@"    double变量: %lu %lu %lu", sizeof(d1_double), sizeof(&d1_double), sizeof(p_double));
        NSLog(@" NSInteger变量: %lu %lu %lu", sizeof(nsi1_NSInteger), sizeof(&nsi1_NSInteger), sizeof(p_NSInteger));
        NSLog(@"NSUInteger变量: %lu %lu %lu", sizeof(nsui1_NSUInteger), sizeof(&nsui1_NSUInteger), sizeof(p_NSUInteger));
        
        NSLog(@"");
        
        // 打印地址
        NSLog(@"      BOOL变量地址:%p 指针变量指向数据地址:%p 指针变量的地址:%p", &isFlag_BOOL, p_BOOL, &p_BOOL);
        NSLog(@"       int变量地址:%p 指针变量指向数据地址:%p 指针变量的地址:%p", &i1_int, p_int, &p_int);
        NSLog(@"     float变量地址:%p 指针变量指向数据地址:%p 指针变量的地址:%p", &f1_float, p_float, &p_float);
        NSLog(@"    double变量地址:%p 指针变量指向数据地址:%p 指针变量的地址:%p", &d1_double, p_double, &p_double);
        NSLog(@" NSInteger变量地址:%p 指针变量指向数据地址:%p 指针变量的地址:%p", &nsi1_NSInteger, p_NSInteger, &p_NSInteger);
        NSLog(@"NSUInteger变量地址:%p 指针变量指向数据地址:%p 指针变量的地址:%p", &nsui1_NSUInteger, p_NSUInteger, &p_NSUInteger);

    }
    return 0;
}
