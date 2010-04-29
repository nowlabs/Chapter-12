//
//  NumberConvenience.m
//  Chapter 12
//
//  Created by Thomas Eapen on 10-04-29.
//  Copyright 2010 NowLabs. All rights reserved.
//

#import "NumberConvenience.h"

@implementation NSString(NumberConvenience)

- (NSNumber*)lengthAsNumber {
	unsigned int length = [self length];
	return [NSNumber numberWithUnsignedInt:length];
} //lengthAsNumber

@end
