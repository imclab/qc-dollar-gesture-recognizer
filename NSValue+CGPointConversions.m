//
//  NSValue+CGPointConversions.m
//  Jestieur
//
//  Implementing the missing functionality that is in UIKit
//	that MCGestureRecogniser is expecting
//
//  Created by Glenn Francis Murray on 24/06/10.
//  Public Domain
//

#import "NSValue+CGPointConversions.h"


@implementation NSValue(CGPointConversions)
+ (NSValue *) valueWithCGPoint: (CGPoint) point {
	return [NSValue valueWithPoint:NSPointFromCGPoint(point)];
}
- (CGPoint) CGPointValue {
	return NSPointToCGPoint([self pointValue]);
}

//TODO: my god... "CGPointCreateDictionaryRepresentation" & CGPointMakeDictionaryRepresentation (to do reverse)
- (NSDictionary *) dictionaryValue {
	NSPoint point = [self pointValue];
	return [NSDictionary dictionaryWithObjectsAndKeys:
			[NSNumber numberWithFloat: point.x], @"X",
			[NSNumber numberWithFloat: point.y], @"Y",
			nil];
}

@end

@implementation NSValueCGPointConversions
+ (NSValue *) NSValueWithCGPoint: (CGPoint) point {
	//NSLog(@"In NSValue valueWithCGPoint with p=%s", point);
	//NSPoint ns_point = NSPointFromCGPoint(point);
	//NSLog(@"In NSValue valueWithCGPoint with ns_p=%s", ns_point);
	//NSValue * ns_value= [NSValue valueWithPoint: ns_point];
	//NSLog(@"In NSValue valueWithCGPoint with ns=%s", ns_value);
	return (NSValue*)[NSValue valueWithPoint: NSPointFromCGPoint(point)];
}
@end