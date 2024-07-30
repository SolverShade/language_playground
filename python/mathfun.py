def getHighest(numbers) -> int:
    highest = 0
    for number in numbers:
        if number > highest:
            highest = number
    return highest


def printNumbers(numberList):
    for number in numberList:
        print(number)


printNumbers({4, 5, 6, 7})
print(getHighest({4, 5, 6, 7}))

nums = {4, 5, 6, 7}
printNumbers(nums)
