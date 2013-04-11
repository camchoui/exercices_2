part of exercices_2;

ex2_1(){
  var ligne2 = "Katelyn aime Chad. Charles aime l'armée. Élodie, Catherine et Marie-Catherine aiment la musique. Éric aime diablo. Camille aime le rouge à lèvre. Marc-André aime la moto.";
  var lignesplit = ligne2.split(".");
  var lignePlusLong2 = "";

  for(var i = 0 ; i < lignesplit.length ; i++)
  {

    if(lignesplit[i].length > lignePlusLong2.length)
      lignePlusLong2 = lignesplit[i];

  }

  print(lignePlusLong2);
  }

ex2_2() {
  var text ="blush brushes concealer eyeliner eyeshadows highlight lipstick mascara powder scrub";
  var motSep = text.split(" ");
  var motPlusLong = "";

  for ( var i = 0 ; i < motSep.length; i++)
  {
    if(motSep[i].length > motPlusLong.length )

      motPlusLong = motSep[i];
  }

  print (motPlusLong);

  }

ex2_3(){
  List shuffle(List makeup) {
    var random = new Random();

    for (var i = makeup.length - 1; i > 0; i--) {

      var n = random.nextInt(makeup.length);

      var list = makeup[i];
      makeup[i] = makeup[n];
      makeup[n] = list;
    }

    return makeup;
  }

 {
    var makeup = ['blush','brushes','concealer', 'eyeliner', 'eyeshadows', 'highlight', 'lipstick', 'mascara', 'powder', 'scrub'];

    print(shuffle(makeup));
  }
}


ex2_4()
{
  var listMembers = ['Chouinard: Camille, camille_c@test.ca',
                     'Tanguay: Olivier, olivier_t@test.ca',
                     'Tremblay: Katelyn, katelyn_t@test.ca',
                     'Bernier: Catherine, catherine_b@test.ca',
                     'Fournier: Marc, marc_f@test.ca'];
  var listMembers2 = ['Chouinard: Camille, camille_c@test.ca',
                      'Tanguay: Olivier, olivier_t@test.ca',
                      'Tremblay: Katelyn, katelyn_t@test.ca',
                      'Bernier: Catherine, catherine_b@test.ca',
                      'Fournier: Marc, marc_f@test.ca'];

  listMembers.sort(
      (a, b){
        return a.compareTo(b);
      }
      );

  print(listMembers2);
  print(listMembers);
  
  var caractereSpecific = listMembers2.where((lettre) => lettre.startsWith('T')).toList(); 
  
 print(caractereSpecific);
}


ex2_5(){
  List membresDynamo = ['Jacques, Richard, Jean, Gaetan, Madeleine, Thérèse'];
  List membresEagle = ['Jonathan, Charles, Marie, Anne']; 
  List clubs = [{'Nom':'Dynamo','membres': membresDynamo}, {'Nom':'Eagle','membres': membresEagle}];
print (clubs);

membresEagle.add('Simon, Justin, Catherine ');
print (clubs);

List membresKitty = ['Élodie']; 
clubs.add({'Nom':'Kitty', 'membres': membresKitty });
membresKitty.add('Camille, Caroline');
print(clubs);

membresDynamo.clear();
assert (membresDynamo.length == 0);
print(clubs);
  
 
}



