$(document).ready(function(){
$('#Add').click(function(e){
  e.preventDefault();
  $.ajax({
    url: "/products/add"
    type: 'POST',
    data: {
      
    }

  });
});
});
