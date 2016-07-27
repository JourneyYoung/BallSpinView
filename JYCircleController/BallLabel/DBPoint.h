//
//  DBPoint.h
//  sphereTagCloud
//
//  Created by JourneyYoung on 16/7/27.
//  Copyright © 2016年 JourneyYoung. All rights reserved.
//

#ifndef sphereTagCloud_DBPoint_h
#define sphereTagCloud_DBPoint_h

struct DBPoint {
    CGFloat x;
    CGFloat y;
    CGFloat z;
};

typedef struct DBPoint DBPoint;


DBPoint DBPointMake(CGFloat x, CGFloat y, CGFloat z) {
    DBPoint point;
    point.x = x;
    point.y = y;
    point.z = z;
    return point;
}

#endif
