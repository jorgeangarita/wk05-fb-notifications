//
//  NotificationsTableViewCell.h
//  wk05 fb notifications
//
//  Created by Jorge Angarita on 4/7/14.
//  Copyright (c) 2014 jorge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotificationsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *profileImageView;
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *notificationTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *timestampLabel;


@end
