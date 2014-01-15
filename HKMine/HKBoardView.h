//
//  HKBoardView.h
//  DrawPractice
//
//  Created by Coco on 15/12/13.
//  Copyright (c) 2013 Coco. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HKBoardViewDelegate <NSObject>

- (void)mineDidPressed;
- (void)win;
- (void)mineNumberDidChanged:(NSInteger)mineNumber;

@end

#pragma mark - 

@interface HKBoardView : UIView

@property (nonatomic, assign) NSUInteger rowCount, columnCount;
@property (nonatomic, assign) CGFloat sideLength;
@property (nonatomic, strong) NSMutableArray *cellsStates;

@property (nonatomic, assign) id<HKBoardViewDelegate> delegate;

- (void)resize;
- (void)setupWithRowCount:(NSUInteger)rowCount
              columnCount:(NSUInteger)columnCount
               sideLength:(CGFloat)sideLength
                mineCount:(NSInteger)mineCount;
@end

