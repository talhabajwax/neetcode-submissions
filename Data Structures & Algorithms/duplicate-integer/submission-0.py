class Solution:
    def hasDuplicate(self, nums: List[int]) -> bool:
        nums.sort()
        for i in range(0,len(nums)):
            for j in range(i+1,len(nums)):
                if nums[i] == nums[j]:
                    return True
        else:
            return False

        