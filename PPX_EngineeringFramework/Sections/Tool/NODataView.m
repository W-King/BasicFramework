//
//  NODataView.m
//  TinyStore
//
//  Created by 刘凡 on 15/6/6.
//  Copyright (c) 2015年 齐志坚. All rights reserved.
//

#import "NODataView.h"
#import "ProjectConfigHeader.h"
@interface NODataView ()
{
    UIImageView *noDataImageView;
    UIImage *noDataImage;
    UILabel *noDataLabel;
    NSString *noDataStr;
    NSString *noNetworkStr;
    NODataViewType viewType;
}

@end

@implementation NODataView

- (id)initWithFrame:(CGRect)frame type:(NODataViewType)type
{
    self = [super initWithFrame:frame];
    
    if(self)
    {
        viewType = type;
        noDataStr = @"暂无数据，请稍后再试!";
        noNetworkStr = @"无网络，请检查您的网络!";
        noDataImage = [UIImage imageNamed:@"stateless"];
        CGFloat begin = (frame.size.height - noDataImage.size.height - 30)*0.3;
        noDataImageView = [[UIImageView alloc] initWithFrame:CGRectMake((frame.size.width-noDataImage.size.width)/2,begin,noDataImage.size.width,noDataImage.size.height)];
        noDataImageView.image = noDataImage;
        [self addSubview:noDataImageView];
        
        noDataLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, noDataImageView.frame.size.height+noDataImageView.frame.origin.y+10,frame.size.width, 20)];
        noDataLabel.font = [UIFont systemFontOfSize:15];
        noDataLabel.textColor = RGB_COLOR(kOtherFontColor);
        noDataLabel.textAlignment = NSTextAlignmentCenter;
        noDataLabel.text = type == NODataViewType_NOData ?noDataStr:noNetworkStr;
        [self addSubview:noDataLabel];
        
        self.backgroundColor = RGB_COLOR(kBackgroundColor);
    }

    return self;
}

- (void)setNoDataLabelText:(NSString *)str
{
    noDataLabel.text = str;
}

- (void)setNoDataImageName:(NSString *)imageName
{
    noDataImageView.image = [UIImage imageNamed:imageName];
}

- (void)reloadFrame:(CGRect)frame type:(NODataViewType)type;
{
    if (CGRectEqualToRect(self.frame , frame) && type == viewType)
    {
        return;
    }
    
    self.frame = frame;
    
    if (viewType != type)
    {
         noDataLabel.text = type == NODataViewType_NOData ?noDataStr:noNetworkStr;
    }
    
    CGFloat begin = (frame.size.height - noDataImage.size.height - 30)*0.3;
    noDataImageView.frame = CGRectMake((frame.size.width-noDataImage.size.width)/2,begin,noDataImage.size.width,noDataImage.size.height);
    
    noDataLabel.frame = CGRectMake(0, noDataImageView.frame.size.height+noDataImageView.frame.origin.y+10,frame.size.width, 20);
}


@end
