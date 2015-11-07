//
//  MyInfoTableViewController.m
//  PluginTest
//
//  Created by KenmuHuang on 15/11/7.
//  Copyright © 2015年 Kenmu. All rights reserved.
//

#import "MyInfoTableViewController.h"

@interface MyInfoTableViewController ()
- (void)layoutUI;
@end

@implementation MyInfoTableViewController

#pragma mark - UIViewController Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self layoutUI];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)layoutUI {
    _dicMyInfo = @{ @"1.姓名":@"KenmuHuang",
                    @"2.年龄":@"保密",
                    @"3.业余爱好":@"看书、K歌、篮球",
                    @"4.个人说明":@"呵呵" };
}

#pragma mark - TableView DataSource and Delegate
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return nil;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dicMyInfo.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
    }
    NSString *key = [_dicMyInfo allKeys][indexPath.row];
    cell.textLabel.text = [key substringFromIndex:2];
    cell.detailTextLabel.text =[_dicMyInfo valueForKey:key];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50.0;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    /*
     viewDidLoad 中对应的操作
     if ([_tableView respondsToSelector:@selector(setSeparatorInset:)]) {
     [_tableView setSeparatorInset:UIEdgeInsetsZero]; //设置单元格（上左下右）内边距
     }
     if ([_tableView respondsToSelector:@selector(setLayoutMargins:)]) {
     [_tableView setLayoutMargins:UIEdgeInsetsZero]; //设置单元格（上左下右）外边距
     }
     */
    
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
