module {
  func private @encryptedDouble(%arg0: !fhe.secret<f64>) -> !fhe.secret<f64> {
    %0 = fhe.add(%arg0, %arg0) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    return %0 : !fhe.secret<f64>
  }
}

