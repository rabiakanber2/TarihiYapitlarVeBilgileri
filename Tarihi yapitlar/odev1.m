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
% imread('C:\Users\rabia\OneDrive\Masaüstü\nurfer_rabia_kanber_121620191053\resim');
% imshow('C:\Users\rabia\OneDrive\Masaüstü\nurfer_rabia_kanber_121620191053\resim');

set(handles.secimler,'string',{'BÝR ARKEOLOJÝK KALINTI SEÇÝNÝZ.','ZEUS TAPINAÐI','STONEHENGE','ÇÝNGENE KIZI',...
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
    case 'ZEUS TAPINAÐI'
        handles.resim = imread('resim/zeus_tapinagi.jpg')
        
        
        
    case 'STONEHENGE'
        handles.resim = imread('resim/stonehenge.jpg')
        
    case 'ÇÝNGENE KIZI'
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
    set(handles.text6,'string','Anadolu’daki en iyi korunmuþ antik tapýnaklardan biri olma özelliðini taþýyor. MS. 2. yüzyýla tarihlenen tapýnak, Ýmparator Hadrianus döneminde inþa edildi. 17 adet sütundan 16’sý üst kiriþleriyle birlikte hala dimdik ayakta duran tapýnaðýn kuzeye ve batýya bakan cephelerindeki sütunlarýn üzerindeki yazýtlarda bu sütunlarýn adak sütunlarý olduklarý anlaþýlýyor. Çaðýn ünlü hekimlerinden Menekrates’in kýzý Tryhaina birlikte buraya beþ sütun baðýþladýðý biliniyor. Bunun yaný sýra Leo Quints isimli bir devlet adamý da yedi sütun yaptýrmýþ.');
end



% --- Executes on button press in sbilgi.
function sbilgi_Callback(hObject, eventdata, handles)
% hObject    handle to sbilgi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if(get(handles.sbilgi,'value')==get(handles.sbilgi,'max'));
    set(handles.text6,'string','Neolitik taþ devri ile Bronz çaðý arasýnda en az 5 kademede oluþan bir anýttýr.Keskiyle yontulmuþ, düzgünleþtirilmiþ ve dýþarýdan yerel bölgeye taþýnmýþ, dik konumundaki otuz taþtan (bunlardan hâlen on yedisi ayaktadýr) oluþan ve kavisli hâle getirilerek dik duran taþlarýn üzerine yerleþtirilen lento taþlarýný içeren ve böylelikle çember þeklinde kapý boþluklarý oluþturan tek taþ çemberdir.Stonehenge in çemberi bölen ve yapýnýn giriþinden geçen ekseninin yaz dönencesindeki (21 Haziran) gündoðumuna doðru konumlandýrýlmýþ olmasý, buna karþýlýk, yakýndaki Ýrlanda da yaklaþýk olarak ayný zamanlarda inþa edilen Newgrange anýtýnýn kýþ dönencesindeki (21 Aralýk) gündoðumuna yöneltilmiþ olmasý dikkat çekicidir.');
end
    
% --- Executes on button press in cbilgi.
function cbilgi_Callback(hObject, eventdata, handles)
% hObject    handle to cbilgi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.cbilgi,'value')==get(handles.cbilgi,'max'));
    set(handles.text6,'string',' Çingene Kýzý mozaiðine konu olan kiþinin cinsiyeti bir tartýþma konusu olmakla beraber; figürün Yer Tanrýçasý ve tanrýlarýn anasý Gaia veya Büyük Ýskender olduðuna dair farklý görüþler bulunmaktadýr.Ancak mozaiðe saç örgülerinden dolayý halk arasýnda "Çingene Kýzý" denilmektedir.Mozaik in diðer parçalarý ise 2018 yýlýnýn Aralýk ayýnda Amerika dan Türkiye ye getirildi ve Zeugma müzesinde sergilenmeye baþlandý.');
end
    

% --- Executes on button press in tbilgi.
function tbilgi_Callback(hObject, eventdata, handles)
% hObject    handle to tbilgi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.tbilgi,'value')==get(handles.tbilgi,'max'));
    set(handles.text6,'string','Qin Shi Huang henüz hayattayken MÖ 246 yýlýnda baþlanan mezarýnýn inþasý 30 küsur yýl sürmüþ, inþaatta 700 bin kiþi çalýþtýrýlmýþtýr..Boylarý 183-195 santimetre arasýnda deðiþen bu heykel askerlerin her birinin yüz ifadesi farklýdýr. Kazý alanýnda çoðu hala toprak altýnda 8000 asker, 520 atýyla birlikte 130 savaþ arabasý, 150 süvari atý bulunduðu tahmin edilmektedir.');
end
    

% --- Executes on button press in wbilgi.
function wbilgi_Callback(hObject, eventdata, handles)
% hObject    handle to wbilgi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if(get(handles.wbilgi,'value')==get(handles.wbilgi,'max'));
    set(handles.text6,'string','Bu tesisle ilgili en ünlü teori, kalenin þehre en tehlikeli giriþi korumasýdýr.Yapýnýn,çapý yaklaþýk 100 metre olan daire þeklinde arenalar, tek baþýna duran kaya bloklardan oluþan geniþ merdivenlerdir.Ayrýca bu taþlar o kadar sýk yerleþtirilmiþtir ki aralarýndan bir kaðýt parçasý bile geçemez.');
end
    


% --- Executes on button press in ze.
function ze_Callback(hObject, eventdata, handles)
% hObject    handle to ze (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ze

if(get(handles.ze,'value')==get(handles.ze,'max'));
    set(handles.yeni,'string','TÜRKÝYE');
end


% --- Executes on button press in sto.
function sto_Callback(hObject, eventdata, handles)
% hObject    handle to sto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sto

if(get(handles.sto,'value')==get(handles.sto,'max'));
    set(handles.yeni,'string','ÝNGÝLTERE');
end


% --- Executes on button press in ter.
function ter_Callback(hObject, eventdata, handles)
% hObject    handle to ter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ter
if(get(handles.ter,'value')==get(handles.ter,'max'));
    set(handles.yeni,'string','ÇÝN');
end


% --- Executes on button press in ci.
function ci_Callback(hObject, eventdata, handles)
% hObject    handle to ci (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ci
if(get(handles.ci,'value')==get(handles.ci,'max'));
    set(handles.yeni,'string','TÜRKÝYE');
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
