//
//  ViewController.m
//  01ScrollView
//
//  Created by 袁艳祥 on 15/10/20.
//  Copyright © 2015年 袁艳祥. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) UIImageView *imgView;

@end

@implementation ViewController

- (void)setImage:(UIImage *)image
{
    _image = image;
    self.imgView.image = image;
    [self.imgView sizeToFit];
    self.scrollView.contentSize = image.size;
}

- (UIImageView *)imgView
{
    if (_imgView == nil) {
        _imgView = [[UIImageView alloc] init];
        [self.scrollView addSubview:_imgView];
    }
    return _imgView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.image = [UIImage imageNamed:@"minion.png"];
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
