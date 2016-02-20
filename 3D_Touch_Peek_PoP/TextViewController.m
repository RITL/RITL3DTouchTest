//
//  TextViewController.m
//  3D_Touch_Peek_PoP
//
//  Created by YueWen on 16/2/19.
//  Copyright © 2016年 YueWen. All rights reserved.
//

#import "TextViewController.h"

#ifdef __IPHONE_9_0
@interface TextViewController ()<UIPreviewActionItem>
#else
@interface TextViewController()
#endif

@property (nonatomic, copy) NSString * title1;
@property (weak, nonatomic) IBOutlet UILabel *lblText;

@end



@implementation TextViewController

@dynamic title;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _lblText.text = self.title1;
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



#pragma mark - UIPreviewActionItem

#ifdef __IPHONE_9_0
-(NSArray<id<UIPreviewActionItem>> *)previewActionItems
{
    UIPreviewAction * act1 = [UIPreviewAction actionWithTitle:@"3D Touch" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
        //添加点击处理操作
        
    }];
    
    UIPreviewAction * act2 = [UIPreviewAction actionWithTitle:@"点个赞啊" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
    }];
    
    UIPreviewAction * act3 = [UIPreviewAction actionWithTitle:@"小心啊" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
        
    }];
    
    return [NSArray arrayWithObjects:act1,act2,act3, nil];
}
#endif

@end
