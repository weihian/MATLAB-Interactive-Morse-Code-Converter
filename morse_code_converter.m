function varargout = YongWeiHian20194532(varargin)
% YONGWEIHIAN20194532 MATLAB code for YongWeiHian20194532.fig
%      YONGWEIHIAN20194532, by itself, creates a new YONGWEIHIAN20194532 or raises the existing
%      singleton*.
%
%      H = YONGWEIHIAN20194532 returns the handle to a new YONGWEIHIAN20194532 or the handle to
%      the existing singleton*.
%
%      YONGWEIHIAN20194532('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in YONGWEIHIAN20194532.M with the given input arguments.
%
%      YONGWEIHIAN20194532('Property','Value',...) creates a new YONGWEIHIAN20194532 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before YongWeiHian20194532_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to YongWeiHian20194532_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help YongWeiHian20194532

% Last Modified by GUIDE v2.5 13-Apr-2020 14:56:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @YongWeiHian20194532_OpeningFcn, ...
                   'gui_OutputFcn',  @YongWeiHian20194532_OutputFcn, ...
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


% --- Executes just before YongWeiHian20194532 is made visible.
function YongWeiHian20194532_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to YongWeiHian20194532 (see VARARGIN)

% Choose default command line output for YongWeiHian20194532
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes YongWeiHian20194532 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = YongWeiHian20194532_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_text_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text as text
%        str2double(get(hObject,'String')) returns contents of edit_text as a double
text = upper(get(hObject,'String'));
handles.edit_text = text;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_morse_Callback(hObject, eventdata, handles)
% hObject    handle to edit_morse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_morse as text
%        str2double(get(hObject,'String')) returns contents of edit_morse as a double
morse = get(hObject,'String');
handles.edit_morse = morse;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit_morse_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_morse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pb_etm.
function pb_etm_Callback(hObject, eventdata, handles)
% hObject    handle to pb_etm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
decoded = handles.edit_text;
morse={'.----','..---','...--','....-','.....','-....','--...','---..','----.','-----','.-','-...','-.-.','-..','.','..-.','--.','....','..','.---','-.-','.-..','--','-.','---','.--.','--.-','.-.','...','-','..-','...-','.--','-..-','-.--','--..','.-.-.-','|'};  
letter={'1','2','3','4','5','6','7','8','9','0','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','STOP',' '};


i=0;
morsecode={''};
for i = 1:length(decoded)
    [~,Morsecode] = ismember(decoded(i),letter);
    morsecode=[morsecode,morse(Morsecode)];
end
C = morsecode;
C=[C(:)];
set(handles.morse,'string',C);
disp(C);

nchar = numel(decoded);
set(handles.wordcount,'string',nchar);
set(handles.morsecodecount,'string',nchar);

% --- Executes on button press in pb_reset.
function pb_reset_Callback(hObject, eventdata, handles)
% hObject    handle to pb_reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.edit_text,'string','');
set(handles.edit_morse,'string','');
set(handles.morse,'string','');
set(handles.text,'string','');
set(handles.wordcount,'string','');
set(handles.morsecodecount,'string','');

