//
//  04.05.2021-Non-decreasingArray .swift
//  LeetCode-May2021
//
//  Created by Jakub Opała on 04/05/2021.
//

//MARK:- Date: 04.05.2021

/*
 
 Given an array nums with n integers, your task is to check if it could become non-decreasing by modifying at most one element.
 
 We define an array is non-decreasing if nums[i] <= nums[i + 1] holds for every i (0-based) such that (0 <= i <= n - 2).
 
 
 
 Example 1:
 
 Input: nums = [4,2,3]
 Output: true
 Explanation: You could modify the first 4 to 1 to get a non-decreasing array.
 Example 2:
 
 Input: nums = [4,2,1]
 Output: false
 Explanation: You can't get a non-decreasing array by modify at most one element.
 
 
 Constraints:
 
 n == nums.length
 1 <= n <= 104
 -105 <= nums[i] <= 105
 
 */


import Foundation

class NonDecreasingArray {
    func checkPossibility(_ nums: [Int]) -> Bool {
        var result = true
        
        guard !nums.isEmpty else {
            result = false
            return result
        }
        
        var shoudBeMovedCount = 0
        var number = nums[0]
        
        for index in 1..<nums.count {
            if number > nums[index] {
                shoudBeMovedCount += 1
                if index != 1 && nums[index - 2] > nums[index] {
                    continue
                }
            }
            number = nums[index]
        }
        
        if shoudBeMovedCount > 1 {
            result = false
        }
        return result
    }
}


