//
//  ViewController.m
//  OffScreenRenderDemo
//
//  Created by 张令浩 on 2022/4/12.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //[self lh_offscreenRender_cornerRadiusAndMasksToBounds];
    [self lh_offscreenRender_layerAndBackgroundColor];
}

- (void)lh_offscreenRender_cornerRadiusAndMasksToBounds {
    // 触发离屏渲染
    /*
        先处理背景色将背景色处理完成放到offScreenbuffer中
        接着进行图片的处理操作，当图片处理完成后会放到offScreenbuffer中
        继续进行圆角的设置
        等所有的操作处理完成后最终结果存储进行最终的展示
     */
    // 触发离屏渲染
    UIImageView *imageView1 = [[UIImageView alloc] init];
    imageView1.frame = CGRectMake(50, 100, 50, 50);
    imageView1.layer.cornerRadius = 25.f;
    imageView1.layer.masksToBounds = YES;
    imageView1.image = [UIImage imageNamed:@"app_store"];
    imageView1.backgroundColor = [UIColor blueColor];
    [self.view addSubview:imageView1];
    
    UIImageView *imageView2 = [[UIImageView alloc] init];
    imageView2.frame = CGRectMake(50, 200, 50, 50);
    imageView2.layer.cornerRadius = 25.f;
    imageView2.layer.masksToBounds = YES;
    imageView2.image = [UIImage imageNamed:@"app_store"];
    //imageView2.backgroundColor = [UIColor blueColor];
    [self.view addSubview:imageView2];
    
    UIImageView *imageView3 = [[UIImageView alloc] init];
    imageView3.frame = CGRectMake(50, 300, 50, 50);
//    imageView3.layer.cornerRadius = 25.f;
//    imageView3.layer.masksToBounds = YES;
    imageView3.image = [UIImage imageNamed:@"app_store"];
    //imageView2.backgroundColor = [UIColor blueColor];
    [self.view addSubview:imageView3];
}

- (void)lh_offscreenRender_layerAndBackgroundColor {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(150, 100, 150, 150)];
    view.backgroundColor = UIColor.greenColor;
    view.layer.borderWidth = 1.f;
    view.layer.borderColor = UIColor.blackColor.CGColor;
    view.layer.cornerRadius = 50.f;
    view.layer.masksToBounds = YES;
    [self.view addSubview:view];
    
    // 添加子视图
    UIView *secondView = [[UIView alloc] initWithFrame:CGRectMake(150, 300, 150, 150)];
    secondView.backgroundColor = UIColor.greenColor;
    secondView.layer.borderWidth = 1.f;
    secondView.layer.borderColor = UIColor.blackColor.CGColor;
    secondView.layer.cornerRadius = 50.f;
    secondView.layer.masksToBounds = YES;
    
    UIView *cencerView = [[UIView alloc] initWithFrame:CGRectMake(35, 35, 70, 70)];
    cencerView.backgroundColor = UIColor.blueColor;
    cencerView.layer.borderWidth = 2.f;
    cencerView.layer.borderColor = UIColor.blueColor.CGColor;
    cencerView.layer.cornerRadius = 35.f;
    cencerView.layer.masksToBounds = YES;
    [secondView addSubview:cencerView];
    
    [self.view addSubview:secondView];
    
}


@end
