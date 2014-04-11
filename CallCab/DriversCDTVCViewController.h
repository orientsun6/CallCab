//
//  DriversCDTVCViewController.h
//  CallCab
//
//  Created by Charles Liu on 2014-04-11.
//  Copyright (c) 2014 Charles Liu. All rights reserved.
//

#import "CoreDataTableViewController.h"
#import "DriverCell.h"

@interface DriversCDTVCViewController : CoreDataTableViewController

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
