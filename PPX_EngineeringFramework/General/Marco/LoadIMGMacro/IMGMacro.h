//
//  LoadIMGMacro.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/22.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#ifndef BaseIMGMacro_h
#define BaseIMGMacro_h

#define BXImg(NAME, EXT)        [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:(NAME) ofType:(EXT)]]
#define BX_IMAGE(imgName) [UIImage imageNamed:imgName]



#endif /* BaseIMGMacro_h */
