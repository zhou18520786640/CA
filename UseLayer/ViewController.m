//
//  ViewController.m
//  UseLayer
//
//  Created by zhou on 16/1/24.
//  Copyright © 2016年 jeff.zhou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *whiteView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];

    self.whiteView = [[UIView alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width - 160) / 2 , 80, 80, 80)];
    self.whiteView.backgroundColor = [UIColor whiteColor];
    UIImage *image = [UIImage imageNamed:@"snow.png"];
    self.whiteView.layer.contents = (__bridge id)image.CGImage;
    

    [self.view addSubview:self.whiteView];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
