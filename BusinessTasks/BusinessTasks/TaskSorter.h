//
//  TaskSorter.h
//  
//
//  Created by Roberto Osorio-Goenaga on 7/7/15.
//
//

#import <Foundation/Foundation.h>

@interface TaskSorter : NSObject

+ (NSArray*)findTaskToExecuteWithRandomSeed:(int)seed andArray:(NSArray*) inputArray;

@end
