//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 28.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "SettingsViewController.h"
#import "SettingTableViewCell.h"
#import "ColorsViewController.h"
#import "ColorItem.h"
#import "RSSchool_T9-Swift.h"

//@class SupportClass;

@interface SettingsViewController ()


@property (nonatomic) NSString *detailColorName;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialColorsArray:true];
    [self getSelfDetailColor];
    [self setupViews];
    
    
}

-(void)setupViews {
    self.view.backgroundColor = [UIColor colorNamed:@"SettingsBackground"];
    self.title = @"Settings";
    
    self.tableView = [UITableView new];
    self.tableView.translatesAutoresizingMaskIntoConstraints = false;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:SettingTableViewCell.class forCellReuseIdentifier:@"CellId1"];
    [self.tableView registerClass:SettingTableViewCell.class forCellReuseIdentifier:@"CellId2"];
    self.tableView.layer.masksToBounds = true;
    self.tableView.layer.cornerRadius = 16;
    self.tableView.scrollEnabled = false;
    
    [self.view addSubview:self.tableView];
    
    UILayoutGuide *guide = self.view.safeAreaLayoutGuide;
    [NSLayoutConstraint activateConstraints:@[
        [self.tableView.leadingAnchor constraintEqualToAnchor: guide.leadingAnchor constant:20],
        [self.tableView.topAnchor constraintEqualToAnchor: guide.topAnchor constant:35],
        [self.tableView.trailingAnchor constraintEqualToAnchor: guide.trailingAnchor constant:-20],
        [self.tableView.heightAnchor constraintEqualToConstant: 103]
    ]];
    
    
    
}

-(void)initialColorsArray:(BOOL)firstInit{
    if (firstInit){
        self.colorsArray = [NSMutableArray arrayWithArray:@[
            [[ColorItem alloc] initWithTitle:@"#be2813" check:false],
            [[ColorItem alloc] initWithTitle:@"#3802da" check:false],
            [[ColorItem alloc] initWithTitle:@"#467c24" check:false],
            [[ColorItem alloc] initWithTitle:@"#808080" check:false],
            [[ColorItem alloc] initWithTitle:@"#8e5af7" check:false],
            [[ColorItem alloc] initWithTitle:@"#f07f5a" check:false],
            [[ColorItem alloc] initWithTitle:@"#f3af22" check:true],
            [[ColorItem alloc] initWithTitle:@"#3dacf7" check:false],
            [[ColorItem alloc] initWithTitle:@"#e87aa4" check:false],
            [[ColorItem alloc] initWithTitle:@"#0f2e3f" check:false],
            [[ColorItem alloc] initWithTitle:@"#213711" check:false],
            [[ColorItem alloc] initWithTitle:@"#511307" check:false],
            [[ColorItem alloc] initWithTitle:@"#92003b" check:false],
        ]];
    } else {
        self.colorsArray = [NSMutableArray arrayWithArray:@[
            [[ColorItem alloc] initWithTitle:@"#be2813" check:false],
            [[ColorItem alloc] initWithTitle:@"#3802da" check:false],
            [[ColorItem alloc] initWithTitle:@"#467c24" check:false],
            [[ColorItem alloc] initWithTitle:@"#808080" check:false],
            [[ColorItem alloc] initWithTitle:@"#8e5af7" check:false],
            [[ColorItem alloc] initWithTitle:@"#f07f5a" check:false],
            [[ColorItem alloc] initWithTitle:@"#f3af22" check:false],
            [[ColorItem alloc] initWithTitle:@"#3dacf7" check:false],
            [[ColorItem alloc] initWithTitle:@"#e87aa4" check:false],
            [[ColorItem alloc] initWithTitle:@"#0f2e3f" check:false],
            [[ColorItem alloc] initWithTitle:@"#213711" check:false],
            [[ColorItem alloc] initWithTitle:@"#511307" check:false],
            [[ColorItem alloc] initWithTitle:@"#92003b" check:false],
        ]];
    }
    
    SupportClass *class = [SupportClass sharedInstance];
    class.staticColorsArray = self.colorsArray;
}

-(void)getSelfDetailColor{
    for (ColorItem *item in self.colorsArray) {
        if (item.check == true){
            self.detailColorName = item.title;
        }
    }
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    if (indexPath.row == 0){
        SettingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellId1" forIndexPath:indexPath];
        return  cell;
    } else {
        SettingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellId2" forIndexPath:indexPath];
        cell = [cell initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"CellId2"];
        [self getSelfDetailColor];
        [cell configureDetailColor:self.detailColorName];
        return  cell;
    }
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 52;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:true];
    if (indexPath.row == 1){
        ColorsViewController *colorVC = [ColorsViewController new];
        colorVC.delegate = self;
        [self.navigationController pushViewController:colorVC animated:true];
    }
}


@end
