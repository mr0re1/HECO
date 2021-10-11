// Expected SSA form for BoxBlurTest
builtin.module  {
  builtin.func private @encryptedBoxBlur(%img: tensor<16xi64>) -> tensor<16xi64> {
    %img_x = affine.for %x = 0 to 4 iter_args(%img_iter_x = %img) -> tensor<16xi64> {
      %img_y = affine.for %y = 0 to 4 iter_args(%img_iter_y = %img_iter_x) -> tensor<16xi64>  {
        %value_0 = constant 0
        %value_j= affine.for %j = -1 to 2 iter_args(%value_iter_j = %value_0) -> (i64) {
          %value_i = affine.for %i = - 1 to 2 iter_args(%value_iter_i = %value_iter_j) -> (i64){
            %index_0 = std.addi %x, %i : index
            %four = constant 4: index
            %index_1 = std.muli %four, %index_0 : index
            %index_2 = std.addi %y, %j : index
            %index_3 = std.muli %four, %index_2 : index
            %index_4 = std.addi %index_1, %index_3 : index
            %sixteen = constant 16:index
            %index_5 = std.remi_unsigned %index_4, %sixteen : index
            %img_at_xyij = tensor.extract %img[%index_5] : tensor<16xi64>
            %value_updated = std.addi %value_iter_i, %img_at_xyij : i64
            affine.yield %value_updated: i64
          }
          affine.yield %value_iter_j : i64
        }
        %four = constant 4: index
        %another_index_0 = std.muli %four, %x : index
        %another_index_1 = std.addi %another_index_0, %y :index
        %img_updated = tensor.insert %value_j into %img_iter_y[%another_index_1] : tensor<16xi64>
        affine.yield %img_updated : tensor<16xi64>
      }
      affine.yield %img_y : tensor<16xi64>
    }
    return %img_x : tensor<16xi64>
  }
}
