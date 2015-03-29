//
//  ViewController.m
//  Todo
//
//  Created by Han Wang on 3/28/15.
//  Copyright (c) 2015 Han Wang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.items = [[NSMutableArray alloc] init]; // allocate memory to items, init: prep the memory
    //2nd self refers to current instance of ViewController class
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.items.count;
    //return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString* cellIdentifier = @"Cell";
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell){ // if it is nil, create a new one
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    //cell.textLabel.text = @"Hello";
    cell.textLabel.text = [self.items objectAtIndex:indexPath.row];
    
    return cell;
}

- (IBAction)didTapButton:(id)sender{
    /*NSLog(@"Button was tapped!");
    NSLog(@"Text: %@", self.textField.text);*/
    NSString* itemTitle = self.textField.text; // get itemTitle
    
    [self.items addObject:itemTitle]; // add itemTitle to item array
    
    NSLog(@"Array: %@", self.items); // log item onto console
    
    [self.tableView reloadData]; // update table
    
    self.textField.text = @""; // clear text field
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
