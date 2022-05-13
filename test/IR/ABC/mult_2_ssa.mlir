module {
  func private @encryptedDouble(%arg0: !fhe.secret<f64>) -> !fhe.secret<f64> {
    %c2 = arith.constant 2 : index
    %0 = fhe.multiply(%arg0, %c2) : (!fhe.secret<f64>, index) -> !fhe.secret<f64>
    return %0 : !fhe.secret<f64>
  }
}

