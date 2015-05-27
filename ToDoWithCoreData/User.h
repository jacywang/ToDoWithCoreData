//
//  User.h
//  ToDoWithCoreData
//
//  Created by JIAN WANG on 5/26/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class ToDo;

@interface User : NSManagedObject

@property (nonatomic, retain) NSString * firstname;
@property (nonatomic, retain) NSString * lastname;
@property (nonatomic, retain) NSSet *toDoList;
@end

@interface User (CoreDataGeneratedAccessors)

- (void)addToDoListObject:(ToDo *)value;
- (void)removeToDoListObject:(ToDo *)value;
- (void)addToDoList:(NSSet *)values;
- (void)removeToDoList:(NSSet *)values;

@end
