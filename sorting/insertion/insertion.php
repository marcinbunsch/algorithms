<?php

function insertion_sort($arr) {
  for ($sorted_index = 1; $sorted_index < count($arr) - 1; $sorted_index++) {
    $key            = $arr[$sorted_index];
    $compared_index = $sorted_index - 1;
    while ($compared_index >= 0 && $arr[$compared_index] > $key) {
      $arr[$compared_index + 1] = $arr[$compared_index];
      $compared_index--;
    }
    $arr[$compared_index + 1] = $key;
  }
  return $arr;
}

$array = array(5,2,1,3,4);
echo "Before sort:\n";
echo '[' . join($array, ',') . "]\n";
$array = insertion_sort($array);
echo "After sort:\n";
echo '[' . join($array, ',') . "]\n";

?>