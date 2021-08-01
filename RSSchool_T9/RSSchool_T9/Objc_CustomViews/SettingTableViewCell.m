//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 28.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "SettingTableViewCell.h"
#import "ColorItem.h"
#import "RSSchool_T9-Swift.h"

@interface SettingTableViewCell ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *detailLabel;
@property (nonatomic, strong) UISwitch *switchButton;

@end

@implementation SettingTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        if ([reuseIdentifier isEqual:@"CellId1"]){
            [self setupViews1];
        } else if([reuseIdentifier isEqual:@"CellId2"]){
            self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            self.textLabel.text = @"Stroke color";
        }
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
}

//setup first cell in first setting table
-(void)setupViews1 {
    [self.contentView setHidden:true];
    self.switchButton = [UISwitch new];
    self.switchButton.translatesAutoresizingMaskIntoConstraints = false;
    [self.switchButton setOn:true];
    
    [self.switchButton addTarget:self action:@selector(switchTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:self.switchButton];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.switchButton.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-15.0],
        [self.switchButton.topAnchor constraintEqualToAnchor:self.topAnchor constant:12.0],
        [self.switchButton.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:-9.0],
    ]];
    
    self.titleLabel = [UILabel new];
    self.titleLabel.text = @"Draw stories";
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = false;
    
    [self addSubview:self.titleLabel];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.titleLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:16.0],
        [self.titleLabel.topAnchor constraintEqualToAnchor:self.topAnchor constant:15.5],
        [self.titleLabel.trailingAnchor constraintEqualToAnchor:self.switchButton.leadingAnchor constant:-21],
        [self.titleLabel.centerYAnchor constraintEqualToAnchor:self.centerYAnchor]
    ]];
}

-(void)switchTapped:(id)sender{
    SupportClass *class = [SupportClass sharedInstance];
    class.switchDrawStories = !class.switchDrawStories;
}



//for second Setting table allCell
-(void)configureViews:(ColorItem *)colorItem{
    self.textLabel.text = colorItem.title;
    self.textLabel.textColor = [UIColor colorNamed:colorItem.title];
    self.tintColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    if (colorItem.check == true){
        self.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        self.accessoryType = UITableViewCellAccessoryNone;
    }
}
//for first Setting table cell2
- (void)configureDetailColor:(NSString *)detailColorName{
    if (detailColorName == nil){
        self.detailColorName = @"#e87aa4";
    } else {
        self.detailColorName = detailColorName;
    }
    self.detailTextLabel.text = self.detailColorName;
    self.detailTextLabel.textColor = [UIColor colorNamed:self.detailColorName];
}

@end
