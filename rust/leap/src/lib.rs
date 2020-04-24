pub fn is_leap_year(year: u64) -> bool {
    is_divisible(year, 4) &&
        (!is_divisible(year, 100) || is_divisible(year, 400))
}

fn is_divisible(num: u64, divisor: u64) -> bool {
    num % divisor == 0
}