% --- Executes on button press in pb_mte.
function pb_mte_Callback(hObject, eventdata, handles)
% hObject    handle to pb_mte (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

code = handles.edit_morse;
code = strsplit(code);
text={' '};

morsecode={'.----','..---','...--','....-','.....','-....','--...','---..','----.','-----','.-','-...','-.-.','-..','.','..-.','--.','....','..','.---','-.-','.-..','--','-.','---','.--.','--.-','.-.','...','-','..-','...-','.--','-..-','-.--','--..','.-.-.-','|'};  
letter={'1','2','3','4','5','6','7','8','9','0','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','STOP',' '};

for i=1:length(code)
    if isempty(find(strcmpi(morsecode, code(i))) == 1)
        warndlg('Unidentified Character', 'Invalid Input');
        break;
    end
j=0;
   for j=1:length(morsecode)    
       if strcmp(code(i),morsecode(j)) == 1
            text=append(text,letter(j));
       end
   end  
end
set(handles.text,'String',text);
disp(text);

nchar = numel(code);
set(handles.wordcount,'string',nchar);
set(handles.morsecodecount,'string',nchar);


% --------------------------------------------------------------------
function file_menu_Callback(hObject, eventdata, handles)
% hObject    handle to file_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function table_menu_Callback(hObject, eventdata, handles)
% hObject    handle to table_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function theme_menu_Callback(hObject, eventdata, handles)
% hObject    handle to theme_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function help_menu_Callback(hObject, eventdata, handles)
% hObject    handle to help_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

url = 'https://www.google.com/';
web(url)

% --------------------------------------------------------------------
function theme_default_Callback(hObject, eventdata, handles)
% hObject    handle to theme_default (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(gcf, 'Color',[0.94 0.94 0.94]);
set(handles.title,'Foregroundcolor',[0.15 0.15 0.15]);
set(handles.title,'Background',[0.65 0.65 0.65]);
set(handles.English, 'Background',[0.65 0.65 0.65]);
set(handles.Morse,'Background',[0.65 0.65 0.65]);
set(handles.ETM_button,'Background',[0.65 0.65 0.65]);
set(handles.MTE_button,'Background',[0.65 0.65 0.65]);
set(handles.reset_button,'Background',[0.65 0.65 0.65]);
set(handles.Morse2,'Background',[0.65 0.65 0.65]);
set(handles.English2,'Background',[0.65 0.65 0.65]);

% --------------------------------------------------------------------
function theme_light_Callback(hObject, eventdata, handles)
% hObject    handle to theme_light (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(gcf, 'Color',[0.42 0.75 0.92]);
set(handles.title,'Foregroundcolor',[0.15 0.15 0.15]);
set(handles.title,'Background',[0.84 0.96 0.96]);
set(handles.English, 'Background',[0.84 0.96 0.96]);
set(handles.Morse,'Background',[0.84 0.96 0.96]);
set(handles.ETM_button,'Background',[0.84 0.96 0.96]);
set(handles.MTE_button,'Background',[0.84 0.96 0.96]);
set(handles.reset_button,'Background',[0.84 0.96 0.96]);
set(handles.Morse2,'Background',[0.84 0.96 0.96]);
set(handles.English2,'Background',[0.84 0.96 0.96]);
% --------------------------------------------------------------------
function theme_dark_Callback(hObject, eventdata, handles)
% hObject    handle to theme_dark (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(gcf, 'Color',[0.21 0.21 0.19]);
set(handles.title,'Foregroundcolor',[0.15 0.15 0.15]);
set(handles.title,'Background',[0.89 0.88 0.83]);
set(handles.English, 'Background',[0.89 0.88 0.83]);
set(handles.Morse,'Background',[0.89 0.88 0.83]);
set(handles.ETM_button,'Background',[0.89 0.88 0.83]);
set(handles.MTE_button,'Background',[0.89 0.88 0.83]);
set(handles.reset_button,'Background',[0.89 0.88 0.83]);
set(handles.Morse2,'Background',[0.89 0.88 0.83]);
set(handles.English2,'Background',[0.89 0.88 0.83]);

% --------------------------------------------------------------------
function table_display_Callback(hObject, eventdata, handles)
% hObject    handle to table_display (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

f = figure;
uit = uitable(f);
uit.ColumnName = {'Letter', 'Morse Code'};
t = {'1','.----';'2','..---';'3','...--';'4','....-';'5','.....';'6','-....';'7','--...';'8','---..';'9','----.';'0','-----';'A','.-';'B','-...';'C','-.-.';'D','-..';'E','.';'F','..-.';'G','--.';'H','....';'I','..';'J','.---';'K','-.-';'L','.-..';'M','--';'N','-.';'O','---';'P','.--.';'Q','--.-';'R','.-.';'S','...';'T','-';'U','..-';'V','...-';'W','.--';'X','-..-';'Y','-.--';'Z','--..';'STOP','.-.-.-';'SPACE','|'};
uit.Data = t;
uit.Position = [100 100 300 204];
uit.FontSize = 10;

% --------------------------------------------------------------------
function file_new_Callback(hObject, eventdata, handles)
% hObject    handle to file_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename, pathname] = uigetfile('*.m', 'Pick a MATLAB code file');
    if isequal(filename,0) || isequal(pathname,0)
       disp('User pressed cancel')
    else
       a = read(filename);
       show(a);
    end

% --------------------------------------------------------------------
function file_save_Callback(hObject, eventdata, handles)
% hObject    handle to file_save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[~,~,~] = uiputfile('morsecode.m');

% --------------------------------------------------------------------
function file_exit_Callback(hObject, eventdata, handles)
% hObject    handle to file_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

button = questdlg('Exit?', 'Exit Dialog','Yes','No','No');
    switch button
        case 'Yes'
            msgbox('Exiting MATLAB');
                close ALL;
        case 'No'
            quit cancel;
    end

% --------------------------------------------------------------------
function Theme_Callback(hObject, eventdata, handles)
% hObject    handle to Theme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
