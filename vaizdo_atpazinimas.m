close all
clear all
clc
%% raidžių pavyzdžių nuskaitymas ir požymių skaičiavimas
pavadinimas = 'pav/5 eilutės po 12 simbolių v11.png';
pozymiai_tinklo_mokymui = pozymiai_raidems_atpazinti(pavadinimas, 5);
%% Atpažintuvo kūrimas
% požymiai iš celių masyvo perkeliami į matricą
P = cell2mat(pozymiai_tinklo_mokymui);
% sukuriama teisingų atsakymų matrica: 12 raidžių, 5 eilutės mokymui
T = [eye(12), eye(12), eye(12), eye(12), eye(12)];
% sukuriamas SBF tinklas duotiems P ir T sąryšiams
tinklas = newrb(P,T,0,1,13);


%% Tinklo patikra | Test of the network (recognizer)
% skaičiuojamas tinklo išėjimas nežinomiems požymiams
P2 = P(:,13:24);
Y2 = sim(tinklas, P2);
% ieškoma, kuriame išėjime gauta didžiausia reikšmė
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskaičiuosime raidžių skaičių - požymių P2 stulpelių skaičių
raidziu_sk = size(P2,2);
% rezultatą saugosime kintamajame 'atsakymas'
atsakymas = [];
for k = 1:raidziu_sk
    switch b2(k)
        case 1
            % the symbol here should be the same as written first symbol in your image
            atsakymas = [atsakymas, 'e'];
        case 2
            atsakymas = [atsakymas, 'F'];
        case 3
            atsakymas = [atsakymas, 'L'];
        case 4
            atsakymas = [atsakymas, 'M'];
        case 5
            atsakymas = [atsakymas, 'n'];
        case 6
            atsakymas = [atsakymas, 'O'];
        case 7
            atsakymas = [atsakymas, 'p'];
        case 8
            atsakymas = [atsakymas, 'R'];
        case 9
            atsakymas = [atsakymas, 'S'];
        case 10
            atsakymas = [atsakymas, 'T'];
        case 11
            atsakymas = [atsakymas, 'V'];
        case 12
            atsakymas = [atsakymas, 'z'];
    end
end
% pateikime rezultatą komandiniame lange
disp(atsakymas)
% % figure(7), text(0.1,0.5,atsakymas,'FontSize',38)
%% žodžio "OpenVMS" požymių išskyrimas 
pavadinimas = 'pav/test_OpenVMS_v3.png';
pozymiai_patikrai = pozymiai_raidems_atpazinti(pavadinimas, 1);


%% Raidžių atpažinimas
% požymiai iš celių masyvo perkeliami į matricą
    P2 = cell2mat(pozymiai_patikrai);
% skaičiuojamas tinklo išėjimas nežinomiems požymiams
Y2 = sim(tinklas, P2);
% ieškoma, kuriame išėjime gauta didžiausia reikšmė
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskaičiuosime raidžių skaičių - požymių P2 stulpelių skaičių
raidziu_sk = size(P2,2);
% rezultatą saugosime kintamajame 'atsakymas'
atsakymas = [];
for k = 1:raidziu_sk
    switch b2(k)
        case 1
            % the symbol here should be the same as written first symbol in your image
            atsakymas = [atsakymas, 'e'];
        case 2
            atsakymas = [atsakymas, 'F'];
        case 3
            atsakymas = [atsakymas, 'L'];
        case 4
            atsakymas = [atsakymas, 'M'];
        case 5
            atsakymas = [atsakymas, 'n'];
        case 6
            atsakymas = [atsakymas, 'O'];
        case 7
            atsakymas = [atsakymas, 'p'];
        case 8
            atsakymas = [atsakymas, 'R'];
        case 9
            atsakymas = [atsakymas, 'S'];
        case 10
            atsakymas = [atsakymas, 'T'];
        case 11
            atsakymas = [atsakymas, 'V'];
        case 12
            atsakymas = [atsakymas, 'z'];
    end
