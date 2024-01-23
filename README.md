# real_time_invoice_widget

2024 總統大選即時開票 Widget

## 使用方式
1. 加入ElectionDataProvider:

    Get.put(ElectionDataProvider.create($url));

可以參考[main_binding.dart](https://github.com/mirror-media/RealTimeInvoiceWidget/blob/main/lib/main_binding.dart)

## 參數說明

    Function()? getMoreButtonClick /// 查看更多按鈕事件
    final Color? backgroundColor; /// 背景顏色調整
    final bool? isPackage; /// 是否為Package 主要是為了處理圖片路徑，引入此套件使用時需要調整為true
    final double width; /// 整個Widge的Size 用於計算當選框框位置




