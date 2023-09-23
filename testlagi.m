function varargout = testlagi(varargin)
% TESTLAGI MATLAB code for testlagi.fig
%      TESTLAGI, by itself, creates a new TESTLAGI or raises the existing
%      singleton*.
%
%      H = TESTLAGI returns the handle to a new TESTLAGI or the handle to
%      the existing singleton*.
%
%      TESTLAGI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESTLAGI.M with the given input arguments.
%
%      TESTLAGI('Property','Value',...) creates a new TESTLAGI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before testlagi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to testlagi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help testlagi

% Last Modified by GUIDE v2.5 29-May-2023 05:57:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @testlagi_OpeningFcn, ...
                   'gui_OutputFcn',  @testlagi_OutputFcn, ...
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


% --- Executes just before testlagi is made visible.
function testlagi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to testlagi (see VARARGIN)

% Choose default command line output for testlagi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes testlagi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = testlagi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[rawname, rawpath] = uigetfile({'*.xlsx'}, 'Pilih file excel');
fullname = [rawpath, rawname];
dijkstra = xlsread(fullname);
set(handles.uitable1,'Data',dijkstra);


% --- Executes when selected cell(s) is changed in uitable1.
function pushbuttonTable_Callback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)
T = dijkstra(peta,titikawal,titikakhir)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
