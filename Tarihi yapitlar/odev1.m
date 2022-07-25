function varargout = odev1(varargin)
% ODEV1 MATLAB code for odev1.fig
%      ODEV1, by itself, creates a new ODEV1 or raises the existing
%      singleton*.
%
%      H = ODEV1 returns the handle to a new ODEV1 or the handle to
%      the existing singleton*.
%
%      ODEV1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ODEV1.M with the given input arguments.
%
%      ODEV1('Property','Value',...) creates a new ODEV1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before odev1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to odev1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help odev1

% Last Modified by GUIDE v2.5 15-Apr-2020 17:07:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @odev1_OpeningFcn, ...
                   'gui_OutputFcn',  @odev1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before odev1 is made visible.
function odev1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to odev1 (see VARARGIN)

% Choose default command line output for odev1
handles.output = hObject;
% imread('C:\Users\rabia\OneDrive\Masa�st�\nurfer_rabia_kanber_121620191053\resim');
% imshow('C:\Users\rabia\OneDrive\Masa�st�\nurfer_rabia_kanber_121620191053\resim');

set(handles.secimler,'string',{'B�R ARKEOLOJ�K KALINTI SE��N�Z.','ZEUS TAPINA�I','STONEHENGE','��NGENE KIZI',...
    'TERRAKOTTA ORDUSU','SAKSAYWAMAN'});



% Update handles structure
guidata(hObject, handles);

% UIWAIT makes odev1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = odev1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
deger=get(hObject,'value');
set(handles.text2,'string',deger);

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in secimler.
function secimler_Callback(hObject, eventdata, handles)
% hObject    handle to secimler (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns secimler contents as cell array
%        contents{get(hObject,'Value')} returns selected item from secimler


global image
imshow(image)



liste = cellstr(get(handles.secimler,'String'));
deger = get(handles.secimler,'Value')
secilen = liste{deger}

switch secilen
    case 'ZEUS TAPINA�I'
        handles.resim = imread('resim/zeus_tapinagi.jpg')
        
        
        
    case 'STONEHENGE'
        handles.resim = imread('resim/stonehenge.jpg')
        
    case '��NGENE KIZI'
        handles.resim = imread('resim/cingene_kizi.jpg')
        
    case 'TERRAKOTTA ORDUSU'
        handles.resim = imread('resim/terrakotta_ordusu.jpg')
       
    case 'SAKSAYWAMAN'
        handles.resim = imread('resim/saksaywaman.jpg')
    otherwise
        handles.resim = imread('resim/resim.jpg');
        
end
imshow(handles.resim)
guidata(hObject, handles);




% --- Executes during object creation, after setting all properties.
function secimler_CreateFcn(hObject, eventdata, handles)
% hObject    handle to secimler (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cikis.
function cikis_Callback(hObject, eventdata, handles)
% hObject    handle to cikis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

delete(handles.figure1);
clear

% --- Executes on button press in siyahbeyaz.
function siyahbeyaz_Callback(hObject, eventdata, handles)
% hObject    handle to siyahbeyaz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global image
x=im2bw(image);
imshow(x);



% --- Executes on button press in griton.
function griton_Callback(hObject, eventdata, handles)
% hObject    handle to griton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in kizil.
function kizil_Callback(hObject, eventdata, handles)
% hObject    handle to kizil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in sifirla.
function sifirla_Callback(hObject, eventdata, handles)
% hObject    handle to sifirla (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in zbilgi.
function zbilgi_Callback(hObject, eventdata, handles)
% hObject    handle to zbilgi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDAT

if(get(handles.zbilgi,'value')==get(handles.zbilgi,'max'));
    set(handles.text6,'string','Anadolu�daki en iyi korunmu� antik tap�naklardan biri olma �zelli�ini ta��yor. MS. 2. y�zy�la tarihlenen tap�nak, �mparator Hadrianus d�neminde in�a edildi. 17 adet s�tundan 16�s� �st kiri�leriyle birlikte hala dimdik ayakta duran tap�na��n kuzeye ve bat�ya bakan cephelerindeki s�tunlar�n �zerindeki yaz�tlarda bu s�tunlar�n adak s�tunlar� olduklar� anla��l�yor. �a��n �nl� hekimlerinden Menekrates�in k�z� Tryhaina birlikte buraya be� s�tun ba���lad��� biliniyor. Bunun yan� s�ra Leo Quints isimli bir devlet adam� da yedi s�tun yapt�rm��.');
end



% --- Executes on button press in sbilgi.
function sbilgi_Callback(hObject, eventdata, handles)
% hObject    handle to sbilgi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if(get(handles.sbilgi,'value')==get(handles.sbilgi,'max'));
    set(handles.text6,'string','Neolitik ta� devri ile Bronz �a�� aras�nda en az 5 kademede olu�an bir an�tt�r.Keskiyle yontulmu�, d�zg�nle�tirilmi� ve d��ar�dan yerel b�lgeye ta��nm��, dik konumundaki otuz ta�tan (bunlardan h�len on yedisi ayaktad�r) olu�an ve kavisli h�le getirilerek dik duran ta�lar�n �zerine yerle�tirilen lento ta�lar�n� i�eren ve b�ylelikle �ember �eklinde kap� bo�luklar� olu�turan tek ta� �emberdir.Stonehenge in �emberi b�len ve yap�n�n giri�inden ge�en ekseninin yaz d�nencesindeki (21 Haziran) g�ndo�umuna do�ru konumland�r�lm�� olmas�, buna kar��l�k, yak�ndaki �rlanda da yakla��k olarak ayn� zamanlarda in�a edilen Newgrange an�t�n�n k�� d�nencesindeki (21 Aral�k) g�ndo�umuna y�neltilmi� olmas� dikkat �ekicidir.');
end
    
% --- Executes on button press in cbilgi.
function cbilgi_Callback(hObject, eventdata, handles)
% hObject    handle to cbilgi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.cbilgi,'value')==get(handles.cbilgi,'max'));
    set(handles.text6,'string',' �ingene K�z� mozai�ine konu olan ki�inin cinsiyeti bir tart��ma konusu olmakla beraber; fig�r�n Yer Tanr��as� ve tanr�lar�n anas� Gaia veya B�y�k �skender oldu�una dair farkl� g�r��ler bulunmaktad�r.Ancak mozai�e sa� �rg�lerinden dolay� halk aras�nda "�ingene K�z�" denilmektedir.Mozaik in di�er par�alar� ise 2018 y�l�n�n Aral�k ay�nda Amerika dan T�rkiye ye getirildi ve Zeugma m�zesinde sergilenmeye ba�land�.');
end
    

% --- Executes on button press in tbilgi.
function tbilgi_Callback(hObject, eventdata, handles)
% hObject    handle to tbilgi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.tbilgi,'value')==get(handles.tbilgi,'max'));
    set(handles.text6,'string','Qin Shi Huang hen�z hayattayken M� 246 y�l�nda ba�lanan mezar�n�n in�as� 30 k�sur y�l s�rm��, in�aatta 700 bin ki�i �al��t�r�lm��t�r..Boylar� 183-195 santimetre aras�nda de�i�en bu heykel askerlerin her birinin y�z ifadesi farkl�d�r. Kaz� alan�nda �o�u hala toprak alt�nda 8000 asker, 520 at�yla birlikte 130 sava� arabas�, 150 s�vari at� bulundu�u tahmin edilmektedir.');
