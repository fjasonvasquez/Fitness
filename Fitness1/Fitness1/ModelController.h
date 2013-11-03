//
//  ModelController.h
//  Fitness1
//
//  Created by Felino Jason Vasquez on 11/2/13.
//  Copyright (c) 2013 Felino Jason Vasquez. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end
