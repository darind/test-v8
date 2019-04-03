//
//  main.m
//  test-v8
//
//  Created by Darin Dimitrov on 3.04.19.
//  Copyright © 2019 Darin Dimitrov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#include "Runtime.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        NSString* resourcePath = [[NSBundle mainBundle] resourcePath];
        NSArray* components = [NSArray arrayWithObjects:resourcePath, @"app", nil];
        NSString* path = [NSString pathWithComponents:components];

        tns::Runtime* runtime = new tns::Runtime();
        std::string baseDir = [path UTF8String];
        runtime->Init(baseDir);
        runtime->RunScript("index.js");

        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
