// $(function(){
//    for (var i=0 ; i <= 2 ; i++){show_image_preview(i);}
//  });
 
//  function show_image_preview(num) {
//    $("#prototype_prototype_images_attributes_"+num+"_image").on("change", function() {var file = this.files;
//      if (!file[0].type.match(/^image\/(png|jpeg|gif)$/)) return;
//      var img = new Image();
//      var reader = new FileReader();
//      reader.onload = function (e) {$("#image_preview"+num).attr('src', e.target.result);}
//      reader.readAsDataURL(file[0]);
//      });
//  };

//  $(function add_image_form(){
//    $(".image-upload-plus").on("click", function(){$(".image-upload-plus").hide();
//    $(".image-upload.hidden").removeClass("hidden");
//    });
//  });

// 即時関数 定義と同時に呼び出す
// 第一引数にイベントからのメソッド。
// EventLisner オブジェクトとメソッドを紐付ける。あるイベントと関数を紐付ける。
// DOMオブジェクト jsはブラウザのの上で動く。jsは生のhtmlを扱えない。htmlをjsが扱えるに変えたのがDOMオブジェクト。
// 生jsは一つのオブジェクトだけ.jqueryオブジェクトは全ての要素を取得するDOM要素
// イベントリスナonの引数ないでthisを使うと、イベントが発生したDOMオブジェクトを取得することができる
// DOMオブジェクトはjqueryメソッドを使えない

$(function(){
  console.log($('.image_preview input[type="file"]'))
  $('.image_preview input[type="file"]').on('change', function(){
  console.log(this)
  });
});
