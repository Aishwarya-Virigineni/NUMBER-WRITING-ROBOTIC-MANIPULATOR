function varargout = gui_2(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_2_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_2_OutputFcn, ...
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


% Executes just before gui_2 is made visible.
function gui_2_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = gui_2_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

 

% Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

        cla reset; % Does a complete and total reset of the axes.
        xlim([-22 22])
        ylim([-22 22])
        
        Manipulator(6,13,8,15)              %Line 1
        hold on
        x = [6; 8];        y = [13; 15];
        plot(x,y,'LineWidth',2,'color','o')
        
        Manipulator(8,15,8,7)               %Line 2
        hold on
        x = [8; 8];        y = [15; 7];
        plot(x,y,'LineWidth',2,'color','k')
        
        Manipulator(8,7,12,7)               %Line 3
        hold on
        x = [8; 12];       y = [7; 7];
        plot(x,y,'LineWidth',2,'color','k')
        
        Manipulator(12,7,4,7)               %Line 4
        hold on
        x = [12; 4];      y = [7; 7];
        plot(x,y,'LineWidth',2,'color','k')

        
 
% Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
       
        cla reset; % Does a complete and total reset of the axes.
        xlim([-22 22])
        ylim([-22 22])

        Manipulator(8,15,12,15)
        hold on
        x = [8 ;12 ];
        y = [15 ; 15 ];
        plot(x,y,'LineWidth',2,'color','k')
        
        Manipulator(12,15,12,11)
        hold on
        x = [12 ;      12 ];
        y = [ 15 ; 11 ];
        plot(x,y,'LineWidth',2,'color','k')
        
        Manipulator(12,11,8,11)
        hold on
        x = [12 ;    8 ];
        y = [ 11 ; 11 ];
        plot(x,y,'LineWidth',2,'color','k')
        
        Manipulator(8,11,12,11)
        hold on
        x = [8 ;   12];
        y = [11 ; 11 ];
        plot(x,y,'LineWidth',2,'color','k')
        
        Manipulator(12,11,12,7)
        hold on
        x = [12 ;    12 ];
        y = [ 11 ;  7 ];
        plot(x,y,'LineWidth',2,'color','k')
        
        Manipulator(12,7,8,7)
        hold on
        x = [ 12;  8];
        y = [ 7;  7];
        plot(x,y,'LineWidth',2,'color','k')

 
        
% Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
        
        cla reset; % Does a complete and total reset of the axes.
        xlim([-22 22])
        ylim([-22 22])
        
        Manipulator(12,7,12,15)  %1st line
        hold on
        x = [12;  12];
        y = [ 7;  15];
        plot(x,y,'LineWidth',2,'color','k')
        
        Manipulator(12,15,8,11)   %2nd line
        hold on
        x = [12 ; 8 ];
        y = [15 ; 11 ];
        plot(x,y,'LineWidth',2,'color','k')
        
        Manipulator(8,11,14,11)   %3rd line
        hold on
        x = [8 ; 14 ];
        y = [ 11 ; 11 ];
        plot(x,y,'LineWidth',2,'color','k')
        

        
% Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)

        cla reset; % Does a complete and total reset of the axes.
        xlim([-22 22])
        ylim([-22 22])
        
        Manipulator(12,15,8,15)
        hold on
        x = [12 ; 8 ];
        y = [15 ; 15 ];
        plot(x,y,'LineWidth',2,'color','k')
        
        Manipulator(8,15,8,11)
        hold on
        x = [ 8 ; 8 ];
        y = [15 ;  11 ];
        plot(x,y,'LineWidth',2,'color','k')
        
        Manipulator(8,11,12,11)
        hold on
        x = [ 8 ; 12 ];
        y = [ 11 ;  11 ];
        plot(x,y,'LineWidth',2,'color','k')
        
        Manipulator(12,11,12,7)
        hold on
        x = [12 ;  12 ];
        y = [ 11 ;  7 ];
        plot(x,y,'LineWidth',2,'color','k')
       
        Manipulator(12,7,8,7)
        hold on
        x = [12;  8];
        y = [ 7;  7];
        plot(x,y,'LineWidth',2,'color','k')
        hold off

 

% Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)

        cla reset; % Does a complete and total reset of the axes.
        xlim([-22 22])
        ylim([-22 22])
        
        Manipulator(12,11,8,11)
        hold on
        x = [12 ; 8 ];
        y = [11 ; 11 ];
        plot(x,y,'LineWidth',2,'color','k')
        
        Manipulator(8,11,8,15)
        hold on
        x = [ 8 ;  8 ];
        y = [ 11 ; 15 ];
        plot(x,y,'LineWidth',2,'color','k')
       
        Manipulator(8,15,12,15)
        hold on
        x = [ 8 ;  12 ];
        y = [ 15 ; 15 ];
        plot(x,y,'LineWidth',2,'color','k')
        
        Manipulator(12,15,12,7)
        hold on
        x = [ 12 ;  12 ];
        y = [ 15 ;  7 ];
        plot(x,y,'LineWidth',2,'color','k')
       
        Manipulator(12,7,8,7)
        hold on
        x = [ 12;  8];
        y = [ 7;  7];
        plot(x,y,'LineWidth',2,'color','k')
        hold off

 

% Executes on button press in pushbutton0.
function pushbutton0_Callback(hObject, eventdata, handles)

        cla reset; % Does a complete and total reset of the axes.
        xlim([-22 22])
        ylim([-22 22])
        
        Manipulator(12,7,12,15)
        hold on
        x = [12 ; 12 ];
        y = [7 ; 15 ];
        plot(x,y,'LineWidth',2,'color','k')
        
        Manipulator(12,15,8,15)
        hold on
        x = [ 12  ;8  ];
        y = [15 ;  15  ];
        plot(x,y,'LineWidth',2,'color','k')
      
        Manipulator(8,15,8,7)
        hold on
        x = [ 8  ;  8 ];
        y = [15 ; 7 ];
        plot(x,y,'LineWidth',2,'color','k')
      
        Manipulator(8,7,12,7)
        hold on
        x = [8;  12];
        y = [ 7;  7];
        plot(x,y,'LineWidth',2,'color','k')
        hold off