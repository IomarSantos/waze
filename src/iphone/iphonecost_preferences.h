/* iphone_cost_preferences.h - iPhone traffic cost dialog
 *
 * LICENSE:
 *
 *   Copyright 2009 Avi R.
 *
 *   This file is part of RoadMap.
 *
 *   RoadMap is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version.
 *
 *   RoadMap is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with RoadMap; if not, write to the Free Software
 *   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#ifndef __IPHONE_COST_PREFERENCES__H
#define __IPHONE_COST_PREFERENCES__H


@interface CostDialog : UITableViewController /*<UITextFieldDelegate>*/ {
	NSMutableArray				*dataArray;
}

@property (nonatomic, retain) NSMutableArray	*dataArray;

- (void) show;

@end


#endif // __IPHONE_COST_PREFERENCES__H