//
//  PCView.m
//  reichStarPaintCode
//
//  Created by Julien Bloit on 21/05/2021.
//

#import "PCView.h"
#import "ReichStarStyleKit.h"

@implementation PCView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [ReichStarStyleKit drawReichStarWithFrame:rect resizing:ReichStarStyleKitResizingBehaviorAspectFill angle:_newAngle];
}

- (void)setAngle: (CGFloat)angle
{
    _newAngle = angle;
   [self setNeedsDisplay];
}


@end
