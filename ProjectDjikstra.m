function varargout = ProjectDjikstra(varargin)
% PROJECTDJIKSTRA MATLAB code for ProjectDjikstra.fig
%      PROJECTDJIKSTRA, by itself, creates a new PROJECTDJIKSTRA or raises the existing
%      singleton*.
%
%      H = PROJECTDJIKSTRA returns the handle to a new PROJECTDJIKSTRA or the handle to
%      the existing singleton*.
%
%      PROJECTDJIKSTRA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECTDJIKSTRA.M with the given input arguments.
%
%      PROJECTDJIKSTRA('Property','Value',...) creates a new PROJECTDJIKSTRA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ProjectDjikstra_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ProjectDjikstra_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ProjectDjikstra

% Last Modified by GUIDE v2.5 29-May-2023 01:22:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ProjectDjikstra_OpeningFcn, ...
                   'gui_OutputFcn',  @ProjectDjikstra_OutputFcn, ...
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


% --- Executes just before ProjectDjikstra is made visible.
function ProjectDjikstra_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ProjectDjikstra (see VARARGIN)

% Choose default command line output for ProjectDjikstra
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ProjectDjikstra wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ProjectDjikstra_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes when entered data in editable cell(s) in uitable2.
function uitable2_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable2 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
T = xlsread('test.xlsx')

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
