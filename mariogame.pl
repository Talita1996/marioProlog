caminhoPossivel(1,2).
caminhoPossivel(1,4).
caminhoPossivel(2,3).
caminhoPossivel(3,4).
caminhoPossivel(4,5).
caminhoPossivel(5,6).
caminhoPossivel(6,7).
caminhoPossivel(7,8).

caminhoPossivel(8,9).
caminhoPossivel(8,12).
caminhoPossivel(8,a).
caminhoPossivel(9,10).
caminhoPossivel(9,14).
caminhoPossivel(10,g).
caminhoPossivel(10,a).
caminhoPossivel(g,11).
caminhoPossivel(11,h).
caminhoPossivel(h,16).
caminhoPossivel(a,64).
caminhoPossivel(a,68).
caminhoPossivel(64,b).
caminhoPossivel(b,20).
caminhoPossivel(b,65).
caminhoPossivel(65,c).
caminhoPossivel(c,66).
caminhoPossivel(66,d).

caminhoPossivel(12,14).
caminhoPossivel(12,13).
caminhoPossivel(13,14).
caminhoPossivel(14,15).
caminhoPossivel(15,16).
caminhoPossivel(16,17).
caminhoPossivel(17,18).
caminhoPossivel(19,20).
caminhoPossivel(19,26).

caminhoPossivel(20,i).
caminhoPossivel(i,21).
caminhoPossivel(21,22).
caminhoPossivel(22,23).
caminhoPossivel(23,24).
caminhoPossivel(24,25).
caminhoPossivel(25,26).
caminhoPossivel(26,27).
caminhoPossivel(26,28).
caminhoPossivel(27,28).
caminhoPossivel(28,29).
caminhoPossivel(29,30).
caminhoPossivel(30,31).
caminhoPossivel(31,j).
caminhoPossivel(j,32).
caminhoPossivel(32,33).
caminhoPossivel(33,34).
caminhoPossivel(34,35).

caminhoPossivel(35,36).
caminhoPossivel(36,37).
caminhoPossivel(36,40).
caminhoPossivel(37,38).
caminhoPossivel(38,39).
caminhoPossivel(39,40).
caminhoPossivel(39,44).
caminhoPossivel(40,41).
caminhoPossivel(41,42).
caminhoPossivel(42,43).
caminhoPossivel(43,d).
caminhoPossivel(d,67).
caminhoPossivel(67,e).
caminhoPossivel(e,68).
caminhoPossivel(68,f).
caminhoPossivel(44,45).
caminhoPossivel(45,46).
caminhoPossivel(46,47).
caminhoPossivel(47,49).
caminhoPossivel(47,k).
caminhoPossivel(k,48).
caminhoPossivel(48,l).
caminhoPossivel(l,53).
caminhoPossivel(49,50).
caminhoPossivel(50,51).
caminhoPossivel(51,52).
caminhoPossivel(52,53).
caminhoPossivel(53,54).
caminhoPossivel(54,55).
caminhoPossivel(55,56).
caminhoPossivel(56,57).
caminhoPossivel(56,59).
caminhoPossivel(57,58).
caminhoPossivel(59,60).
caminhoPossivel(59,62).
caminhoPossivel(60,61).
caminhoPossivel(61,62).
caminhoPossivel(61,e).
caminhoPossivel(e,63).
caminhoPossivel(62,63).

caminhoPossivel(f,69).
caminhoPossivel(69,70).
caminhoPossivel(70,71).
caminhoPossivel(71,72).
caminhoPossivel(72,73).
caminhoPossivel(73,74).
caminhoPossivel(74,75).
caminhoPossivel(75,76).

mundo(1,yoshis_island).
mundo(2,yoshis_island).
mundo(3,yoshis_island).
mundo(4,yoshis_island).
mundo(5,yoshis_island).
mundo(6,yoshis_island).
mundo(7,yoshis_island).

mundo(8,world2).
mundo(9,world2).
mundo(10,world2).
mundo(12,world2).
mundo(13,world2).
mundo(14,world2).
mundo(15,world2).
mundo(16,world2).
mundo(17,world2).
mundo(18,world2).

mundo(19,vanilla_dome).
mundo(20,vanilla_dome).
mundo(26,vanilla_dome).
mundo(27,vanilla_dome).
mundo(28,vanilla_dome).
mundo(29,vanilla_dome).
mundo(30,vanilla_dome).
mundo(31,vanilla_dome).

mundo(21,world4).
mundo(22,world4).
mundo(23,world4).
mundo(24,world4).
mundo(25,world4).
mundo(32,world4).
mundo(33,world4).
mundo(34,world4).
mundo(35,world4).

mundo(46,world6).
mundo(47,world6).
mundo(49,world6).
mundo(50,world6).
mundo(51,world6).
mundo(52,world6).
mundo(53,world6).

mundo(64,star_world).
mundo(65,star_world).
mundo(66,star_world).
mundo(67,star_world).
mundo(68,star_world).
mundo(a,star_world).
mundo(b,star_world).
mundo(c,star_world).
mundo(d,star_world).
mundo(e,star_world).
mundo(f,star_world).

mundo(69,special_world).
mundo(70,special_world).
mundo(71,special_world).
mundo(72,special_world).
mundo(73,special_world).
mundo(74,special_world).
mundo(75,special_world).
mundo(76,special_world).

mundo(36,forest_of_ilusion).
mundo(37,forest_of_ilusion).
mundo(38,forest_of_ilusion).
mundo(39,forest_of_ilusion).
mundo(40,forest_of_ilusion).
mundo(41,forest_of_ilusion).
mundo(42,forest_of_ilusion).

mundo(11,valley_of_bowser).
mundo(48,valley_of_bowser).
mundo(55,valley_of_bowser).
mundo(56,valley_of_bowser).
mundo(57,valley_of_bowser).
mundo(58,valley_of_bowser).
mundo(59,valley_of_bowser).
mundo(60,valley_of_bowser).
mundo(61,valley_of_bowser).
mundo(62,valley_of_bowser).
mundo(63,valley_of_bowser).

tunel(g,10,11).
tunel(h,11,16).
tunel(i,20,21).
tunel(j,31,32).
tunel(k,47,55).
tunel(l,48,53).


/*--------------------------------------------*/
/* Listar todos os caminhos da fase X at� a Z */
/*--------------------------------------------*/
caminhos(X,Z,L):-setof(P,path(X,Z,[X],P),L),adding(L).
path(X,Z,A,[Z|A]):-caminhoPossivel(X,Z).
path(X,Z,A,P):-caminhoPossivel(X,Y),path(Y,Z,[Y|A],P).


/*-------------------------------------------------------------------------*/
/* Listar todos os mundos por onde passo em todos os caminhos de FI at� FF */
/*-------------------------------------------------------------------------*/
mundos(FI,FF,K):-setof((M,F),(path(FI,FF,[FI],F),listarMundos([],F,M)),K),adding(K).
listarMundos(L,[X|[]],[Y|L]):-mundo(X,Y).
listarMundos(L,[X|C],P):-mundo(X,Y),listarMundos([Y|L],C,P).


/*-------------------------------------------------------------------------*/
/* Adiciona todas as respostas em um arquivo para uma visualiza��o completa*/
/*-------------------------------------------------------------------------*/
adding(A) :- open('a.txt', append, Handle), write(Handle, A), close(Handle).
