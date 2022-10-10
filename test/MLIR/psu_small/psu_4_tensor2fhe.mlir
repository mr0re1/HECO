module {
  func.func private @encryptedPSU(%arg0: !fhe.batched_secret<8 x f64>, %arg1: !fhe.batched_secret<4 x f64>, %arg2: !fhe.batched_secret<8 x f64>, %arg3: !fhe.batched_secret<4 x f64>) -> !fhe.secret<f64> {
    %c1_sf64 = fhe.constant 1.000000e+00 : f64
    %0 = fhe.extract %arg1[0] : <4 x f64>
    %1 = fhe.extract %arg1[1] : <4 x f64>
    %2 = fhe.extract %arg1[2] : <4 x f64>
    %3 = fhe.extract %arg1[3] : <4 x f64>
    %4 = fhe.extract %arg0[0] : <8 x f64>
    %5 = fhe.extract %arg2[0] : <8 x f64>
    %6 = fhe.sub(%4, %5) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %7 = fhe.multiply(%6, %6) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %8 = fhe.sub(%c1_sf64, %7) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %9 = fhe.extract %arg0[1] : <8 x f64>
    %10 = fhe.extract %arg2[1] : <8 x f64>
    %11 = fhe.sub(%9, %10) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %12 = fhe.multiply(%11, %11) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %13 = fhe.sub(%c1_sf64, %12) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %14 = fhe.multiply(%13, %8) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %15 = fhe.sub(%c1_sf64, %14) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %16 = fhe.extract %arg2[2] : <8 x f64>
    %17 = fhe.sub(%4, %16) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %18 = fhe.multiply(%17, %17) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %19 = fhe.sub(%c1_sf64, %18) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %20 = fhe.extract %arg2[3] : <8 x f64>
    %21 = fhe.sub(%9, %20) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %22 = fhe.multiply(%21, %21) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %23 = fhe.sub(%c1_sf64, %22) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %24 = fhe.multiply(%23, %19) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %25 = fhe.sub(%c1_sf64, %24) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %26 = fhe.extract %arg2[4] : <8 x f64>
    %27 = fhe.sub(%4, %26) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %28 = fhe.multiply(%27, %27) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %29 = fhe.sub(%c1_sf64, %28) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %30 = fhe.extract %arg2[5] : <8 x f64>
    %31 = fhe.sub(%9, %30) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %32 = fhe.multiply(%31, %31) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %33 = fhe.sub(%c1_sf64, %32) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %34 = fhe.multiply(%33, %29) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %35 = fhe.sub(%c1_sf64, %34) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %36 = fhe.extract %arg2[6] : <8 x f64>
    %37 = fhe.sub(%4, %36) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %38 = fhe.multiply(%37, %37) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %39 = fhe.sub(%c1_sf64, %38) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %40 = fhe.extract %arg2[7] : <8 x f64>
    %41 = fhe.sub(%9, %40) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %42 = fhe.multiply(%41, %41) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %43 = fhe.sub(%c1_sf64, %42) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %44 = fhe.multiply(%43, %39) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %45 = fhe.sub(%c1_sf64, %44) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %46 = fhe.multiply(%0, %45, %35, %25, %15) : (!fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %47 = fhe.extract %arg0[2] : <8 x f64>
    %48 = fhe.sub(%47, %5) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %49 = fhe.multiply(%48, %48) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %50 = fhe.sub(%c1_sf64, %49) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %51 = fhe.extract %arg0[3] : <8 x f64>
    %52 = fhe.sub(%51, %10) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %53 = fhe.multiply(%52, %52) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %54 = fhe.sub(%c1_sf64, %53) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %55 = fhe.multiply(%54, %50) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %56 = fhe.sub(%c1_sf64, %55) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %57 = fhe.sub(%47, %16) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %58 = fhe.multiply(%57, %57) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %59 = fhe.sub(%c1_sf64, %58) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %60 = fhe.sub(%51, %20) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %61 = fhe.multiply(%60, %60) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %62 = fhe.sub(%c1_sf64, %61) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %63 = fhe.multiply(%62, %59) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %64 = fhe.sub(%c1_sf64, %63) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %65 = fhe.sub(%47, %26) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %66 = fhe.multiply(%65, %65) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %67 = fhe.sub(%c1_sf64, %66) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %68 = fhe.sub(%51, %30) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %69 = fhe.multiply(%68, %68) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %70 = fhe.sub(%c1_sf64, %69) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %71 = fhe.multiply(%70, %67) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %72 = fhe.sub(%c1_sf64, %71) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %73 = fhe.sub(%47, %36) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %74 = fhe.multiply(%73, %73) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %75 = fhe.sub(%c1_sf64, %74) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %76 = fhe.sub(%51, %40) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %77 = fhe.multiply(%76, %76) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %78 = fhe.sub(%c1_sf64, %77) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %79 = fhe.multiply(%78, %75) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %80 = fhe.sub(%c1_sf64, %79) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %81 = fhe.multiply(%1, %80, %72, %64, %56) : (!fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %82 = fhe.extract %arg0[4] : <8 x f64>
    %83 = fhe.sub(%82, %5) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %84 = fhe.multiply(%83, %83) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %85 = fhe.sub(%c1_sf64, %84) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %86 = fhe.extract %arg0[5] : <8 x f64>
    %87 = fhe.sub(%86, %10) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %88 = fhe.multiply(%87, %87) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %89 = fhe.sub(%c1_sf64, %88) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %90 = fhe.multiply(%89, %85) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %91 = fhe.sub(%c1_sf64, %90) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %92 = fhe.sub(%82, %16) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %93 = fhe.multiply(%92, %92) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %94 = fhe.sub(%c1_sf64, %93) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %95 = fhe.sub(%86, %20) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %96 = fhe.multiply(%95, %95) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %97 = fhe.sub(%c1_sf64, %96) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %98 = fhe.multiply(%97, %94) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %99 = fhe.sub(%c1_sf64, %98) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %100 = fhe.sub(%82, %26) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %101 = fhe.multiply(%100, %100) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %102 = fhe.sub(%c1_sf64, %101) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %103 = fhe.sub(%86, %30) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %104 = fhe.multiply(%103, %103) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %105 = fhe.sub(%c1_sf64, %104) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %106 = fhe.multiply(%105, %102) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %107 = fhe.sub(%c1_sf64, %106) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %108 = fhe.sub(%82, %36) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %109 = fhe.multiply(%108, %108) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %110 = fhe.sub(%c1_sf64, %109) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %111 = fhe.sub(%86, %40) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %112 = fhe.multiply(%111, %111) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %113 = fhe.sub(%c1_sf64, %112) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %114 = fhe.multiply(%113, %110) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %115 = fhe.sub(%c1_sf64, %114) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %116 = fhe.multiply(%2, %115, %107, %99, %91) : (!fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %117 = fhe.extract %arg0[6] : <8 x f64>
    %118 = fhe.sub(%117, %5) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %119 = fhe.multiply(%118, %118) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %120 = fhe.sub(%c1_sf64, %119) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %121 = fhe.extract %arg0[7] : <8 x f64>
    %122 = fhe.sub(%121, %10) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %123 = fhe.multiply(%122, %122) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %124 = fhe.sub(%c1_sf64, %123) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %125 = fhe.multiply(%124, %120) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %126 = fhe.sub(%c1_sf64, %125) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %127 = fhe.sub(%117, %16) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %128 = fhe.multiply(%127, %127) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %129 = fhe.sub(%c1_sf64, %128) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %130 = fhe.sub(%121, %20) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %131 = fhe.multiply(%130, %130) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %132 = fhe.sub(%c1_sf64, %131) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %133 = fhe.multiply(%132, %129) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %134 = fhe.sub(%c1_sf64, %133) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %135 = fhe.sub(%117, %26) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %136 = fhe.multiply(%135, %135) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %137 = fhe.sub(%c1_sf64, %136) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %138 = fhe.sub(%121, %30) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %139 = fhe.multiply(%138, %138) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %140 = fhe.sub(%c1_sf64, %139) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %141 = fhe.multiply(%140, %137) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %142 = fhe.sub(%c1_sf64, %141) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %143 = fhe.sub(%117, %36) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %144 = fhe.multiply(%143, %143) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %145 = fhe.sub(%c1_sf64, %144) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %146 = fhe.sub(%121, %40) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %147 = fhe.multiply(%146, %146) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %148 = fhe.sub(%c1_sf64, %147) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %149 = fhe.multiply(%148, %145) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %150 = fhe.sub(%c1_sf64, %149) : (!fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %151 = fhe.multiply(%3, %150, %142, %134, %126) : (!fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    %152 = fhe.add(%151, %116, %81, %46, %3, %2, %0, %1) : (!fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>, !fhe.secret<f64>) -> !fhe.secret<f64>
    return %152 : !fhe.secret<f64>
  }
}
