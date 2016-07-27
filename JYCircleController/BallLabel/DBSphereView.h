//
//  DBSphereView.h
//  sphereTagCloud
//
//  Created by JourneyYoung on 16/7/27.
//  Copyright © 2016年 JourneyYoung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBSphereView : UIView

/**
 *  Sets the cloud's tag views.
 *
 *	@remarks Any @c UIView subview can be passed in the array.
 *
 *  @param array The array of tag views.
 */
- (void)setCloudTags:(NSArray *)array;

/**
 *  Starts the cloud autorotation animation.
 */
- (void)timerStart;

/**
 *  Stops the cloud autorotation animation.
 */
- (void)timerStop;

@end
