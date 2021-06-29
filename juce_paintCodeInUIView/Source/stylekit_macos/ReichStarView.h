//
//  ReichStarView.h
//  reichStarPaintCode
//
//  Created by Julien Bloit on 21/05/2021.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface ReichStarView : NSView

@property  CGFloat newAngle;

- (void)setAngle: (CGFloat)angle;

@end

NS_ASSUME_NONNULL_END
