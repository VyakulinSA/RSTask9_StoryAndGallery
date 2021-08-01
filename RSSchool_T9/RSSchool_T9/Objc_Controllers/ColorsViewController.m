//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 29.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "ColorsViewController.h"
#import "SettingTableViewCell.h"
#import "RSSchool_T9-Swift.h"

@interface ColorsViewController ()

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ColorsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViews];
}

-(void)setupViews {
    self.view.backgroundColor = [UIColor colorNamed:@"SettingsBackground"];

    self.title = @"Settings";
    
    self.tableView = [UITableView new];
    self.tableView.translatesAutoresizingMaskIntoConstraints = false;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:SettingTableViewCell.class forCellReuseIdentifier:@"CellId"];
    self.tableView.layer.masksToBounds = true;
    self.tableView.layer.cornerRadius = 16;
    [self.view addSubview:self.tableView];
    [NSLayoutConstraint activateConstraints:@[
        [self.tableView.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor constant:36],
        [self.tableView.topAnchor constraintEqualToAnchor: self.view.topAnchor constant:120],
        [self.tableView.trailingAnchor constraintEqualToAnchor: self.view.trailingAnchor constant:-35],
        [self.tableView.heightAnchor constraintEqualToConstant: 676]
    ]];
 
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.delegate.colorsArray.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    SettingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellId" forIndexPath:indexPath];
    ColorItem *item = self.delegate.colorsArray[indexPath.row];
    [cell configureViews:item];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 52;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.delegate initialColorsArray:false]; //refresh colorsArray
    ColorItem *item = self.delegate.colorsArray[indexPath.row]; //get current colorItem
    item.check = true;
    SupportClass *class = [SupportClass sharedInstance];
    class.staticColorsArray = self.delegate.colorsArray;
    [self.delegate.tableView reloadData]; //reload first setting table for change detailTextLabel with color
    [self.navigationController popViewControllerAnimated:self];
}


@end
