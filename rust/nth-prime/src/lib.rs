pub fn nth(n: usize) -> usize {
    let mut prime_count = 0;
    let mut ns: Vec<usize> = (2..(n * n + 3)).collect();

    loop {
        let prime = ns[0];
        if prime_count == n {
            return prime;
        } else {
            ns = sieve(prime, &ns[1..]);
            prime_count += 1;
        }
    }
}

fn sieve(prime: usize, ns: &[usize]) -> Vec<usize> {
    let mut result: Vec<usize> = Vec::new();
    for i in ns {
        if i % prime != 0 {
            result.push(*i);
        }
    }
    result
}
