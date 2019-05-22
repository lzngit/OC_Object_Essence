//
//  main.m
//  PrepareKnowledge04
//
//  Created by lzn on 2019/5/22.
//  Copyright © 2019 PEAR. All rights reserved.
//

#import <Foundation/Foundation.h>

// 定义一个三维的点结构体,名字叫 AA_Point
// Note:注意类型是 struct AA_Point
// 不要直接单独使用 AA_Point
struct AA_Point {
    int x;
    int y;
    int z;
};

// 定义一个圆球结构体
struct AA_RoundBall {
    // 定义圆心, 是一个指针结构体变量
    struct AA_Point *circleCenter;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"struct AA_Point  需要内存空间size:%lu", sizeof(struct AA_Point));
        
        // 创建一个点
        struct AA_Point point_1 = {3, 4, 5};
        
        NSLog(@"结构体变量 point_1 需要内存空间size:%lu", sizeof(point_1));
        
        
        struct AA_Point *p_AA_Point = &point_1;
        
        NSLog(@"结构体变量 point_1 内存地址:%p", &point_1);
        NSLog(@"结构体指针变量 p_AA_Point 内存地址:%p", &p_AA_Point);
        NSLog(@"结构体指针变量 p_AA_Point 中的数据:%p", p_AA_Point);
        NSLog(@"结构体指针变量 p_AA_Point 中的数据需要内存空间:%lu", sizeof(p_AA_Point));

        
        struct AA_RoundBall roundBall = {p_AA_Point};
        NSLog(@"struct AA_RoundBall  需要内存空间size:%lu", sizeof(struct AA_RoundBall));
        NSLog(@"结构体变量 roundBall  需要内存空间size:%lu", sizeof(roundBall));
        
        struct AA_RoundBall *p_AA_RoundBall = &roundBall;
        
        NSLog(@"struct AA_RoundBall *  需要内存空间size:%lu", sizeof(struct AA_RoundBall *));
        NSLog(@"结构体指针变量 roundBall  需要内存空间size:%lu", sizeof(p_AA_RoundBall));

    }
    return 0;
}


//NSLog(@"x: %d y: %d z: %d", point_1.x, point_1.y, point_1.z);
