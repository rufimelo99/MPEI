clear;
clc;
close;
warning('off', 'Octave:possible-matlab-short-circuit-operator');
%https://stackoverflow.com/questions/11384359/how-to-suppress-warnings-in-gnu-octave
debug = 1;
funcoes_k_dispersao=3;


printf("Ex5)\n Nao concluido")
[dados] = inicializar_BloomFilter(8000, funcoes_k_dispersao);

alpha = ["a":"z" "A":"Z" ];  


ficheiro = 'MobyDick.txt';

counter=0;
allWords={};
stringUniques={};
stringIndex=1;
cells = 100000;
n_hashfunctions = 3;
fprintf(1,'Processando %s\n',ficheiro);
fid=fopen(ficheiro);

while 1

    % ler uma linha do ficheiro
    linha=fgetl(fid);

    % se nao for um caractere termina
    if ~ischar(linha), break, end

    if length(linha)>1
        linha=[linha sprintf('\n')];
        words = strsplit(linha,{" ",".",",","/",";"});
        for i=1 : length(words)
          if words{i}!=" " && words{i} != "." && words{i} != "," && words{i} != "/"
             %allWords{stringIndex}=words{i};
            [dados] = inserir_elemento(dados, words{i});
            stringIndex++;    
          endif

        endfor

    endif
   
end 
allWords={};
stringUniques={};
stringIndex=1;
counter=0;
ficheiro2='pg26017.txt';
fprintf(1,'Processando %s\n',ficheiro2);
fid2=fopen(ficheiro2);

while 1

    % ler uma linha do ficheiro
    linha=fgetl(fid2);

    % se nao for um caractere termina
    if ~ischar(linha), break, end

    if length(linha)>1
        linha=[linha sprintf('\n')];
        words = strsplit(linha,{" ",".",",","/",";"});
        for i=1 : length(words)
          if words{i}!=" " && words{i} != "." && words{i} != "," && words{i} != "/"
            allWords{stringIndex}=words{i};
            if (verificar_elemento(dados,  words{i}) == 1);
              counter++;
            endif
          endif

        endfor

    endif
   
end 
   
probabilidade_segundo_texto_nao_primeiro=counter;
printf("Existiu %i palavras(vezes) que aparecem no segundo texto e nao aparecem no segundo", probabilidade_segundo_texto_nao_primeiro)