end
    

% --- Executes on button press in wbilgi.
function wbilgi_Callback(hObject, eventdata, handles)
% hObject    handle to wbilgi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if(get(handles.wbilgi,'value')==get(handles.wbilgi,'max'));
    set(handles.text6,'string','Bu tesisle ilgili en �nl� teori, kalenin �ehre en tehlikeli giri�i korumas�d�r.Yap�n�n,�ap� yakla��k 100 metre olan daire �eklinde arenalar, tek ba��na duran kaya bloklardan olu�an geni� merdivenlerdir.Ayr�ca bu ta�lar o kadar s�k yerle�tirilmi�tir ki aralar�ndan bir ka��t par�as� bile ge�emez.');
end
    


% --- Executes on button press in ze.
function ze_Callback(hObject, eventdata, handles)
% hObject    handle to ze (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ze

if(get(handles.ze,'value')==get(handles.ze,'max'));
    set(handles.yeni,'string','T�RK�YE');
end


% --- Executes on button press in sto.
function sto_Callback(hObject, eventdata, handles)
% hObject    handle to sto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sto

if(get(handles.sto,'value')==get(handles.sto,'max'));
    set(handles.yeni,'string','�NG�LTERE');
end


% --- Executes on button press in ter.
function ter_Callback(hObject, eventdata, handles)
% hObject    handle to ter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ter
if(get(handles.ter,'value')==get(handles.ter,'max'));
    set(handles.yeni,'string','��N');
end


% --- Executes on button press in ci.
function ci_Callback(hObject, eventdata, handles)
% hObject    handle to ci (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ci
if(get(handles.ci,'value')==get(handles.ci,'max'));
    set(handles.yeni,'string','T�RK�YE');
end


% --- Executes on button press in sa.
function sa_Callback(hObject, eventdata, handles)
% hObject    handle to sa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sa
if(get(handles.sa,'value')==get(handles.sa,'max'));
    set(handles.yeni,'string','PERU');
end
