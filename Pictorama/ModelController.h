//
//  ModelController.h
//  Pictorama
//
//  Created by Ole C. Langfjæran on 3/25/13.
//  Copyright (c) 2013 Judoole. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end
