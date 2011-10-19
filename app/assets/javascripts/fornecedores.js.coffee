$ ->
  $('#cnpj').hide()

  $('#fornecedor_pj').click ->
    $('#cpf').toggle()
    $('#cnpj').toggle()


# em JavaScript seria:
# $(function(){
#   $('#fornecedor_pj').click(function(){
#     $('#cpf').toggle();
#     $('#cnpj').toggle();
#   });
# });