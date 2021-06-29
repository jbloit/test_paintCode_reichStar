//
//  ReichStarView.h
//  reichStarPaintCode
//
//  Created by Julien Bloit on 21/05/2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ReichStarView : UIView

@property  CGFloat newAngle;
@property  int newHilitedFixedBranch;
@property  int newHilitedPhasingBranch;

- (void)setAngle: (CGFloat)angle;
- (void)setHilitedFixedBranch: (int)index;
- (void)setHilitedPhasingBranch: (int)index;

@end

NS_ASSUME_NONNULL_END
