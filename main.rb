puts "Linguagem Formais e Autômatos \nRegex\n"

horarios = /(?:\s|^)((?:às\s+(?:(?:[0-1]?[0-9])|(?:2[0-4]))(?::[0-5][0-9])?)|(?:[0-9]+\s+(?:horas?))|(?:(?:[0-1][0-9])|(?:2[0-4]))(?::[0-5][0-9])?)(?:(?!(?:\s|$|\,|\.)).)*/


datas = /(?:\s|^)((?:hoje|amanha|depois\sde\samanha|antes\sde\sontem|amanhã|depois\sde\samanhã)|(?:(?:(?:[0-2]?[0-9])|(?:3[0-1]))\/(?:[0]?[0-1]|[0]?[3-9]|[1]?[0-2])\/[0-9][0-9](?:[0-9][0-9])?)|(?:\/(?:[0]?[2])\/[0-9][0-9](?:[0-9][0-9])?)|(?:(?:(?:[0-2]?[0-9])|(?:3[0-1]))\s(?:de\s)?(?:janeiro|fevereiro|março|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro)))(?:(?!(?:\s|$|\,|\.)).)*/

pessoas = /((?:|^)(?:[A-Z][a-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ]*))(?:(?!(?:\s|$|\,|\.)).)*/

tags =  /(?:\s|^)((?:\#[a-z0-9]+))(?:(?!(?:\s|$|\,|\.)).)*/

acoes = /(?:\s|^)((?:agendar|marcar|ligar|reunir|encontrar))(?:(?!(?:\s|$|\,|\.)).)*/




variaveis = []
exemplo = "agendar com José reunião 10:00 amanhã #trabalho"
  
data = exemplo.scan(datas)
horario = exemplo.scan(horarios)
pessoa = exemplo.scan(pessoas)
tag = exemplo.scan(tags)
acao = exemplo.scan(acoes)
  
variaveis.append("\nPessoa: ", pessoa)
variaveis.append("\nData: ", data)
variaveis.append("\nHorario: ", horario)
variaveis.append("\nAções: ", acao)
variaveis.append("\nTag: ", tag)
  
puts variaveis

