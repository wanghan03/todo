//
//  ViewController.h
//  Todo
//
//  Created by Han Wang on 3/28/15.
//  Copyright (c) 2015 Han Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITextField* textField;

@property (nonatomic, strong) NSMutableArray* items;

@property (nonatomic, strong) IBOutlet UITableView* tableView;

- (IBAction)didTapButton:(id)sender;

@end

