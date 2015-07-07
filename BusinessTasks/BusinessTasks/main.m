//
//  main.m
//  BusinessTasks
//
//  Created by Roberto Osorio-Goenaga on 7/7/15.
//  Copyright (c) 2015 Roberto. All rights reserved.
//

/*
 TopCoder problem BusinessTasks
 
 Problem Statement
 
 A busy businessman has a number of equally important tasks which he must accomplish. To decide which of the tasks to perform first, he performs the following operation.
 
 He writes down all his tasks in the form of a circular list, so the first task is adjacent to the last task. He then thinks of a positive number. This number is the random seed, which he calls n. Starting with the first task, he moves clockwise (from element 1 in the list to element 2 in the list and so on), counting from 1 to n. When his count reaches n, he removes that task from the list and starts counting from the next available task. He repeats this procedure until one task remains. It is this last task that he chooses to execute.
 
 Given a String[] list representing the tasks and an int n, return the task which the businessman chooses to execute.
 */

#import <Foundation/Foundation.h>
#import "TaskSorter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *final = [TaskSorter findTaskToExecuteWithRandomSeed:9000000 andArray:@[@"zlqamum", @"yjsrpybmq", @"tjllfea", @"fxjqzznvg", @"nvhekxr", @"am", @"skmazcey", @"piklp", @"olcqvhg", @"dnpo", @"bhcfc", @"y", @"h", @"fj", @"bjeoaxglt", @"oafduixsz", @"kmtbaxu", @"qgcxjbfx", @"my", @"mlhy", @"bt", @"bo", @"q"]];
        NSLog(@"Final array: %@", final);
    }
    return 0;
}
