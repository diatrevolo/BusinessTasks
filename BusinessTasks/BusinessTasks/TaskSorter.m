//
//  TaskSorter.m
//  
//
//  Created by Roberto Osorio-Goenaga on 7/7/15.
//
//

#import "TaskSorter.h"

@implementation TaskSorter

+ (NSArray*)findTaskToExecuteWithRandomSeed:(int)seed andArray:(NSArray*) inputArray {
    int toRemove = (seed - 1) % inputArray.count;
    NSLog(@"Going to remove %@", inputArray[toRemove]);
    NSMutableArray *array = [NSMutableArray arrayWithArray:inputArray];
    [array removeObjectAtIndex:toRemove];
    array = [NSMutableArray arrayWithArray:[self shiftArrayRight:array byOffset:toRemove]];
    NSLog(@"Array: %@", array);
    if (array.count > 1) {
        return [self findTaskToExecuteWithRandomSeed:seed andArray:array];
    } else {
        return array;
    }
}

+ (NSArray*)shiftArrayRight:(NSArray*)array byOffset:(int)offset {
    NSMutableArray *tempArray = [NSMutableArray arrayWithArray:array];
    for(int n=0; n<offset; n++) {
        NSObject *temp = tempArray[0];
        [tempArray removeObject:temp];
        [tempArray insertObject:temp atIndex:array.count-1];
    }
    return tempArray;
}

@end