end
% pateikime rezultatą komandiniame lange
% disp(atsakymas)
figure(8), text(0.1,0.5,atsakymas,'FontSize',38), axis off
%% žodžio "FOReVer" požymių išskyrimas 
pavadinimas = 'pav/test_Forever_v3.png';
pozymiai_patikrai = pozymiai_raidems_atpazinti(pavadinimas, 1);


%% Raidžių atpažinimas
% požymiai iš celių masyvo perkeliami į matricą
P2 = cell2mat(pozymiai_patikrai);
% skaičiuojamas tinklo išėjimas nežinomiems požymiams
Y2 = sim(tinklas, P2);
% ieškoma, kuriame išėjime gauta didžiausia reikšmė
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskaičiuosime raidžių skaičių - požymių P2 stulpelių skaičių
raidziu_sk = size(P2,2);
% rezultatą saugosime kintamajame 'atsakymas'
atsakymas = [];
for k = 1:raidziu_sk
    switch b2(k)
        case 1
            % the symbol here should be the same as written first symbol in your image
            atsakymas = [atsakymas, 'e'];
        case 2
            atsakymas = [atsakymas, 'F'];
        case 3
            atsakymas = [atsakymas, 'L'];
        case 4
            atsakymas = [atsakymas, 'M'];
        case 5
            atsakymas = [atsakymas, 'n'];
        case 6
            atsakymas = [atsakymas, 'O'];
        case 7
            atsakymas = [atsakymas, 'p'];
        case 8
            atsakymas = [atsakymas, 'R'];
        case 9
            atsakymas = [atsakymas, 'S'];
        case 10
            atsakymas = [atsakymas, 'T'];
        case 11
            atsakymas = [atsakymas, 'V'];
        case 12
            atsakymas = [atsakymas, 'z'];
    end
end
% pateikime rezultatą komandiniame lange
% disp(atsakymas)
figure(9), text(0.1,0.5,atsakymas,'FontSize',38), axis off

% Apmokymo pav.:
%   'pav/5 eilutės po 12 simbolių v11.png'
% Apmokymo tekstas: e F L M n O p R S T V z
%
% Atpažinimo pav.: 
%   'pav/test_OpenVMS_v3.png'
%   'pav/test_Forever_v3.png'
% Ranka rašytas tekstas: OpenVMS FORever
% Pr. atpažintas testas: npenVMS FORever

%% Išvados:
%
% 1. Prireikė 12-kos versijų apmokymo failo 
% ir po 3 versijas testinių failų, 
% kol programa pradėjo daugiau mažiau veikti. : (
%
% 2. Programa žodyje "OpenVMS" neatpažįsta raidės "O",
% vietoje jos pasiūlo "n".
%
% - ar tai dėl to, kad buvo per mažai eilučių apmokinimui,
% - ar dėl to, kad kad naudoja ir didžiąsias, ir mažąsias raides 
% (o programa normalizuoja jų aukščius),
% ... šito atsakymo dar neturiu.
%
% 3. Konsolėje programa išspausdina:
% NEWRB, neurons = 0, MSE = 0.0763889
% zeFLMnOpRST
%
% ... vietoje mano užduotos sekos apmokymui:
% eFLMnOpRSTVz
%
% - kodėl joje 11 elementų vietoj 12?
% - kodėl "z" atsiranda priekyje?
% ... man kol kas nežinia.
%
% Panašu, kad ilgis priklauso nuo šios eilutės:
% P2 = P(:,12:22);
%
% Manau, kad ji grąžina per mažai elementų (11).
% Įrašius vos didesnes reikšmes:
% P2 = P(:,13:24);
%
% ... outputas atitinka inputo seką:
% eFLMnOpRSTVz
%
% ... bet vietoj "O" raidė vis tiek parenkama "n".
% Galbūt šie du dalykai nesusiję.
% Perpratimui reikia daugiau laiko
% (kurį suvalgė paveikslėlių gamyba).
