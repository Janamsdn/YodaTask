//
//  YodaTaskViewController.h
//  YodaTask
//
//  Created by Jana on 05/11/2013.
//  Copyright (c) 2013 jana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YodaTaskViewController : UIViewController

-(IBAction)speechWord;//btn
@property (strong, nonatomic) IBOutlet UITextField *enterText;//txtField
@property (strong, nonatomic) IBOutlet UILabel *responseLbl;//response


@end
