function varargout = Vcas_solve(varargin)
% VCAS_SOLVE MATLAB code for Vcas_solve.fig
%      VCAS_SOLVE, by itself, creates a new VCAS_SOLVE or raises the existing
%      singleton*.
%
%      H = VCAS_SOLVE returns the handle to a new VCAS_SOLVE or the handle to
%      the existing singleton*.
%
%      VCAS_SOLVE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VCAS_SOLVE.M with the given input arguments.
%
%      VCAS_SOLVE('Property','Value',...) creates a new VCAS_SOLVE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Vcas_solve_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Vcas_solve_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Vcas_solve

% Last Modified by GUIDE v2.5 21-Feb-2020 15:45:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Vcas_solve_OpeningFcn, ...
                   'gui_OutputFcn',  @Vcas_solve_OutputFcn, ...
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


% --- Executes just before Vcas_solve is made visible.
function Vcas_solve_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Vcas_solve (see VARARGIN)

% Choose default command line output for Vcas_solve
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Vcas_solve wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Vcas_solve_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Psedit_Callback(hObject, eventdata, handles)
% hObject    handle to Psedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Psedit as text
%        str2double(get(hObject,'String')) returns contents of Psedit as a double


% --- Executes during object creation, after setting all properties.
function Psedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Psedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ptedit_Callback(hObject, eventdata, handles)
% hObject    handle to Ptedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ptedit as text
%        str2double(get(hObject,'String')) returns contents of Ptedit as a double


% --- Executes during object creation, after setting all properties.
function Ptedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ptedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Vcasedit_Callback(hObject, eventdata, handles)
% hObject    handle to Vcasedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Vcasedit as text
%        str2double(get(hObject,'String')) returns contents of Vcasedit as a double


% --- Executes during object creation, after setting all properties.
function Vcasedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Vcasedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Solve.
function Solve_Callback(hObject, eventdata, handles)
% hObject    handle to Solve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Ps=str2double(get(handles.Psedit, 'string'));
Pt=str2double(get(handles.Ptedit, 'string'));
Vcas=str2double(get(handles.Vcasedit, 'string'));
 if  (isnan(Ps) && isnan(Vcas)) || (isnan(Ps) && isnan(Pt)) || (isnan(Pt) && isnan(Vcas))
     warndlg(' Give at least two values!')
 elseif ~(isnan(Ps) ||  isnan(Pt))
         syms Vcass
         eqn = Vcass - sqrt(1.4*287*288.15)*sqrt(5*(((Pt - Ps)/101325)^(0.4/1.4))-1) == 0
         S= solve(eqn,Vcass)
         S=floor(S)
         int2str(S)
         if imag(S) == 0
         set(handles.Vcasedit,'string',int2str(S));
         else warndlg(' No solution!')
         end
 elseif ~(isnan(Ps) ||  isnan(Vcas)) && isnan(Pt)
     syms Pts
     eqn = Vcas - sqrt(1.4*287*288.15)*sqrt(5*(((Pts - Ps)/101325)^(0.4/1.4))-1) == 0
     S= solve(eqn,Pts)
     S=floor(S)
     int2str(S)
     if imag(S) == 0
         set(handles.Ptedit,'string',int2str(S));
     else warndlg(' No solution!')
     end
 elseif ~(isnan(Pt) ||  isnan(Vcas)) && isnan(Ps)
     syms Pss
     eqn = Vcas - sqrt(1.4*287*288.15)*sqrt(5*(((Pt - Pss)/101325)^(0.4/1.4))-1) == 0
     S= solve(eqn,Pss)
     S=floor(S)
     int2str(S)
     if imag(S) == 0
         set(handles.Psedit,'string',int2str(S));
     else warndlg(' No solution!')
     end
end
  


% --- Executes on button press in Clear.
function Clear_Callback(hObject, eventdata, handles)
% hObject    handle to Clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
         set(handles.Vcasedit,'string','');
         set(handles.Psedit,'string','');
         set(handles.Ptedit,'string','');
