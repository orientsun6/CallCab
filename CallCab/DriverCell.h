//
//  DriverCell.h
//  CallCab
//
//  Created by Charles Liu on 2014-04-10.
//  Copyright (c) 2014 Charles Liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DriverCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *areaLabel;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;// 120 * 80 pts

@end
