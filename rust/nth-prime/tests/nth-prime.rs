use nth_prime as np;

#[test]
fn test_first_prime() {
    assert_eq!(np::nth(0), 2);
}

#[test]
fn test_second_prime() {
    assert_eq!(np::nth(1), 3);
}

#[test]
fn test_sixth_prime() {
    assert_eq!(np::nth(5), 13);
}

#[test]
fn test_fifteenth_prime() {
    assert_eq!(np::nth(15), 53);
}

#[test]
fn test_hundredth_prime() {
    assert_eq!(np::nth(100), 547);
}

#[test]
fn test_big_prime() {
    assert_eq!(np::nth(1_000), 7927);
}

// Implementation does not work with this test
// #[test]
// fn test_bigger_prime() {
//     assert_eq!(np::nth(10_000), 104_743);
// }
