//
//  XLCustomTableViewCell.m
//  iOS7.2爱限免
//
//  Created by MS on 15-9-23.
//  Copyright (c) 2015年 xuli. All rights reserved.
//

#import "AIBaseTableViewCell.h"

@implementation AIBaseTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.iconImageView = [[UIImageView alloc]initWithFrame:CGRectMake(14, 10, 60, 60)];
        [self.contentView addSubview:self.iconImageView];
        
        self.titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(81, 5, 229, 21)];
        [self.contentView addSubview:self.titleLbl];
        
        self.timeLbl = [[UILabel alloc]initWithFrame:CGRectMake(82, 29, 170, 21)];
        self.timeLbl.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:self.timeLbl];
        
        self.priceLbl = [[UILabel alloc]initWithFrame:CGRectMake(246, 21, 54, 21)];
        self.priceLbl.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:self.priceLbl];
        
        UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, self.priceLbl.frame.size.height / 2, self.priceLbl.frame.size.width, 1)];
        view.backgroundColor = [UIColor blackColor];
        [self.priceLbl addSubview:view];
        
        self.kindLbl = [[UILabel alloc]initWithFrame:CGRectMake(246, 49, 54, 21)];
        self.kindLbl.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:self.kindLbl];
        
        self.starView = [[AIStarView alloc]initWithFrame:CGRectMake(82, 49, 117, 21)];
        [self.contentView addSubview:self.starView];
        
        self.infoLbl = [[UILabel alloc]initWithFrame:CGRectMake(20, 72, 245, 21)];
        self.infoLbl.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:self.infoLbl];
        
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
