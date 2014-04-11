//
//  DriversCDTVCViewController.m
//  CallCab
//
//  Created by Charles Liu on 2014-04-11.
//  Copyright (c) 2014 Charles Liu. All rights reserved.
//

#import "DriversCDTVCViewController.h"

@interface DriversCDTVCViewController ()
@property (nonatomic, strong) NSDictionary *drivers;
@end

@implementation DriversCDTVCViewController


- (void)setManagedObjectContext:(NSManagedObjectContext *)managedObjectContext
{
    _managedObjectContext = managedObjectContext;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"DriverCell";
    
    DriverCell *cell = (DriverCell *)[tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:identifier owner:self options:nil];
        cell = [nib firstObject];
    }
    
    cell.nameLabel.text = [self.drivers valueForKey:@"name"];
    cell.statusLabel.text = @"1";
    cell.imageView.image = [DriversCDTVCViewController scale:[UIImage imageNamed:@"England.png"] toSize:CGSizeMake(100, 80)];
    cell.areaLabel.text = [self.drivers valueForKey:@"area"];
    
    
    return cell;
}


#pragma mark -- overwrite

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

//Cell height
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}



+ (UIImage *)scale:(UIImage *)image toSize:(CGSize)size // 120 * 80
{
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return scaledImage;
}





- (void)viewDidLoad
{
    [super viewDidLoad];
    self.drivers = @{@"name":@"Tony",@"capcity":@"4", @"cell":@"416-779-6974", @"area":@"Scarborough", @"workinghour":@"24"};
    NSLog(@"%@", self.drivers);
    
    
    UINib *cellNib = [UINib nibWithNibName:@"DriverCell" bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:@"DriverCell"];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

@end
