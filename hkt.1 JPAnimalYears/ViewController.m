//
//  ViewController.m
//  hkt.1 JPAnimalYears
//
//  Created by Test P07 on 23/09/16.
//  Copyright © 2016 Test P07. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    myTextField = [[UITextField alloc]initWithFrame:CGRectMake(20, 40, 370, 40)];
  //  myTextField.background = [UIColor yellowColor];
    myTextField.backgroundColor=[UIColor yellowColor];
    myTextField.textAlignment = NSTextAlignmentCenter;
    myTextField.keyboardType = UIKeyboardTypeNumberPad;
    [self.view addSubview:myTextField];
    
    
    
    myLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 100, 370, 40)];
    myLabel.backgroundColor = [UIColor whiteColor];
    myLabel.textAlignment = NSTextAlignmentCenter;
    myLabel.textColor =[UIColor blackColor];
    [self.view addSubview:myLabel];
    
    
    UIButton *calculateCatYears=[[UIButton alloc]initWithFrame:CGRectMake(20, 160, 200, 40)];
    [ calculateCatYears setTitle:@"Cat Years" forState:UIControlStateNormal];
    
    [calculateCatYears setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [self.view addSubview:calculateCatYears];
    [calculateCatYears addTarget:self action:@selector(handleCat) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    UIButton *calculateDogYears=[[UIButton alloc]initWithFrame:CGRectMake(20, 200, 200, 40)];
    [ calculateDogYears setTitle:@"Dog Years" forState:UIControlStateNormal];
    
    [calculateDogYears setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [self.view addSubview:calculateDogYears];
    [calculateDogYears addTarget:self action:@selector(handleDog) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    
    
    UIButton *calculateTurtleYears=[[UIButton alloc]initWithFrame:CGRectMake(20, 240, 200, 40)];
    [ calculateTurtleYears setTitle:@"Cat Years" forState:UIControlStateNormal];
    
    [calculateTurtleYears setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [self.view addSubview:calculateTurtleYears];
    [calculateTurtleYears addTarget:self action:@selector(handleTurtle) forControlEvents:UIControlEventTouchUpInside];

    
    
    UIButton *clear=[[UIButton alloc]initWithFrame:CGRectMake(300, 160, 50, 50)];
    [ clear setTitle:@"Cat Years" forState:UIControlStateNormal];
    
    [clear setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [self.view addSubview:clear];
    [clear addTarget:self action:@selector(handleclear) forControlEvents:UIControlEventTouchUpInside];


    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)handleCat

{
    [self calculateCatYear:myTextField.text];
    //[self.displayContent=myTextField.text];
    
}
-(void)calculateCatYear:(NSString *)content
{
    int intAge= content.intValue;
    if(content)
        
    {
        if ( intAge>0 && intAge<110)
        {
            NSString *currentValueString=myTextField.text;
            float currentValueInt=currentValueString.floatValue;
            currentValueInt=currentValueInt/7;
            NSString *newValueString=[NSString stringWithFormat:@"Cat years is %0.02f",currentValueInt];
            myLabel.text = newValueString;
            
        }
        else
        {
            myLabel.text=@"Please enter the agr between 1 to 110";
        }
    }
    else
    {
        myLabel.text = @"pLease enter the human age";
    }
}







-(void)handleDog
{
    [self calculeatDogYears:myTextField.text];
    
}
-(void)calculeatDogYears:(NSString *)content
{
    int intAge= content.intValue;
    if(content)
        
    {
        if ( intAge>0 && intAge<110)
        {
            NSString *currentValueString=myTextField.text;
            float currentValueInt=currentValueString.floatValue;
            currentValueInt=currentValueInt/4;
            NSString *newValueString=[NSString stringWithFormat:@"Cat years is %0.02f",currentValueInt];
            myLabel.text = newValueString;
            
        }
        else
        {
            myLabel.text=@"Please enter the agr between 1 to 110";
        }
    }
    else
    {
        myLabel.text = @"pLease enter the human age";
    }
}









-(void)handleTurtle
{
    [self calculeatTurtleYears:myTextField.text];
    
}
-(void)calculeatTurtleYears:(NSString *)content
{
    int intAge= content.intValue;
    if(content)
        
    {
        if ( intAge>0 && intAge<110)
        {
            NSString *currentValueString=myTextField.text;
            float currentValueInt=currentValueString.floatValue;
            currentValueInt=currentValueInt/0.2;
            NSString *newValueString=[NSString stringWithFormat:@"Cat years is %0.02f",currentValueInt];
            myLabel.text = newValueString;
            
        }
        else
        {
            myLabel.text=@"Please enter the agr between 1 to 110";
        }
    }
    else
    {
        myLabel.text = @"pLease enter the human age";
    }
}


-(void)handleclear
{
    myTextField.text = @" ";
}




@end
