//
//  ReichStarView.m
//  reichStarPaintCode
//
//  Created by Julien Bloit on 21/05/2021.
//

#import "ReichStarView.h"
#import "ReichStarStyleKit.h"

@implementation ReichStarView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [ReichStarStyleKit drawReichStarWithFrame:rect resizing:ReichStarStyleKitResizingBehaviorAspectFill angle:_newAngle hiliteFixedBranch:_newHilitedFixedBranch hilitePhasingBranch:_newHilitedPhasingBranch baseAlpha:0.6];
}

- (void)setAngle: (CGFloat)angle
{
    _newAngle = angle;
   [self setNeedsDisplay];
}

- (void)setHilitedFixedBranch: (int)index
{
    _newHilitedFixedBranch = index;
    [self setNeedsDisplay];
}

- (void)setHilitedPhasingBranch: (int)index
{
    _newHilitedPhasingBranch = index;
    [self setNeedsDisplay];
}

@end
