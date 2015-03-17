package leap

func IsLeapYear(year int) bool {
	if IsDivisibleBy(year, 4) &&
		!IsDivisibleBy(year, 100) ||
		IsDivisibleBy(year, 400) {
		return true
	} else {
		return false
	}
}

func IsDivisibleBy(dividend int, divisor int) bool {
	return dividend%divisor == 0
}
