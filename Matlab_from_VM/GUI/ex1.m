function varargout = ex1(varargin)
% EX1 MATLAB code for ex1.fig
%      EX1, by itself, creates a new EX1 or raises the existing
%      singleton*.
%
%      H = EX1 returns the handle to a new EX1 or the handle to
%      the existing singleton*.
%
%      EX1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EX1.M with the given input arguments.
%
%      EX1('Property','Value',...) creates a new EX1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ex1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ex1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ex1

% Last Modified by GUIDE v2.5 25-Feb-2020 16:23:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ex1_OpeningFcn, ...
                   'gui_OutputFcn',  @ex1_OutputFcn, ...
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


% --- Executes just before ex1 is made visible.
function ex1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ex1 (see VARARGIN)

% Choose default command line output for ex1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ex1 wait for user response (see UIRESUME)
% uiwait(handles.GUI_window);


% --- Outputs from this function are returned to the command line.
function varargout = ex1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Xminedit_Callback(hObject, eventdata, handles)
% hObject    handle to Xminedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Xminedit as text
%        str2double(get(hObject,'String')) returns contents of Xminedit as a double


% --- Executes during object creation, after setting all properties.
function Xminedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Xminedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Xmaxedit_Callback(hObject, eventdata, handles)
% hObject    handle to Xmaxedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Xmaxedit as text
%        str2double(get(hObject,'String')) returns contents of Xmaxedit as a double


% --- Executes during object creation, after setting all properties.
function Xmaxedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Xmaxedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in PLOTsinc.
function PLOTsinc_Callback(hObject, eventdata, handles)
% hObject    handle to PLOTsinc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Xmin=str2double(get(handles.Xminedit, 'string'));
Xmax=str2double(get(handles.Xmaxedit, 'string'));
x=linspace(Xmin, Xmax, 200);
f=sinc(x*pi);
plot(x, f, 'b'); grid on
title('sinc(\pi*x) = sin(\pi*x)/(\pi*x) ')
xlabel('x'),ylabel('f(x)=sinc(\pi*x)'),
axis([Xmin, Xmax, -.25, 1.1])


% --- Executes on button press in Quit.
function Quit_Callback(hObject, eventdata, handles)
% hObject    handle to Quit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.GUI_window)
A=imread('cas_sim.png');
image(A);
msgbox('All well!!')

