pub fn raindrops(n: u32) -> String {
    let mut result = String::new();

    if has_factor(n, 3) {
        result += "Pling";
    }
    if has_factor(n, 5) {
        result += "Plang";
    }
    if has_factor(n, 7) {
        result += "Plong";
    }
    if result == "" {
        result += &n.to_string();
    }
    result
}

fn has_factor(n: u32, i: u32) -> bool {
    n % i == 0
}
