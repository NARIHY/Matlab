function varargout = exo1max(varargin)
% EXO1MAX MATLAB code for exo1max.fig
%      EXO1MAX, by itself, creates a new EXO1MAX or raises the existing
%      singleton*.
%
%      H = EXO1MAX returns the handle to a new EXO1MAX or the handle to
%      the existing singleton*.
%
%      EXO1MAX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXO1MAX.M with the given input arguments.
%
%      EXO1MAX('Property','Value',...) creates a new EXO1MAX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before exo1max_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to exo1max_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help exo1max

% Last Modified by GUIDE v2.5 10-May-2024 11:48:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @exo1max_OpeningFcn, ...
                   'gui_OutputFcn',  @exo1max_OutputFcn, ...
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


% --- Executes just before exo1max is made visible.
function exo1max_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to exo1max (see VARARGIN)

% Choose default command line output for exo1max
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes exo1max wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = exo1max_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in bt_sin.
function bt_sin_Callback(hObject, eventdata, handles)
% hObject    handle to bt_sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=get(handles.text_box,'String');
x=str2double(x);
x1=0:0.01:x;
y1=sin(x1);
plot(x1,y1);


% --- Executes on button press in bt_os.
function bt_os_Callback(hObject, eventdata, handles)
% hObject    handle to bt_os (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=get(handles.text_box,'String');
x=str2double(x);
x1=0:0.01:x;
y1=cos(x1);
plot(x1,y1);

% --- Executes on button press in bt_tan.
function bt_tan_Callback(hObject, eventdata, handles)
% hObject    handle to bt_tan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=get(handles.text_box,'String');
x=str2double(x);
x1=0:0.01:x;
y1=tan(x1);
plot(x1,y1);

% --- Executes on button press in bt_log.
function bt_log_Callback(hObject, eventdata, handles)
% hObject    handle to bt_log (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=get(handles.text_box,'String');
x=str2double(x);
x1=0:0.01:x;
y1=log(x1);
plot(x1,y1);

% --- Executes on button press in btexpo.
function btexpo_Callback(hObject, eventdata, handles)
% hObject    handle to btexpo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=get(handles.text_box,'String');
x=str2double(x);
x1=0:0.01:x;
y1=exp(x1);
plot(x1,y1);


function text_box_Callback(hObject, eventdata, handles)
% hObject    handle to text_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_box as text
%        str2double(get(hObject,'String')) returns contents of text_box as a double


% --- Executes during object creation, after setting all properties.
function text_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;