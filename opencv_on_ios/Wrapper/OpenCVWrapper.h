//
//  OpenCVWrapper.h
//  opencv_on_ios
//
//  Created by fukukazu kawata on 2020/07/13.
//  Copyright © 2020 fukukazu kawata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// Objective-C++とやらで書く
// なれないなぁ

@interface OpenCVWrapper : NSObject

// - : インスタンスメソッド(+ ならクラスメソッド)

- (UIImage*) toGray: (UIImage*) img;

@end

NS_ASSUME_NONNULL_END
