clear;
clc;
close;
warning('off', 'Octave:possible-matlab-short-circuit-operator');
%https://stackoverflow.com/questions/11384359/how-to-suppress-warnings-in-gnu-octave
debug = 0;
cells = 3000;

%allWords={};
stringUniques={};
stringIndex=1;
counter=0;


n_hashfunctions = 10;

printf("Ex6)\nAcabar")

[dados] = inicializar_CountFilter(cells, n_hashfunctions);

ficheiro='MobyDick.txt'
fprintf(1,'Processando %s\n',ficheiro);
fid=fopen(ficheiro);
while 1
    linha=fgetl(fid);
    if debug
      linha
    endif
    if ~ischar(linha), break, end
    if length(linha)>1
        linha=[linha sprintf('\n')];
        words = strsplit(linha,{" ",".",",","/",";"});
        for i=1 : length(words)
          if words{i}!=" " && words{i} != "." && words{i} != "," && words{i} != "/"
            %allWords{stringIndex}=words{i};
            dados = inserir_elemento_CountFilter(dados, words{i});

          endif

        endfor

    endif
   
end 
%dados = inserir_elemento_CountFilter(dados, "ola");
%dados = inserir_elemento_CountFilter(dados, "ola");

printf("A palavra Rui provavelmente existe %i vezes\n", contar_elementos_CountFilter(dados, "Rui"));
printf("A palavra of provavelmente existe %i vezes\n", contar_elementos_CountFilter(dados, "of"));
printf("A palavra in provavelmente existe %i vezes\n", contar_elementos_CountFilter(dados, "in"));

printf("Over");
