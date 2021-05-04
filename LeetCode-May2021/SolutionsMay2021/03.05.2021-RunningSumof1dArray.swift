//
//  RunningSumof1dArray.swift
//  LeetCode-May2021
//
//  Created by Jakub Opała on 04/05/2021.
//
//MARK:- Date: 03.05.2021
/*

 Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).

 Return the running sum of nums.

  

 Example 1:

 Input: nums = [1,2,3,4]
 Output: [1,3,6,10]
 Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
 Example 2:

 Input: nums = [1,1,1,1,1]
 Output: [1,2,3,4,5]
 Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
 Example 3:

 Input: nums = [3,1,2,10,1]
 Output: [3,4,6,16,17]
  

 Constraints:

 1 <= nums.length <= 1000
 -10^6 <= nums[i] <= 10^6

 */

import Foundation

class RunningSumof1dArray {
    func runningSum(_ nums: [Int]) -> [Int] {
        var numsReturn = [Int]()
        
        for index in (0..<nums.count) {
            if index != 0 {
                let sum = nums[index] + numsReturn[index - 1]
                numsReturn.append(sum)
            } else {
                numsReturn.append(nums[index])
            }
            
        }
        return numsReturn
    }
}
