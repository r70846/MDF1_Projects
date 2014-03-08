//
//  BandMateClass.h
//  BandMates
//
//  Created by Russell Gaspard on 3/7/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//
/*
 
 Russ Gaspard
 Project 1
 Mobile Development
 MDF1 1403
 
 */

#import <Foundation/Foundation.h>

@interface BandMateClass : NSObject
{
    
}

//Properties to define/describe the charicteristics of this BandMateClass object
@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)NSString *instrument;
@property (nonatomic, strong)NSString *phone;
@property (nonatomic, strong)NSString *email;
@property (nonatomic, strong)NSString *notes;
@property (nonatomic, strong)UIImage *instImage;

@end
