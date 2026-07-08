%let pgm=altair-slc-using-python-gmsh-to-programatically-create-finite-element-triangular-mesh-hydrofoil;

%stop_submission;

Altair slc using python gmsh to programatically create finite element triagular mesh hydrofoil no gui

Graphic output
https://github.com/rogerjdeangelis/altair-slc-using-python-gmsh-to-programatically-create-finite-element-triangular-mesh-hydrofoil/blob/main/hydrofoil.png

Too long to post, see
https://github.com/rogerjdeangelis/altair-slc-using-python-gmsh-to-programatically-create-finite-element-triangular-mesh-hydrofoil

Note: You must hand code the config file, inv_naca0012.cfg, using the SU2 language syntax,
      then use, inv_naca0012.cfg and python package, gmsh, to create the finite element triagular mesh for the hydrofoil

For the mesh program I gave DeepSeek a detailed prompt

   1 Told AI I was wanted a  triangular shell mesh for a hydrofoil for use in an SU2 simulation
   2 I want to use python gmsh package
   3 I included the config file
   4 I expect the upper surface to have lower pressule then the lower surface
   5 I expect lift like an airplane wing

DeepSeek created the gmsh mesh program with a couple of minor issues.
The issues were easy to resolve. The only caveat is that DeepSeek seems to
know me and mu abilities and former projects.

Source
https://su2code.github.io/tutorials/Inc_Inviscid_Hydrofoil/

For macros
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories


                                         SURFACE PRESSURES

         -0.075            01175            01425    X       01675            01925            1.175
       -----+----------------+----------------+----------------+----------------+----------------+---
       |                                                                                            |
       |     SURFACE PRESSURES                                LOW TO HIGH   PRESURE  RANGE          |
       |                                                                                            |
       |                                                        11111      -01692 > -01418          |
       |                                                        22222      -01418 > -01144          |
     Y |              LOW PRESSURE LIFT                         33333      -01144 >  01130          |     Y
  0.10 +                                    LOW PRESSURE        44444       01130 >  01405          +  0.10
       |              11111122 222 2 22                         55555       01405 >  01679          |
       |          1111                  2 2 2 22                                                    |
  0.05 +         11                              2 2 2 2                                            +  0.05
       |    HIGH 55                                      2 3 33                                     |
       | PRESSURE 44                                            3 33                                |
  0.00 +            4333                                             33 333                         +  0.00
       |               33333                                               33333                    |
       |                     333 33 3                                           333334  TURBULENCE  |
 -0.05 +                              33 3 3 3 3 3 3 3 33 3 3 3 33 3 333 33333333333343             + -0.05
       |                                                                                            |
       |                          HIGHER PRESSURE PUSH UP                                           |
 -0.10 +                                                                                            + -0.10
       -----+----------------+----------------+----------------+----------------+----------------+---
         -0.075            01175            01425   X        01675            01925            1.175



                                        SURFACE X VELOCITIES

          -0.075            01175            01425    X       01675            01925            11175
       ------+----------------+----------------+----------------+----------------+----------------+---
       |                                                                                             |
       |  SURFACE X VELOCITIES                                  LOW TO HIGH      VELOCITY_X          |
       |                                                                                             |
       |                                                           11111       -01375 >  01000       |
       |                                                           22222        01000 >  01375       |
       |                                                           33333        01375 >  01750       |
       |                                                           44444        01750 >  11125       |
       |                                                           55555        11125 >  11500       |
     Y |              HIGHEST X VELOCITY                                                             |     Y
  0.10 +                                       DECELERATION                                          +  0.10
       |               55555555 555 5 55                                                             |
       |           5555                  5 5 4 44                                                    |
  0.05 +          44                              4 4 4 4                                            +  0.05
       | LOWEST X 12                                      4 4 44                                     |
       | VELOCITY  33                                            4 44                                |
  0.00 +             4444                                             44 444                         +  0.00
       |                44444                                               44444                    |
       |                      444 45 5                                           444333  MIXED X     |
 -0.05 +                               55 5 5 5 5 5 5 5 44 4 4 4 44 4 444 44444444444431 VELOCITY    + -0.05
       |                                                                                 SWIRLING    |
       |                                 HIGHEST VELOCITY                                            |
 -0.10 +                                                                                             + -0.10
       ------+----------------+----------------+----------------+----------------+----------------+---
          -0.075            01175            01425    X       01675            01925            11175


/*                                       _   _
/ | _ __  _ __ ___ _ __   __ _ _ __ __ _| |_(_) ___  _ __
| || `_ \| `__/ _ \ `_ \ / _` | `__/ _` | __| |/ _ \| `_ \
| || |_) | | |  __/ |_) | (_| | | | (_| | |_| | (_) | | | |
|_|| .__/|_|  \___| .__/ \__,_|_|  \__,_|\__|_|\___/|_| |_|
   |_|            |_|
*/

Use these repositories to

  1 Install ubuntu linux and python in windows
    https://github.com/rogerjdeangelis/altair-slc-running-ubuntu-linux-from-windows-using-ms-wsl

  2 Install  Python SU2 package
    https://github.com/rogerjdeangelis/altair-slc-linux-python-su2-script-simulating-a-hydrofoil

  3 Install ubuntu paraview
    https://www.paraview.org/download/

  4 Create ubuntu folder
    \\wsl.localhost\Ubuntu\home\xlr82sas\su2hydro

  5 You need several drop downs, see slc_psbegin(powershell), slc_lxpvbegin(lx paraview) and lxbegin(ubuntu)
    https://github.com/rogerjdeangelis/altair-slc-linux-python-su2-script-simulating-a-hydrofoil

Related repos
https://github.com/rogerjdeangelis/altair-slc-linux-python-su2-script-simulating-a-hydrofoil

https://github.com/rogerjdeangelis/altair-slc-running-ubuntu-linux-from-windows-using-ms-wsl
https://github.com/rogerjdeangelis/altair-slc-openradioss-python-scripted-steel-ball-impact-plate-simulation-no-gui
https://github.com/rogerjdeangelis/altair-slc-openradioss-python-scripted-rubber-ring-simulation-no-gui
https://github.com/rogerjdeangelis/altair-slc-openradioss-python-scripted-bumper-beam-simulation-no-gui
https://github.com/rogerjdeangelis/altair-slc-openradioss-python-script-for-cell-phone-drop-simulation-no-gui
https://github.com/rogerjdeangelis/utl-altair-slc-enhanced-openradioss-tensile-strength-simulation-python-no-gui-no-mouse-surfing
https://github.com/rogerjdeangelis/utl-altair-slc-python-script-to-run-openradioss-tensile-strength-simulation
https://github.com/rogerjdeangelis/utl-altair-slc-post-processing-radioss-files-using-openradioss
https://github.com/rogerjdeangelis/utl-personal-altair-slc-with-matlab-sympy-and-r-finite-element-cold-plate-heat-transfer

/*___        _      _      _                                      _                    ____  _         _              __       _     _
|___ \    __| | ___| | ___| |_ ___   _ __ ___  ___ _ __ ___  __ _| |_ ___   ___ _   _ |___ \| |__   __| |_ __ ___    / _| ___ | | __| | ___ _ __
  __) |  / _` |/ _ \ |/ _ \ __/ _ \ | `__/ _ \/ __| `__/ _ \/ _` | __/ _ \ / __| | | |  __) | `_ \ / _` | `__/ _ \  | |_ / _ \| |/ _` |/ _ \ `__|
 / __/  | (_| |  __/ |  __/ ||  __/ | | |  __/ (__| | |  __/ (_| | ||  __/ \__ \ |_| | / __/| | | | (_| | | | (_) | |  _| (_) | | (_| |  __/ |
|_____|  \__,_|\___|_|\___|\__\___| |_|  \___|\___|_|  \___|\__,_|\__\___| |___/\__,_||_____|_| |_|\__,_|_|  \___/  |_|  \___/|_|\__,_|\___|_|
*/

/*--- SLOW ---*/
/*--- DROP DOWN TO WINDOWS POWERSHELL TO CREATE UBUNTU FOLDER  (SLOW BE PATIENT)                            ---*/
/*--- DELETE \\wsl$\ubuntu\home\xlr82sas\su2hydro AND ALL SUBDIRECTORIES/FILES  if exists THEN RECREATE  IT ---*/

%slc_psbegin; /*--- call powershell ---*/
cards4;
# Delete \\wsl$\Ubuntu\home\xlr82sas\su2hydro and all subdirectories/files then recreates it

$targetDir = "\\wsl$\Ubuntu\home\xlr82sas\su2hydro"

# 1. Remove the directory and everything inside it (forcefully, recursively)
if (Test-Path $targetDir) {
    Write-Host "Removing existing directory: $targetDir" -ForegroundColor Yellow
    Remove-Item -Path $targetDir -Recurse -Force
}

# 2. Recreate the empty directory
Write-Host "Creating fresh directory: $targetDir" -ForegroundColor Yellow
New-Item -Path $targetDir -ItemType Directory -Force | Out-Null
;;;;
%slc_psend;


/**************************************************************************************************************************/
/*| Altair SLC                                                                                                            */
/*| Removing existing directory: \\wsl$\Ubuntu\home\xlr82sas\su2hydro                                                     */
/*| Creating fresh directory: \\wsl$\Ubuntu\home\xlr82sas\su2hydro                                                        */
/**************************************************************************************************************************/

/*
| | ___   __ _
| |/ _ \ / _` |
| | (_) | (_| |
|_|\___/ \__, |
         |___/
*/

1                                          Altair SLC           12:47 Monday, July  6, 2026

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas

NOTE: AUTOEXEC processing completed

1          %slc_psbegin; /*--- call powershell ---*/
2         cards4;

NOTE: The file 'c:\temp\ps_pgm.ps1' is:
      Filename='c:\temp\ps_pgm.ps1',
      Owner Name=SLC\suzie,
      File size (bytes)=0,
      Create Time=12:57:26 Jun 18 2026,
      Last Accessed=12:47:07 Jul 06 2026,
      Last Modified=12:47:07 Jul 06 2026,
      Lrecl=32767, Recfm=V

NOTE: 13 records were written to file 'c:\temp\ps_pgm.ps1'
      The minimum record length was 80
      The maximum record length was 92
NOTE: The data step took :
      real time : 0.002
      cpu time  : 0.000


3         # Delete \\wsl$\Ubuntu\home\xlr82sas\su2hydro and all subdirectories/files then recreates it
4
5         $targetDir = "\\wsl$\Ubuntu\home\xlr82sas\su2hydro"
6
7         # 1. Remove the directory and everything inside it (forcefully, recursively)
8         if (Test-Path $targetDir) {
9             Write-Host "Removing existing directory: $targetDir" -ForegroundColor Yellow
10            Remove-Item -Path $targetDir -Recurse -Force
11        }
12
13        # 2. Recreate the empty directory
14        Write-Host "Creating fresh directory: $targetDir" -ForegroundColor Yellow
15        New-Item -Path $targetDir -ItemType Directory -Force | Out-Null
16        ;;;;
17        %slc_psend;

NOTE: The infile rut is:
      Unnamed Pipe Access Device,
      Process=powershell.exe -executionpolicy bypass -file c:/temp/ps_pgm.ps1 >  c:/temp/ps_pgm.log,
      Lrecl=32756, Recfm=V

NOTE: No records were written to file PRINT

NOTE: No records were read from file rut
NOTE: The data step took :
      real time : 31.550
      cpu time  : 0.000

NOTE: The infile rut is:
      Unnamed Pipe Access Device,
      Process=powershell.exe -executionpolicy bypass -file c:/temp/ps_pgm.ps1 >  c:/temp/ps_pgm.log,
      Lrecl=32767, Recfm=V

NOTE: No records were written to file PRINT

NOTE: No records were read from file rut
NOTE: The data step took :
      real time : 0.615
      cpu time  : 0.015

NOTE: The infile 'c:\temp\ps_pgm.log' is:
      Filename='c:\temp\ps_pgm.log',
      Owner Name=SLC\suzie,
      File size (bytes)=129,
      Create Time=13:54:03 Jun 18 2026,
      Last Accessed=12:47:39 Jul 06 2026,
      Last Modified=12:47:39 Jul 06 2026,
      Lrecl=32767, Recfm=V

Removing existing directory: \\wsl$\Ubuntu\home\xlr82sas\su2hydro
Creating fresh directory: \\wsl$\Ubuntu\home\xlr82sas\su2hydro
NOTE: 2 records were read from file 'c:\temp\ps_pgm.log'
      The minimum record length was 62
      The maximum record length was 65
NOTE: 2 records were written to file PRINT

NOTE: The data step took :
      real time : 0.016
      cpu time  : 0.031

NOTE: Submitted statements took :
      real time : 32.384
      cpu time  : 0.171


/*____  _                     _                 _                        __ _
|___ / | |__   __ _ _ __   __| |   ___ ___   __| | ___   ___ ___  _ __  / _(_) __ _
  |_ \ | `_ \ / _` | `_ \ / _` |  / __/ _ \ / _` |/ _ \ / __/ _ \| `_ \| |_| |/ _` |
 ___) || | | | (_| | | | | (_| | | (_| (_) | (_| |  __/| (_| (_) | | | |  _| | (_| |
|____/ |_| |_|\__,_|_| |_|\__,_|  \___\___/ \__,_|\___| \___\___/|_| |_|_| |_|\__, |
                                                                              |___/
WINDOWS
*/

%utlfkil(\\wsl$\Ubuntu\home\xlr82sas\su2hydro\inv_naca0012.cfg);

data _null_;
  file "\\wsl$\Ubuntu\home\xlr82sas\su2hydro\inv_naca0012.cfg";
  input;
  put _infile_;
cards4;
% ------------- DIRECT, ADJOINT, AND LINEARIZED PROBLEM DEFINITION ------------%
SOLVER= INC_EULER
MATH_PROBLEM= DIRECT
KIND_TURB_MODEL= NONE
% -------------------- INCOMPRESSIBLE FREE-STREAM DEFINITION --------------------%
INC_DENSITY_INIT= 998.2
INC_VELOCITY_INIT= ( 1.775, 0.0, 0.0 )
% ---------------------- BOUNDARY CONDITION DEFINITION -------------------------%
MARKER_EULER= ( airfoil, lower_wall, upper_wall )
MARKER_INLET= ( inlet, 0.0, 1.775, 0.9962, 0.0872, 0.0 )
MARKER_OUTLET= ( outlet, 0.0 )
INC_INLET_TYPE= VELOCITY_INLET
INC_OUTLET_TYPE= PRESSURE_OUTLET
% ---------------------- NUMERICAL METHOD DEFINITION ---------------------------%
CFL_NUMBER= 100.0
CFL_ADAPT= NO
RK_ALPHA_COEFF= ( 0.66667, 0.66667, 1.0 )
CONV_NUM_METHOD_FLOW= JST
% MUSCL_FLOW is NOT used with JST scheme - removed or set to NO
SLOPE_LIMITER_FLOW= VENKATAKRISHNAN
VENKAT_LIMITER_COEFF= 0.05
% ------------------------ LINEAR SOLVER DEFINITION ----------------------------%
LINEAR_SOLVER= FGMRES
LINEAR_SOLVER_PREC= ILU
LINEAR_SOLVER_ERROR= 1E-6
LINEAR_SOLVER_ITER= 10
% ------------------------ ITERATION AND CONVERGENCE PARAMETERS -----------------%
ITER= 500
CONV_RESIDUAL_MINVAL= 1e-8
% ----------------------------- INPUT/OUTPUT -----------------------------------%
MESH_FILENAME= mesh_NACA0012_5deg_6814.su2
SOLUTION_FILENAME= solution_flow.dat
RESTART_FILENAME= restart_flow.dat
VOLUME_FILENAME= volume_flow
SURFACE_FILENAME= surface_flow
TABULAR_FORMAT= TECPLOT
OUTPUT_WRT_FREQ= 100
OUTPUT_FILES= (RESTART, CSV, PARAVIEW, SURFACE_PARAVIEW, SURFACE_CSV)
MARKER_PLOTTING= ( airfoil, lower_wall, upper_wall )
% What to write to the history file
HISTORY_OUTPUT= ( ITER, RMS_PRESSURE, RMS_VELOCITY-X, RMS_VELOCITY-Y )
;;;;
run;

/*--- USE THIS TYPE OF INFO WITH AI TO CREATE FINITE ELEMENT TRIAGULAR MESH HYDROFOIL ---*/

data _null_;
  infile "\\wsl$\Ubuntu\home\xlr82sas\su2hydro\inv_naca0012.cfg";
  input;
  file print;
  if _n_=1 then put "USE THIS WITH AI TO CREATE FINITE ELEMENT TRIAGULAR MESH HYDROFOIL" /;
  if index(_infile_,'MARK')>0 then put _infile_;
run;quit;


/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/

/**************************************************************************************************************************/
/*  \\wsl$\Ubuntu\home\xlr82sas\su2hydro\inv_naca0012.cfg                                                                 */
/*                                                                                                                        */
/* % ------------- DIRECT, ADJOINT, AND LINEARIZED PROBLEM DEFINITION ------------%                                       */
/* SOLVER= INC_EULER                                                                                                      */
/* MATH_PROBLEM= DIRECT                                                                                                   */
/* KIND_TURB_MODEL= NONE                                                                                                  */
/* % -------------------- INCOMPRESSIBLE FREE-STREAM DEFINITION --------------------%                                     */
/* INC_DENSITY_INIT= 998.2                                                                                                */
/* INC_VELOCITY_INIT= ( 1.775, 0.0, 0.0 )                                                                                 */
/* % ---------------------- BOUNDARY CONDITION DEFINITION -------------------------%                                      */
/* MARKER_EULER= ( airfoil, lower_wall, upper_wall )                                                                      */
/* MARKER_INLET= ( inlet, 0.0, 1.775, 1.0, 0.0, 0.0 )                                                                     */
/* MARKER_OUTLET= ( outlet, 0.0 )                                                                                         */
/* INC_INLET_TYPE= VELOCITY_INLET                                                                                         */
/* INC_OUTLET_TYPE= PRESSURE_OUTLET                                                                                       */
/* % ---------------------- NUMERICAL METHOD DEFINITION ---------------------------%                                      */
/* CFL_NUMBER= 100.0                                                                                                      */
/* CFL_ADAPT= NO                                                                                                          */
/* RK_ALPHA_COEFF= ( 0.66667, 0.66667, 1.0 )                                                                              */
/* CONV_NUM_METHOD_FLOW= JST                                                                                              */
/* % MUSCL_FLOW is NOT used with JST scheme - removed or set to NO                                                        */
/* SLOPE_LIMITER_FLOW= VENKATAKRISHNAN                                                                                    */
/* VENKAT_LIMITER_COEFF= 0.05                                                                                             */
/* % ------------------------ LINEAR SOLVER DEFINITION ----------------------------%                                      */
/* LINEAR_SOLVER= FGMRES                                                                                                  */
/* LINEAR_SOLVER_PREC= ILU                                                                                                */
/* LINEAR_SOLVER_ERROR= 1E-6                                                                                              */
/* LINEAR_SOLVER_ITER= 10                                                                                                 */
/* % ------------------------ ITERATION AND CONVERGENCE PARAMETERS -----------------%                                     */
/* ITER= 500                                                                                                              */
/* CONV_RESIDUAL_MINVAL= 1e-8                                                                                             */
/* % ----------------------------- INPUT/OUTPUT -----------------------------------%                                      */
/* MESH_FILENAME= mesh_NACA0012_5deg_6814.su2                                                                             */
/* SOLUTION_FILENAME= solution_flow.dat                                                                                   */
/* RESTART_FILENAME= restart_flow.dat                                                                                     */
/* VOLUME_FILENAME= volume_flow                                                                                           */
/* SURFACE_FILENAME= surface_flow                                                                                         */
/* TABULAR_FORMAT= TECPLOT                                                                                                */
/* OUTPUT_WRT_FREQ= 100                                                                                                   */
/* OUTPUT_FILES= (RESTART, CSV, PARAVIEW, SURFACE_PARAVIEW, SURFACE_CSV)                                                  */
/* MARKER_PLOTTING= ( airfoil, lower_wall, upper_wall )                                                                   */
/* % What to write to the history file                                                                                    */
/* HISTORY_OUTPUT= ( ITER, RMS_PRESSURE, RMS_VELOCITY-X, RMS_VELOCITY-Y )                                                 */
/*                                                                                                                        */
/*========================================================================================================================*/
/*                                                                                                                        */
/* USE THIS WITH AI TO CREATE FINITE ELEMENT TRIAGULAR MESH HYDROFOIL                                                     */
/*                                                                                                                        */
/* MARKER_EULER= ( airfoil, lower_wall, upper_wall )                                                                      */
/* MARKER_INLET= ( inlet, 0.0, 1.775, 1.0, 0.0, 0.0 )                                                                     */
/* MARKER_OUTLET= ( outlet, 0.0 )                                                                                         */
/* MARKER_PLOTTING= ( airfoil, lower_wall, upper_wall )                                                                   */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*
| | ___   __ _
| |/ _ \ / _` |
| | (_) | (_| |
|_|\___/ \__, |
         |___/
*/

1                                          Altair SLC           10:20 Monday, July  6, 2026

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas

NOTE: AUTOEXEC processing completed

1          /*--- WINDOWS ---*/
2
3         %utlfkil(\\wsl$\Ubuntu\home\xlr82sas\su2hydro\inv_naca0012.cfg);
4
5         data _null_;
6           file "\\wsl$\Ubuntu\home\xlr82sas\su2hydro\inv_naca0012.cfg";
7           input;
8           put _infile_;
9         cards4;

NOTE: The file '\\wsl$\Ubuntu\home\xlr82sas\su2hydro\inv_naca0012.cfg' is:
      Filename='\\wsl$\Ubuntu\home\xlr82sas\su2hydro\inv_naca0012.cfg',
      File size (bytes)=0,
      Create Time=10:20:48 Jul 06 2026,
      Last Accessed=10:20:48 Jul 06 2026,
      Last Modified=10:20:48 Jul 06 2026,
      Lrecl=32767, Recfm=V

NOTE: 41 records were written to file '\\wsl$\Ubuntu\home\xlr82sas\su2hydro\inv_naca0012.cfg'
      The minimum record length was 80
      The maximum record length was 82
NOTE: The data step took :
      real time : 0.010
      cpu time  : 0.000


10        % ------------- DIRECT, ADJOINT, AND LINEARIZED PROBLEM DEFINITION ------------%
11        SOLVER= INC_EULER
12        MATH_PROBLEM= DIRECT
13        KIND_TURB_MODEL= NONE
14        % -------------------- INCOMPRESSIBLE FREE-STREAM DEFINITION --------------------%
15        INC_DENSITY_INIT= 998.2
16        INC_VELOCITY_INIT= ( 1.775, 0.0, 0.0 )
17        % ---------------------- BOUNDARY CONDITION DEFINITION -------------------------%
18        MARKER_EULER= ( airfoil, lower_wall, upper_wall )
19        MARKER_INLET= ( inlet, 0.0, 1.775, 1.0, 0.0, 0.0 )
20        MARKER_OUTLET= ( outlet, 0.0 )
21        INC_INLET_TYPE= VELOCITY_INLET
22        INC_OUTLET_TYPE= PRESSURE_OUTLET
23        % ---------------------- NUMERICAL METHOD DEFINITION ---------------------------%
24        CFL_NUMBER= 100.0
25        CFL_ADAPT= NO
26        RK_ALPHA_COEFF= ( 0.66667, 0.66667, 1.0 )
27        CONV_NUM_METHOD_FLOW= JST
28        % MUSCL_FLOW is NOT used with JST scheme - removed or set to NO
29        SLOPE_LIMITER_FLOW= VENKATAKRISHNAN
30        VENKAT_LIMITER_COEFF= 0.05
31        % ------------------------ LINEAR SOLVER DEFINITION ----------------------------%
32        LINEAR_SOLVER= FGMRES
33        LINEAR_SOLVER_PREC= ILU
34        LINEAR_SOLVER_ERROR= 1E-6
35        LINEAR_SOLVER_ITER= 10
36        % ------------------------ ITERATION AND CONVERGENCE PARAMETERS -----------------%
37        ITER= 500
38        CONV_RESIDUAL_MINVAL= 1e-8
39        % ----------------------------- INPUT/OUTPUT -----------------------------------%
40        MESH_FILENAME= mesh_NACA0012_5deg_6814.su2
41        SOLUTION_FILENAME= solution_flow.dat
42        RESTART_FILENAME= restart_flow.dat
43        VOLUME_FILENAME= volume_flow
44        SURFACE_FILENAME= surface_flow
45        TABULAR_FORMAT= TECPLOT
46        OUTPUT_WRT_FREQ= 100
47        OUTPUT_FILES= (RESTART, CSV, PARAVIEW, SURFACE_PARAVIEW, SURFACE_CSV)
48        MARKER_PLOTTING= ( airfoil, lower_wall, upper_wall )
49        % What to write to the history file
50        HISTORY_OUTPUT= ( ITER, RMS_PRESSURE, RMS_VELOCITY-X, RMS_VELOCITY-Y )
51        ;;;;
52        run;
53
54        /*--- USE THIS WITH AI TO CREATE FINITE ELEMENT TRIAGULAR MESH HYDROFOIL ---*/
55
56        data _null_;
57          infile "\\wsl$\Ubuntu\home\xlr82sas\su2hydro\inv_naca0012.cfg";
58          input;
59          file print;
60          if _n_=1 then put "USE THIS WITH AI TO CREATE FINITE ELEMENT TRIAGULAR MESH HYDROFOIL" /;
61          if index(_infile_,'MARK')>0 then put _infile_;
62        run;

NOTE: The infile '\\wsl$\Ubuntu\home\xlr82sas\su2hydro\inv_naca0012.cfg' is:
      Filename='\\wsl$\Ubuntu\home\xlr82sas\su2hydro\inv_naca0012.cfg',
      File size (bytes)=3370,
      Create Time=10:20:48 Jul 06 2026,
      Last Accessed=10:20:49 Jul 06 2026,
      Last Modified=10:20:48 Jul 06 2026,
      Lrecl=32767, Recfm=V

NOTE: 41 records were read from file '\\wsl$\Ubuntu\home\xlr82sas\su2hydro\inv_naca0012.cfg'
      The minimum record length was 80
      The maximum record length was 82
NOTE: 6 records were written to file PRINT

NOTE: The data step took :
      real time : 0.037
      cpu time  : 0.015


62      !     quit;

NOTE: Submitted statements took :
      real time : 3.967
      cpu time  : 0.125
/*____    __ _       _ _              _                           _                        _
|___ /   / _(_)_ __ (_) |_ ___    ___| | ___ _ __ ___   ___ _ __ | |_  _ __ ___   ___  ___| |__
  |_ \  | |_| | `_ \| | __/ _ \  / _ \ |/ _ \ `_ ` _ \ / _ \ `_ \| __|| `_ ` _ \ / _ \/ __| `_ \
 ___) | |  _| | | | | | ||  __/ |  __/ |  __/ | | | | |  __/ | | | |_ | | | | | |  __/\__ \ | | |
|____/  |_| |_|_| |_|_|\__\___|  \___|_|\___|_| |_| |_|\___|_| |_|\__||_| |_| |_|\___||___/_| |_|

Based on the hand coded config we know we are going to need sections in the finite element mesh
Ask AI to create the finite element mesh using the jand coded config

   MARKER_EULER= ( airfoil, lower_wall, upper_wall )
   MARKER_INLET= ( inlet, 0.0, 1.775, 1.0, 0.0, 0.0 )
   MARKER_OUTLET= ( outlet, 0.0 )
   MARKER_PLOTTING= ( airfoil, lower_wall, upper_wall )

For the mesh program I gave DeepSeek a detailed prompt

   1 Told AI I was wanted a  triangular shell mesh for a hydrofoil for use in an SU2 simulation
   2 I want to use python gmsh package
   3 I included the config file
   4 I expect the upper surface to have lower pressule then the lower surface
   5 I expect lift like an airplane wing

DeepSeek created the gmsh mesh program with a couple of minor issues.
The issues were easy to resolve. The only caveat is that DeepSeek seems to
know me and mu abilities and former projects.

*/

%utlfkil(//wsl$/Ubuntu/home/xlr82sas/su2hydro/mesh_NACA0012_5deg_6814.su2);

/*--- WINDOWS ---*/

options validvarname=v7;
options set=PYTHONHOME "D:\py314";
proc python;
submit;
import gmsh
import numpy as np
import math
import os

def generate_naca_airfoil(naca_digits="0012", num_points=128, chord=1.0):
    """
    Return (x, y) coordinates of a NACA 4-digit airfoil.
    num_points = number of points on the closed airfoil (including TE).
    """
    m = int(naca_digits[0]) / 100.0
    p = int(naca_digits[1]) / 10.0
    t = int(naca_digits[2:]) / 100.0

    x = np.linspace(0, chord, num_points)
    yt = np.zeros_like(x)
    yc = np.zeros_like(x)
    dyc_dx = np.zeros_like(x)

    for i, xi in enumerate(x):
        yt[i] = (t / 0.2) * (0.2969 * np.sqrt(xi/chord)
                             - 0.1260 * (xi/chord)
                             - 0.3516 * (xi/chord)**2
                             + 0.2843 * (xi/chord)**3
                             - 0.1015 * (xi/chord)**4)
        if xi < p * chord:
            yc[i] = (m / p**2) * (2 * p * (xi/chord) - (xi/chord)**2)
            dyc_dx[i] = (2 * m / p**2) * (p - xi/chord)
        else:
            yc[i] = (m / (1 - p)**2) * ((1 - 2 * p) + 2 * p * (xi/chord) - (xi/chord)**2)
            dyc_dx[i] = (2 * m / (1 - p)**2) * (p - xi/chord)

    theta = np.arctan(dyc_dx)
    x_upper = x - yt * np.sin(theta)
    y_upper = yc + yt * np.cos(theta)
    x_lower = x + yt * np.sin(theta)
    y_lower = yc - yt * np.cos(theta)

    # Build closed airfoil: upper surface from LE to TE, then lower surface back
    x_coords = np.concatenate([x_upper[::-1], x_lower[1:]])
    y_coords = np.concatenate([y_upper[::-1], y_lower[1:]])
    return np.column_stack((x_coords, y_coords))

def create_hydrofoil_mesh():
    gmsh.initialize()
    gmsh.option.setNumber("General.Terminal", 1)

    # ---------- Parameters ----------
    chord = 1.0
    angle_of_attack = 5.0          # degrees
    domain_x = 10.0                # half-width
    domain_y = 6.0                 # half-height

    # Mesh sizes that yield ~6814 triangles and ~3559 nodes
    mesh_size_airfoil = 0.005
    mesh_size_farfield = 0.2

    # ---------- Airfoil geometry ----------
    airfoil_coords = generate_naca_airfoil("0012", num_points=128, chord=chord)
    # Flip so camber points upward
    airfoil_coords[:, 1] = -airfoil_coords[:, 1]

    # Rotate by angle of attack
    theta = np.radians(angle_of_attack)
    rot = np.array([[np.cos(theta), -np.sin(theta)],
                    [np.sin(theta),  np.cos(theta)]])
    airfoil_coords = airfoil_coords @ rot.T

    # Create points for the airfoil
    airfoil_pts = []
    for i, (x, y) in enumerate(airfoil_coords):
        tag = gmsh.model.geo.addPoint(x, y, 0, mesh_size_airfoil, i + 1)
        airfoil_pts.append(tag)

    airfoil_spline = gmsh.model.geo.addSpline(airfoil_pts, 1)
    close_line = gmsh.model.geo.addLine(airfoil_pts[-1], airfoil_pts[0], 2)

    # ---------- Rectangular domain ----------
    p_bl = gmsh.model.geo.addPoint(-domain_x, -domain_y, 0, mesh_size_farfield)
    p_br = gmsh.model.geo.addPoint( domain_x, -domain_y, 0, mesh_size_farfield)
    p_tr = gmsh.model.geo.addPoint( domain_x,  domain_y, 0, mesh_size_farfield)
    p_tl = gmsh.model.geo.addPoint(-domain_x,  domain_y, 0, mesh_size_farfield)

    bottom = gmsh.model.geo.addLine(p_bl, p_br, 3)   # lower_wall
    right  = gmsh.model.geo.addLine(p_br, p_tr, 4)   # outlet
    top    = gmsh.model.geo.addLine(p_tr, p_tl, 5)   # upper_wall
    left   = gmsh.model.geo.addLine(p_tl, p_bl, 6)   # inlet

    # ---------- Curve loops and surface ----------
    airfoil_loop = gmsh.model.geo.addCurveLoop([airfoil_spline, close_line], 1)
    outer_loop   = gmsh.model.geo.addCurveLoop([bottom, right, top, left], 2)
    surface      = gmsh.model.geo.addPlaneSurface([outer_loop, airfoil_loop], 1)

    gmsh.model.geo.synchronize()

    # ---------- Physical groups – exact SU2 marker names ----------
    gmsh.model.addPhysicalGroup(1, [airfoil_spline, close_line], name="airfoil")
    gmsh.model.addPhysicalGroup(1, [bottom], name="lower_wall")
    gmsh.model.addPhysicalGroup(1, [left],   name="inlet")
    gmsh.model.addPhysicalGroup(1, [right],  name="outlet")
    gmsh.model.addPhysicalGroup(1, [top],    name="upper_wall")
    gmsh.model.addPhysicalGroup(2, [surface], name="fluid")   # optional

    # ---------- Generate unstructured triangular mesh ----------
    gmsh.model.mesh.generate(2)

    # ---------- Write SU2 file ----------
    output_path = "//wsl$/Ubuntu/home/xlr82sas/su2hydro/mesh_NACA0012_5deg_6814.su2"
    try:
        os.makedirs(os.path.dirname(output_path), exist_ok=True)
        gmsh.write(output_path)
        print(f"Mesh written to: {output_path}")
    except Exception as e:
        print(f"Could not write to WSL: {e}")
        fallback = "mesh_NACA0012_5deg_6814.su2"
        gmsh.write(fallback)
        print(f"Mesh written locally as: {fallback}")

    # ---------- Statistics ----------
    nodes = gmsh.model.mesh.getNodes()[0]
    elems = gmsh.model.mesh.getElements(2)[1]
    print(f"Nodes: {len(nodes)}, Triangles: {len(elems)}")

    for dim in [1, 2]:
        groups = gmsh.model.getPhysicalGroups(dim)
        for group in groups:
            name = gmsh.model.getPhysicalName(dim, group[1])
            entities = gmsh.model.getEntitiesForPhysicalGroup(dim, group[1])
            total = 0
            for entity in entities:
                _, tags, _ = gmsh.model.mesh.getElements(dim, entity)
                total += len(tags)
            print(f"Marker {name}: {total} elements")

    gmsh.finalize()

if __name__ == "__main__":
    create_hydrofoil_mesh()
endsubmit;
run;


/*--- SECTIONS IN THE \\wsl$\Ubuntu\home\xlr82sas\su2hydro\inv_naca0012.cfg FILE ---*/

data _null_;
  infile "//wsl$/Ubuntu/home/xlr82sas/su2hydro/mesh_NACA0012_5deg_6814.su2";
  input;
  file print;
  if _n_=1 then put "SECTIONS IN THE //wsl$/Ubuntu/home/xlr82sas/su2hydro/mesh_NACA0012_5deg_6814.su2 FILE" /;
  if index(_infile_,'MARK')>0 or _infile_=:'N' then put _infile_;
run;quit;

/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/

/**************************************************************************************************************************/
/* Altair SLC                                                                                                             */
/*                                                                                                                        */
/* The PYTHON Procedure                                                                                                   */
/*                                                                                                                        */
/* Mesh written to: //wsl$/Ubuntu/home/xlr82sas/su2hydro/mesh_NACA0012_5deg_6814.su2                                      */
/*                                                                                                                        */
/* Nodes: 25703, Triangles: 1                                                                                             */
/* Marker airfoil: 2 elements                                                                                             */
/* Marker lower_wall: 1 elements                                                                                          */
/* Marker inlet: 1 elements                                                                                               */
/* Marker outlet: 1 elements                                                                                              */
/* Marker upper_wall: 1 elements                                                                                          */
/* Marker fluid: 1 elements                                                                                               */
/*                                                                                                                        */
/*========================================================================================================================*/
/*                                                                                                                        */
/* SECTIONS IN THE //wsl$/Ubuntu/home/xlr82sas/su2hydro/mesh_NACA0012_5deg_6814.su2 FILE                                  */
/*                                                                                                                        */
/* NDIME= 2                                                                                                               */
/* NELEM= 79121                                                                                                           */
/* NPOIN= 39965                                                                                                           */
/* NMARK= 5                                                                                                               */
/* MARKER_TAG= airfoil                                                                                                    */
/* MARKER_ELEMS= 409                                                                                                      */
/* MARKER_TAG= lower_wall                                                                                                 */
/* MARKER_ELEMS= 100                                                                                                      */
/* MARKER_TAG= inlet                                                                                                      */
/* MARKER_ELEMS= 100                                                                                                      */
/* MARKER_TAG= outlet                                                                                                     */
/* MARKER_ELEMS= 100                                                                                                      */
/* MARKER_TAG= upper_wall                                                                                                 */
/* MARKER_ELEMS= 100                                                                                                      */
/*                                                                                                                        */
/*========================================================================================================================*/
/*                                                                                                                        */
/* //wsl$/Ubuntu/home/xlr82sas/su2hydro/mesh_NACA0012_5deg_6814.su2                                                       */
/*                                                                                                                        */
/* NDIME= 2                                                                                                               */
/* NELEM= 50171                                                                                                           */
/* 5 18863 10134 20390 0                                                                                                  */
/* 5 20873 20009 22718 1                                                                                                  */
/* 5 9056 15659 15661 2                                                                                                   */
/* 5 3771 18098 21582 3                                                                                                   */
/* ...                                                                                                                    */
/* NMARK= 5                                                                                                               */
/* MARKER_TAG= airfoil                                                                                                    */
/* MARKER_ELEMS= 409                                                                                                      */
/* 3 0 6                                                                                                                  */
/* 3 6 7                                                                                                                  */
/* 3 7 8                                                                                                                  */
/* 3 8 9                                                                                                                  */
/* ...                                                                                                                    */
/* MARKER_TAG= lower_wall                                                                                                 */
/* MARKER_ELEMS= 100                                                                                                      */
/* 3 2 413                                                                                                                */
/* 3 413 414                                                                                                              */
/* 3 414 415                                                                                                              */
/* 3 415 416                                                                                                              */
/* ...                                                                                                                    */
/* MARKE   R_TAG= inlet                                                                                                   */
/* MARKER_ELEMS= 60                                                                                                       */
/* 3 5 670                                                                                                                */
/* 3 670 671                                                                                                              */
/* 3 671 672                                                                                                              */
/* 3 672 673                                                                                                              */
/* 3 673 674                                                                                                              */
/* ...                                                                                                                    */
/* MARKER_TAG= outlet                                                                                                     */
/* MARKER_ELEMS= 60                                                                                                       */
/* 3 3 512                                                                                                                */
/* 3 512 513                                                                                                              */
/* 3 513 514                                                                                                              */
/* 3 514 515                                                                                                              */
/* 3 515 516                                                                                                              */
/* ...                                                                                                                    */
/* MARKER_TAG= upper_wall                                                                                                 */
/* MARKER_ELEMS= 100                                                                                                      */
/* 3 4 571                                                                                                                */
/* 3 571 572                                                                                                              */
/* 3 572 573                                                                                                              */
/* 3 573 574                                                                                                              */
/*                                                                                                                        */
/**************************************************************************************************************************

/*
| | ___   __ _
| |/ _ \ / _` |
| | (_) | (_| |
|_|\___/ \__, |
         |___/
*/
1                                          Altair SLC          13:44 Tuesday, July  7, 2026

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas
NOTE: Library workx assigned as follows:
      Engine:        SAS7BDAT
      Physical Name: d:\wpswrkx

NOTE: Library wpdx assigned as follows:
      Engine:        WPD
      Physical Name: d:\wpswrkx

NOTE: Library slchelp assigned as follows:
      Engine:        WPD
      Physical Name: C:\Progra~1\Altair\SLC\2026\sashelp


LOG:  13:44:35
NOTE: 1 record was written to file PRINT

NOTE: The data step took :
      real time : 0.031
      cpu time  : 0.015


NOTE: Format num2mis output
NOTE: Format $chr2mis output
NOTE: Procedure format step took :
      real time : 0.015
      cpu time  : 0.000


NOTE: AUTOEXEC processing completed

1          %utlfkil(//wsl$/Ubuntu/home/xlr82sas/su2hydro/mesh_NACA0012_5deg_6814.su2);
The file //wsl$/Ubuntu/home/xlr82sas/su2hydro/mesh_NACA0012_5deg_6814.su2 does not exist
2
3         /*--- WINDOWS ---*/
5
6         options validvarname=v7;
7         options set=PYTHONHOME "D:\py314";
8         proc python;
9         submit;
10        import gmsh
11        import numpy as np
12        import math
13        import os
14
15        def generate_naca_airfoil(naca_digits="0012", num_points=128, chord=1.0):
16            """
17            Return (x, y) coordinates of a NACA 4-digit airfoil.
18            num_points = number of points on the closed airfoil (including TE).
19            """
20            m = int(naca_digits[0]) / 100.0
21            p = int(naca_digits[1]) / 10.0
22            t = int(naca_digits[2:]) / 100.0
23
24            x = np.linspace(0, chord, num_points)
25            yt = np.zeros_like(x)
26            yc = np.zeros_like(x)
27            dyc_dx = np.zeros_like(x)
28
29            for i, xi in enumerate(x):
30                yt[i] = (t / 0.2) * (0.2969 * np.sqrt(xi/chord)
31                                     - 0.1260 * (xi/chord)
32                                     - 0.3516 * (xi/chord)**2
33                                     + 0.2843 * (xi/chord)**3
34                                     - 0.1015 * (xi/chord)**4)
35                if xi < p * chord:
36                    yc[i] = (m / p**2) * (2 * p * (xi/chord) - (xi/chord)**2)
37                    dyc_dx[i] = (2 * m / p**2) * (p - xi/chord)
38                else:
39                    yc[i] = (m / (1 - p)**2) * ((1 - 2 * p) + 2 * p * (xi/chord) - (xi/chord)**2)
40                    dyc_dx[i] = (2 * m / (1 - p)**2) * (p - xi/chord)
41
42            theta = np.arctan(dyc_dx)
43            x_upper = x - yt * np.sin(theta)
44            y_upper = yc + yt * np.cos(theta)
45            x_lower = x + yt * np.sin(theta)
46            y_lower = yc - yt * np.cos(theta)
47
48            # Build closed airfoil: upper surface from LE to TE, then lower surface back
49            x_coords = np.concatenate([x_upper[::-1], x_lower[1:]])
50            y_coords = np.concatenate([y_upper[::-1], y_lower[1:]])
51            return np.column_stack((x_coords, y_coords))
52
53        def create_hydrofoil_mesh():
54            gmsh.initialize()
55            gmsh.option.setNumber("General.Terminal", 1)
56
57            # ---------- Parameters ----------
58            chord = 1.0
59            angle_of_attack = 5.0          # degrees
60            domain_x = 10.0                # half-width
61            domain_y = 6.0                 # half-height
62
63            # Mesh sizes that yield ~6814 triangles and ~3559 nodes
64            mesh_size_airfoil = 0.005
65            mesh_size_farfield = 0.2
66
67            # ---------- Airfoil geometry ----------
68            airfoil_coords = generate_naca_airfoil("0012", num_points=128, chord=chord)
69            # Flip so camber points upward
70            airfoil_coords[:, 1] = -airfoil_coords[:, 1]
71
72            # Rotate by angle of attack
73            theta = np.radians(angle_of_attack)
74            rot = np.array([[np.cos(theta), -np.sin(theta)],
75                            [np.sin(theta),  np.cos(theta)]])
76            airfoil_coords = airfoil_coords @ rot.T
77
78            # Create points for the airfoil
79            airfoil_pts = []
80            for i, (x, y) in enumerate(airfoil_coords):
81                tag = gmsh.model.geo.addPoint(x, y, 0, mesh_size_airfoil, i + 1)
82                airfoil_pts.append(tag)
83
84            airfoil_spline = gmsh.model.geo.addSpline(airfoil_pts, 1)
85            close_line = gmsh.model.geo.addLine(airfoil_pts[-1], airfoil_pts[0], 2)
86
87            # ---------- Rectangular domain ----------
88            p_bl = gmsh.model.geo.addPoint(-domain_x, -domain_y, 0, mesh_size_farfield)
89            p_br = gmsh.model.geo.addPoint( domain_x, -domain_y, 0, mesh_size_farfield)
90            p_tr = gmsh.model.geo.addPoint( domain_x,  domain_y, 0, mesh_size_farfield)
91            p_tl = gmsh.model.geo.addPoint(-domain_x,  domain_y, 0, mesh_size_farfield)
92
93            bottom = gmsh.model.geo.addLine(p_bl, p_br, 3)   # lower_wall
94            right  = gmsh.model.geo.addLine(p_br, p_tr, 4)   # outlet
95            top    = gmsh.model.geo.addLine(p_tr, p_tl, 5)   # upper_wall
96            left   = gmsh.model.geo.addLine(p_tl, p_bl, 6)   # inlet
97
98            # ---------- Curve loops and surface ----------
99            airfoil_loop = gmsh.model.geo.addCurveLoop([airfoil_spline, close_line], 1)
100           outer_loop   = gmsh.model.geo.addCurveLoop([bottom, right, top, left], 2)
101           surface      = gmsh.model.geo.addPlaneSurface([outer_loop, airfoil_loop], 1)
102
103           gmsh.model.geo.synchronize()
104
105           # ---------- Physical groups â€“ exact SU2 marker names ----------
106           gmsh.model.addPhysicalGroup(1, [airfoil_spline, close_line], name="airfoil")
107           gmsh.model.addPhysicalGroup(1, [bottom], name="lower_wall")
108           gmsh.model.addPhysicalGroup(1, [left],   name="inlet")
109           gmsh.model.addPhysicalGroup(1, [right],  name="outlet")
110           gmsh.model.addPhysicalGroup(1, [top],    name="upper_wall")
111           gmsh.model.addPhysicalGroup(2, [surface], name="fluid")   # optional
112
113           # ---------- Generate unstructured triangular mesh ----------
114           gmsh.model.mesh.generate(2)
115
116           # ---------- Write SU2 file ----------
117           output_path = "//wsl$/Ubuntu/home/xlr82sas/su2hydro/mesh_NACA0012_5deg_6814.su2"
118           try:
119               os.makedirs(os.path.dirname(output_path), exist_ok=True)
120               gmsh.write(output_path)
121               print(f"Mesh written to: {output_path}")
122           except Exception as e:
123               print(f"Could not write to WSL: {e}")
124               fallback = "mesh_NACA0012_5deg_6814.su2"
125               gmsh.write(fallback)
126               print(f"Mesh written locally as: {fallback}")
127
128           # ---------- Statistics ----------
129           nodes = gmsh.model.mesh.getNodes()[0]
130           elems = gmsh.model.mesh.getElements(2)[1]
131           print(f"Nodes: {len(nodes)}, Triangles: {len(elems)}")
132
133           for dim in [1, 2]:
134               groups = gmsh.model.getPhysicalGroups(dim)
135               for group in groups:
136                   name = gmsh.model.getPhysicalName(dim, group[1])
137                   entities = gmsh.model.getEntitiesForPhysicalGroup(dim, group[1])
138                   total = 0
139                   for entity in entities:
140                       _, tags, _ = gmsh.model.mesh.getElements(dim, entity)
141                       total += len(tags)
142                   print(f"Marker {name}: {total} elements")
143
144           gmsh.finalize()
145
146       if __name__ == "__main__":
147           create_hydrofoil_mesh()
148       endsubmit;

NOTE: Submitting statements to Python:


149       run;
NOTE: Procedure python step took :
      real time : 3.140
      cpu time  : 0.015


150
151
152       /*--- SECTIONS IN THE \\wsl$\Ubuntu\home\xlr82sas\su2hydro\inv_naca0012.cfg FILE ---*/
153
154       data _null_;
155         infile "//wsl$/Ubuntu/home/xlr82sas/su2hydro/mesh_NACA0012_5deg_6814.su2";
156         input;
157         file print;
158         if _n_=1 then put "SECTIONS IN THE //wsl$/Ubuntu/home/xlr82sas/su2hydro/mesh_NACA0012_5deg_6814.su2 FILE" /;
159         if index(_infile_,'MARK')>0 or _infile_=:'N' then put _infile_;
160       run;

NOTE: The infile '\\wsl$\Ubuntu\home\xlr82sas\su2hydro\mesh_NACA0012_5deg_6814.su2' is:
      Filename='\\wsl$\Ubuntu\home\xlr82sas\su2hydro\mesh_NACA0012_5deg_6814.su2',
      File size (bytes)=2415447,
      Create Time=13:44:39 Jul 07 2026,
      Last Accessed=13:44:39 Jul 07 2026,
      Last Modified=13:44:39 Jul 07 2026,
      Lrecl=32767, Recfm=V

NOTE: 76364 records were read from file '\\wsl$\Ubuntu\home\xlr82sas\su2hydro\mesh_NACA0012_5deg_6814.su2'
      The minimum record length was 6
      The maximum record length was 50
NOTE: 16 records were written to file PRINT

NOTE: The data step took :
      real time : 0.284
      cpu time  : 0.093


160     !     quit;

NOTE: Submitted statements took :
      real time : 4.343
      cpu time  : 0.187

/*  _    _ _                                   _                                      _
| || |  | (_)_ __  _   ___  __  ___ _ ____   _(_)_ __ ___  _ __  _ __ ___   ___ _ __ | |_
| || |_ | | | `_ \| | | \ \/ / / _ \ `_ \ \ / / | `__/ _ \| `_ \| `_ ` _ \ / _ \ `_ \| __|
|__   _|| | | | | | |_| |>  < |  __/ | | \ V /| | | | (_) | | | | | | | | |  __/ | | | |_
   |_|  |_|_|_| |_|\__,_/_/\_\ \___|_| |_|\_/ |_|_|  \___/|_| |_|_| |_| |_|\___|_| |_|\__|

*/

/*--- YOU WILL NEED TO SOURCE THIS FILE IN UBUNTU TO TEMPORALLY SET ENVIRONMENT VARIABLES ---*/

%slc_lxbegin;
cards4;
#!/bin/bash
# Create SU2 environment file using echo commands (variable not available yet)
echo 'export SU2_HOME="$HOME/SU2"' > ~/su2hydro/su2_env.sh
echo 'export SU2_RUN="$HOME/SU2_install/bin"' >> ~/su2hydro/su2_env.sh
echo 'export PATH="$SU2_RUN:$PATH"' >> ~/su2hydro/su2_env.sh
echo 'export PYTHONPATH="$SU2_RUN:$PYTHONPATH"' >> ~/su2hydro/su2_env.sh
chmod +x ~/su2hydro/su2_env.sh
echo "SU2 environment file created at ~/su2hydro/su2_env.sh"
;;;;
%slc_lxend;

/**************************************************************************************************************************/
/*  \\wsl.localhost\Ubuntu\home\xlr82sas\su2hydro\su2_env.sh                                                              */
/*                                                                                                                        */
/* export SU2_HOME="$HOME/SU2"                                                                                            */
/* export SU2_RUN="$HOME/SU2_install/bin"                                                                                 */
/* export PATH="$SU2_RUN:$PATH"                                                                                           */
/* export PYTHONPATH="$SU2_RUN:$PYTHONPATH"                                                                               */
/**************************************************************************************************************************/

/*
| | ___   __ _
| |/ _ \ / _` |
| | (_) | (_| |
|_|\___/ \__, |
         |___/
*/
1                                          Altair SLC           13:08 Monday, July  6, 2026

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas

NOTE: AUTOEXEC processing completed

1          %slc_lxbegin;
The file c:/temp/lx_pgm.sh does not exist
2         cards4;

NOTE: The file '\\wsl$\Ubuntu\home\xlr82sas\temp\lx_pgm.sh' is:
      Filename='\\wsl$\Ubuntu\home\xlr82sas\temp\lx_pgm.sh',
      File size (bytes)=0,
      Create Time=12:10:20 Jul 06 2026,
      Last Accessed=12:10:20 Jul 06 2026,
      Last Modified=13:08:43 Jul 06 2026,
      Lrecl=32767, Recfm=V

NOTE: 8 records were written to file '\\wsl$\Ubuntu\home\xlr82sas\temp\lx_pgm.sh'
      The minimum record length was 80
      The maximum record length was 80
NOTE: The data step took :
      real time : 30.706
      cpu time  : 0.000


3         #!/bin/bash
4         # Create SU2 environment file using echo commands (variable not available yet)
5         echo 'export SU2_HOME="$HOME/SU2"' > ~/su2hydro/su2_env.sh
6         echo 'export SU2_RUN="$HOME/SU2_install/bin"' >> ~/su2hydro/su2_env.sh
7         echo 'export PATH="$SU2_RUN:$PATH"' >> ~/su2hydro/su2_env.sh
8         echo 'export PYTHONPATH="$SU2_RUN:$PYTHONPATH"' >> ~/su2hydro/su2_env.sh
9         chmod +x ~/su2hydro/su2_env.sh
10        echo "SU2 environment file created at ~/su2hydro/su2_env.sh"
11        ;;;;
12        %slc_lxend;

NOTE: The data step took :
      real time : 4.116
      cpu time  : 0.000



NOTE: The data step took :
      real time : 0.367
      cpu time  : 0.015

NOTE: The infile rut is:
      Unnamed Pipe Access Device,
      Process=wsl bash -l -c /home/xlr82sas/temp/lx_pgm.sh,
      Lrecl=32756, Recfm=V

SU2 environment file created at ~/su2hydro/su2_env.sh
NOTE: 1 record was written to file PRINT

NOTE: 1 record was read from file rut
      The minimum record length was 53
      The maximum record length was 53
NOTE: The data step took :
      real time : 0.293
      cpu time  : 0.000

NOTE: The infile rut is:
      Unnamed Pipe Access Device,
      Process=wsl bash -l -c /home/xlr82sas/temp/lx_pgm.sh,
      Lrecl=32767, Recfm=V

NOTE: The file 'c:\temp\lx_pgm.log' is:
      Filename='c:\temp\lx_pgm.log',
      Owner Name=SLC\suzie,
      File size (bytes)=0,
      Create Time=13:08:48 Jul 06 2026,
      Last Accessed=13:08:48 Jul 06 2026,
      Last Modified=13:08:48 Jul 06 2026,
      Lrecl=32767, Recfm=V

NOTE: 1 record was read from file rut
      The minimum record length was 53
      The maximum record length was 53
NOTE: 1 record was written to file 'c:\temp\lx_pgm.log'
      The minimum record length was 53
      The maximum record length was 53
NOTE: The data step took :
      real time : 0.237
      cpu time  : 0.015

NOTE: Submitted statements took :
      real time : 35.895
      cpu time  : 0.093

/*___                           _                 _       _   _
| ___|   _ __ _   _ _ __    ___(_)_ __ ___  _   _| | __ _| |_(_) ___  _ __
|___ \  | `__| | | | `_ \  / __| | `_ ` _ \| | | | |/ _` | __| |/ _ \| `_ \
 ___) | | |  | |_| | | | | \__ \ | | | | | | |_| | | (_| | |_| | (_) | | | |
|____/  |_|   \__,_|_| |_| |___/_|_| |_| |_|\__,_|_|\__,_|\__|_|\___/|_| |_|

source ~/su2hydro//su2_env.sh - sets up the environment just for the simulation - not permanent environemnt variables
*/

%slc_lxbegin;
cards4;
source ~/su2hydro//su2_env.sh
cd /home/xlr82sas/su2hydro
SU2_CFD inv_naca0012.cfg
;;;;
%slc_lxend;

/*
| | ___   __ _
| |/ _ \ / _` |
| | (_) | (_| |
|_|\___/ \__, |
         |___/
*/


/**************************************************************************************************************************/
/* Most important part of log is the convergence presuree horizontal and verticak velocity                                */
/*                                                                                                                        */
/*  The values are log10                                                                                                  */
/*                                                                                                                        */
/*  Simulation Run using the Single-zone Driver                                                                           */
/*                                                                                                                        */
/*                                 Pressure                                                                               */
/*                                 Convergence                                                                            */
/*  +----------------------------------------------------------------------+                                              */
/*  |  Inner_Iter|      rms[P]|    10**rms[p]           rms[U]|      rms[V]|                                              */
/*  +----------------------------------------------------------------------+                                              */
/*  |           0|   -3.891564|   0.0001283619       -3.906685|   -2.900787|                                              */
/*  |           1|   -3.851526|   0.0001407583       -3.239949|   -3.510118|                                              */
/*  |           2|   -4.056190|   0.0000878638       -3.441952|   -3.880280|                                              */
/*  |           3|   -4.306987|   0.0000493189       -3.658264|   -4.095260|                                              */
/*  |           4|   -4.669122|   0.0000214229       -3.842155|   -4.175426|                                              */
/*  |           5|   -4.687107|   0.0000205538       -3.875695|   -4.187996|                                              */
/*                                                                                                                        */
/**************************************************************************************************************************/

1                                          Altair SLC          14:15 Tuesday, July  7, 2026

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas

NOTE: AUTOEXEC processing completed

1         %slc_lxbegin;
The file c:/temp/lx_pgm.sh does not exist
2         cards4;

NOTE: The file '\\wsl$\Ubuntu\home\xlr82sas\temp\lx_pgm.sh' is:
      Filename='\\wsl$\Ubuntu\home\xlr82sas\temp\lx_pgm.sh',
      File size (bytes)=0,
      Create Time=14:15:08 Jul 07 2026,
      Last Accessed=14:15:08 Jul 07 2026,
      Last Modified=14:15:32 Jul 07 2026,
      Lrecl=32767, Recfm=V

NOTE: 3 records were written to file '\\wsl$\Ubuntu\home\xlr82sas\temp\lx_pgm.sh'
      The minimum record length was 80
      The maximum record length was 80
NOTE: The data step took :
      real time : 0.598
      cpu time  : 0.031


3         source ~/su2hydro//su2_env.sh
4         cd /home/xlr82sas/su2hydro
5         SU2_CFD inv_naca0012.cfg
6         ;;;;
7         %slc_lxend;

NOTE: The data step took :
      real time : 3.461
      cpu time  : 0.000



NOTE: The data step took :
      real time : 0.298
      cpu time  : 0.015



NOTE: The infile rut is:
      Unnamed Pipe Access Device,
      Process=wsl bash -l -c /home/xlr82sas/temp/lx_pgm.sh,
      Lrecl=32756, Recfm=V


-------------------------------------------------------------------------
|    ___ _   _ ___                                                      |
|   / __| | | |_  )   Release 8.5.0 "Harrier"                           |
|   \__ \ |_| |/ /                                                      |
|   |___/\___//___|   Suite (Computational Fluid Dynamics Code)         |
|                                                                       |
-------------------------------------------------------------------------
| SU2 Project Website: https://su2code.github.io                        |
|                                                                       |
| The SU2 Project is maintained by the SU2 Foundation                   |
| (http://su2foundation.org)                                            |
-------------------------------------------------------------------------
| Copyright 2012-2026, SU2 Contributors                                 |
|                                                                       |
| SU2 is free software; you can redistribute it and/or                  |
| modify it under the terms of the GNU Lesser General Public            |
| License as published by the Free Software Foundation; either          |
| version 2.1 of the License, or (at your option) any later version.    |
|                                                                       |
| SU2 is distributed in the hope that it will be useful,                |
| but WITHOUT ANY WARRANTY; without even the implied warranty of        |
| MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU      |
| Lesser General Public License for more details.                       |
|                                                                       |
| You should have received a copy of the GNU Lesser General Public      |
| License along with SU2. If not, see <http://www.gnu.org/licenses/>.   |
-------------------------------------------------------------------------

Parsing config file for zone 0

----------------- Physical Case Definition ( Zone 0 ) -------------------
Incompressible Euler equations.
No restart solution, use the values at infinity (freestream).
Non-Dimensional simulation using intialization values.
The reference area is 1 m^2.
The semi-span will be computed using the max y(3D) value.
The reference length is 1 m.
Surface(s) plotted in the output file: airfoil, lower_wall, upper_wall.
Input mesh file name: mesh_NACA0012_5deg_6814.su2

--------------- Space Numerical Integration ( Zone 0 ) ------------------
Jameson-Schmidt-Turkel scheme (2nd order in space) for the flow inviscid terms.
JST viscous coefficients (2nd & 4th): 0.5, 0.02.
The method includes a grid stretching correction (p = 0.3).
Gradient for upwind reconstruction: inverse-distance weighted Least-Squares.
Gradient for viscous and source terms: inverse-distance weighted Least-Squares.

--------------- Time Numerical Integration  ( Zone 0 ) ------------------
Local time stepping (steady state simulation).
Euler implicit method for the flow equations.
FGMRES is used for solving the linear system.
Using a ILU(0) preconditioning.
Convergence criteria of the linear solver: 1e-06.
Max number of linear iterations: 10.
No CFL adaptation.
Courant-Friedrichs-Lewy number:      100

------------------ Convergence Criteria  ( Zone 0 ) ---------------------
Maximum number of solver subiterations: 500.
Begin convergence monitoring at iteration 5.
Residual minimum value: 1e1e-08.
Cauchy series min. value: 1e-10.
Number of Cauchy elements: 100.
Begin windowed time average at iteration 0.

-------------------- Output Information ( Zone 0 ) ----------------------
File writing frequency:
+------------------------------------+
|                     File| Frequency|
+------------------------------------+
|                  RESTART|       100|
|                      CSV|       100|
|                 PARAVIEW|       100|
|         SURFACE_PARAVIEW|       100|
|              SURFACE_CSV|       100|
+------------------------------------+
Writing the convergence history file every 1 inner iterations.
Writing the screen convergence history every 1 inner iterations.
The tabular file format is Tecplot (.dat).
Convergence history file name: history.
Forces breakdown file name: forces_breakdown.dat.
Surface file name: surface_flow.
Volume file name: volume_flow.
Restart file name: restart_flow.dat.

------------- Config File Boundary Information ( Zone 0 ) ---------------
+-----------------------------------------------------------------------+
|                        Marker Type|                        Marker Name|
+-----------------------------------------------------------------------+
|                         Euler wall|                            airfoil|
|                                   |                         lower_wall|
|                                   |                         upper_wall|
+-----------------------------------------------------------------------+
|                     Inlet boundary|                              inlet|
+-----------------------------------------------------------------------+
|                    Outlet boundary|                             outlet|
+-----------------------------------------------------------------------+

-------------------- Output Preprocessing ( Zone 0 ) --------------------

WARNING: SURFACE_PRESSURE_DROP can only be computed for at least 2 surfaces (outlet, inlet, ...)

Screen output fields: INNER_ITER, RMS_PRESSURE, RMS_VELOCITY-X, RMS_VELOCITY-Y
History output group(s): ITER, RMS_PRESSURE, RMS_VELOCITY-X, RMS_VELOCITY-Y
Convergence field(s): RMS_PRESSURE
Warning: No (valid) fields chosen for time convergence monitoring. Time convergence monitoring inactive.
Volume output fields: COORDINATES, SOLUTION, PRIMITIVE

------------------- Geometry Preprocessing ( Zone 0 ) -------------------
Two dimensional problem.
25450 grid points.
50171 volume elements.
5 surface markers.
409 boundary elements in index 0 (Marker = airfoil).
100 boundary elements in index 1 (Marker = lower_wall).
60 boundary elements in index 2 (Marker = inlet).
60 boundary elements in index 3 (Marker = outlet).
100 boundary elements in index 4 (Marker = upper_wall).
50171 triangles.
Setting point connectivity.
Renumbering points (Reverse Cuthill McKee Ordering).
Recomputing point connectivity.
Setting element connectivity.
Checking the numerical grid orientation.
All volume elements are correctly oriented.
All surface elements are correctly oriented.
Identifying edges and vertices.
Setting the control volume structure.
Area of the computational grid: 239.918.
Searching for the closest normal neighbors to the surfaces.
Storing a mapping from global to local point index.
Compute the surface curvature.
Max K: 335.715. Mean K: 1.92631. Standard deviation K: 18.3612.
Computing mesh quality statistics for the dual control volumes.
+--------------------------------------------------------------+
|           Mesh Quality Metric|        Minimum|        Maximum|
+--------------------------------------------------------------+
|    Orthogonality Angle (deg.)|        80.2107|        89.9642|
|     CV Face Area Aspect Ratio|        1.00009|        5.53544|
|           CV Sub-Volume Ratio|              1|        3.88941|
+--------------------------------------------------------------+
Finding max control volume width.
Wetted area = 0 m.
Area projection in the x-plane = 0 m, y-plane = 0 m.
Max. coordinate in the x-direction = -1e+10 m, y-direction = -1e+10 m.
Min. coordinate in the x-direction = 1e+10 m, y-direction = 1e+10 m.
Computing wall distances.

-------------------- Solver Preprocessing ( Zone 0 ) --------------------
Incompressible flow: rho_ref, vel_ref, and temp_ref
are based on the initial values, p_ref = rho_ref*vel_ref^2.
Force coefficients computed using initial values.
The reference area for force coeffs. is 1 m^2.
The reference length for force coeffs. is 1 m.
The pressure is decomposed into thermodynamic and dynamic components.
The initial value of the dynamic pressure is 0.
Mach number: 0.148821, computed using the Bulk modulus.
For external flows, the initial state is imposed at the far-field.
Angle of attack (deg): 0, computed using the initial velocity.
Side slip angle (deg): 0, computed using the initial velocity.
SI units only. The grid should be dimensional (meters).
No energy equation.

-- Models:
+------------------------------------------------------------------------------+
|          Viscosity Model|        Conductivity Model|              Fluid Model|
+------------------------------------------------------------------------------+
|                        -|                         -|         CONSTANT_DENSITY|
+------------------------------------------------------------------------------+
-- Fluid properties:
+------------------------------------------------------------------------------+
|                  Name|    Dim. value|    Ref. value|      Unit|Non-dim. value|
+------------------------------------------------------------------------------+
|          Bulk Modulus|        142000|             1|        Pa|        142000|
+------------------------------------------------------------------------------+
-- Initial and free-stream conditions:
+------------------------------------------------------------------------------+
|                  Name|    Dim. value|    Ref. value|      Unit|Non-dim. value|
+------------------------------------------------------------------------------+
|      Dynamic Pressure|             0|       3144.95|        Pa|             0|
|        Total Pressure|       1572.48|       3144.95|        Pa|           0.5|
|               Density|         998.2|         998.2|    kg/m^3|             1|
|            Velocity-X|         1.775|         1.775|       m/s|             1|
|            Velocity-Y|             0|         1.775|       m/s|             0|
|    Velocity Magnitude|         1.775|         1.775|       m/s|             1|
+------------------------------------------------------------------------------+
|           Mach Number|             -|             -|         -|      0.148821|
+------------------------------------------------------------------------------+
Initialize Jacobian structure (Euler). MG level: 0.

------------------- Numerics Preprocessing ( Zone 0 ) -------------------

----------------- Integration Preprocessing ( Zone 0 ) ------------------

------------------- Iteration Preprocessing ( Zone 0 ) ------------------
Euler/Navier-Stokes/RANS fluid iteration.

------------------------------ Begin Solver -----------------------------

Simulation Run using the Single-zone Driver
+---------------------------------------------------+
|  Inner_Iter|      rms[P]|      rms[U]|      rms[V]|
+---------------------------------------------------+
|           0|   -3.891564|   -3.906685|   -2.900787|
|           1|   -3.851526|   -3.239949|   -3.510118|
|           2|   -4.056190|   -3.441952|   -3.880280|
|           3|   -4.306987|   -3.658264|   -4.095260|
|           4|   -4.669122|   -3.842155|   -4.175426|
|           5|   -4.687107|   -3.875695|   -4.187996|

----------------------------- Solver Exit -------------------------------
All convergence criteria satisfied.
+-----------------------------------------------------------------------+
|      Convergence Field     |     Value    |   Criterion  |  Converged |
+-----------------------------------------------------------------------+
|                      rms[P]|      -4.68711|       < 1e-08|         Yes|
+-----------------------------------------------------------------------+
-------------------------------------------------------------------------
+-----------------------------------------------------------------------+
|        File Writing Summary       |              Filename             |
+-----------------------------------------------------------------------+
|SU2 binary restart                 |restart_flow.dat                   |
|SU2 ASCII restart                  |restart_flow.csv                   |
|Paraview                           |volume_flow.vtu                    |
|Paraview surface                   |surface_flow.vtu                   |
|CSV file                           |surface_flow.csv                   |
+-----------------------------------------------------------------------+

--------------------------- Finalizing Solver ---------------------------
Deleted CNumerics container.
Deleted CIntegration container.
Deleted CSolver container.
Deleted CIteration container.
Deleted CInterface container.
Deleted CGeometry container.
Deleted CFreeFormDefBox class.
Deleted CSurfaceMovement class.
Deleted CVolumetricMovement class.
Deleted CConfig container.
Deleted nInst container.
Deleted COutput class.
-------------------------------------------------------------------------

------------------------- Exit Success (SU2_CFD) ------------------------

NOTE: 246 records were written to file PRINT

NOTE: 246 records were read from file rut
      The minimum record length was 0
      The maximum record length was 104
NOTE: The data step took :
      real time : 1.950
      cpu time  : 0.015



NOTE: The infile rut is:
      Unnamed Pipe Access Device,
      Process=wsl bash -l -c /home/xlr82sas/temp/lx_pgm.sh,
      Lrecl=32767, Recfm=V

NOTE: The file 'c:\temp\lx_pgm.log' is:
      Filename='c:\temp\lx_pgm.log',
      Owner Name=SLC\suzie,
      File size (bytes)=0,
      Create Time=12:16:48 Jul 07 2026,
      Last Accessed=14:15:37 Jul 07 2026,
      Last Modified=14:15:37 Jul 07 2026,
      Lrecl=32767, Recfm=V

NOTE: 246 records were read from file rut
      The minimum record length was 0
      The maximum record length was 104
NOTE: 246 records were written to file 'c:\temp\lx_pgm.log'
      The minimum record length was 0
      The maximum record length was 104
NOTE: The data step took :
      real time : 1.761
      cpu time  : 0.015


8

NOTE: Submitted statements took :
      real time : 8.284
      cpu time  : 0.187

/*__                     __                        _       _
 / /_    ___ _   _ _ __ / _| __ _  ___ ___   _ __ | | ___ | |_ ___
| `_ \  / __| | | | `__| |_ / _` |/ __/ _ \ | `_ \| |/ _ \| __/ __|
| (_) | \__ \ |_| | |  |  _| (_| | (_|  __/ | |_) | | (_) | |_\__ \
 \___/  |___/\__,_|_|  |_|  \__,_|\___\___| | .__/|_|\___/ \__|___/
                                            |_|
*/

/*--- SURFACE PLOTS ---*/

data workx.surface_data ;
 infile "\\wsl.localhost\Ubuntu\home\xlr82sas\su2_channel_flow\surface_flow.csv" delimiter=',' missover firstobs=2;
 input
   POINTID
   X
   Y
   PRESSURE
   VELOCITY_X
   VELOCITY_Y empty best32.;
 drop empty;

/*--- YOU NEED TO CREATE THE PLOTTING SYMBOLS 1-5 USING RANGES BELOW FOR PRESSURE

                                    SYMBOL
        11111      -01692 - -01418    1
        22222      -01418 - -01144    2
        33333      -01144 -  01130    3
        44444       01130 -  01405    4
        55555       01405 -  01679    5
---*/
run;

options ls=100 ps=28;
proc plot data=workx.surface_data;
  plot y*x=symbol/box haxis=-.075 to 1.25 by .25 vaxis=-.1 to .1 by .05 ;
run;
options ls=255 ps=255;


options ls=100 ps=28;
proc plot data=workx.surface_data;
  plot y*x=symbol_x/box haxis=-.075 to 1.25 by .25 vaxis=-.1 to .1 by .05;
run;
options ls=255 ps=255;

                                     SURFACE PRESSURES

       -0.075            01175            01425    X       01675            01925            1.175
       ---+----------------+----------------+----------------+----------------+----------------+---
       |                                                                                          |
       |   SURFACE PRESSURES                                LOW TO HIGH   PRESURE  RANGE          |
       |                                                                                          |
       |                                                      11111      -01692 - -01418          |
       |                                                      22222      -01418 - -01144          |
     Y |            LOW PRESSURE LIFT                         33333      -01144 -  01130          |     Y
  0.10 +                                                      44444       01130 -  01405          +  0.10
       |            11111122 222 2 22                         55555       01405 -  01679          |
       |        1111                  2 2 2 22                                                    |
  0.05 +       11                              2 2 2 2                                            +  0.05
       |       55                                      2 3 33                                     |
       |        44                                            3 33                                |
  0.00 +          4333                                             33 333                         +  0.00
       |             33333                                               33333                    |
       |                   333 33 3                                           333334  TURBULENCE  |
 -0.05 +                            33 3 3 3 3 3 3 3 33 3 3 3 33 3 333 33333333333343             + -0.05
       |                                                                                          |
       |                        HIGHER PRESSURE PUSH UP                                           |
 -0.10 +                                                                                          + -0.10
       ---+----------------+----------------+----------------+----------------+----------------+---
       -0.075            01175            01425   X        01675            01925            1.175



                                        SURFACE X VELOCITIES

          -0.075            01175            01425    X       01675            01925            11175
       ------+----------------+----------------+----------------+----------------+----------------+---
       |                                                                                             |
       |  SURFACE X VELOCITIES                                  LOW TO HIGH      VELOCITY_X          |
       |                                                                                             |
       |                                                           11111       -01375 -  01000       |
       |                                                           22222        01000 -  01375       |
       |                                                           33333        01375 -  01750       |
       |                                                           44444        01750 -  11125       |
       |                                                           55555        11125 -  11500       |
     Y |            HIGHEST VELOCITY                                                                 |     Y
  0.10 +                                       DECELERATION                                          +  0.10
       |               55555555 555 5 55                                                             |
       |           5555                  5 5 4 44                                                    |
  0.05 +          44                              4 4 4 4                                            +  0.05
       | LOWEST X 12                                      4 4 44                                     |
       | VELOCITY  33                                            4 44                                |
  0.00 +             4444                                             44 444                         +  0.00
       |                44444                                               44444                    |
       |                      444 45 5                                           444333  MIXED X     |
 -0.05 +                               55 5 5 5 5 5 5 5 44 4 4 4 44 4 444 44444444444431 VELOCITY    + -0.05
       |                                                                                 SWIRLING?   |
       |                                 HUGHEST VELOCITY                                            |
 -0.10 +                                                                                             + -0.10
       ------+----------------+----------------+----------------+----------------+----------------+---
          -0.075            01175            01425    X       01675            01925            11175

/*____                              _                 _               _            __       _ _
|___  | _ __   __ _ _ __ __ ___   _(_) _____      __ | |__  _   _  __| |_ __ ___  / _| ___ (_) |
   / / | `_ \ / _` | `__/ _` \ \ / / |/ _ \ \ /\ / / | `_ \| | | |/ _` | `__/ _ \| |_ / _ \| | |
  / /  | |_) | (_| | | | (_| |\ V /| |  __/\ V  V /  | | | | |_| | (_| | | | (_) |  _| (_) | | |
 /_/   | .__/ \__,_|_|  \__,_| \_/ |_|\___| \_/\_/   |_| |_|\__, |\__,_|_|  \___/|_|  \___/|_|_|
       |_|                                                  |___/
*/


%utlfkil(\\wsl.localhost\Ubuntu\home\xlr82sas\su2hydro\hydrofoil.png);

%slc_lxpvbegin;
cards4;
#!/usr/bin/env pvbatch
from paraview.simple import *
import os

# Disable automatic camera reset on first render
paraview.simple._DisableFirstRenderCameraReset()

# Load data file
file_path = "/home/xlr82sas/su2hydro/volume_flow.vtu"
reader = XMLUnstructuredGridReader(FileName=[file_path])

# ============================================================
# NEGATE Y COORDINATES USING TRANSFORM FILTER
# ============================================================
# Apply Transform filter to flip Y coordinates
transform = Transform(Input=reader)
transform.Transform = 'Transform'
transform.Transform.Scale = [1.0, -1.0, 1.0]  # Negate Y only

# Create a single view
renderView1 = CreateView('RenderView')
renderView1.ViewSize = [1920, 1080]
renderView1.Background = [1.0, 1.0, 1.0]

# Show the flipped data
data2 = Show(transform, renderView1)
data2.Representation = 'Surface'
ColorBy(data2, ('POINTS', 'Pressure'))
data2.RescaleTransferFunctionToDataRange(True, False)

# Show scalar bar
data2.SetScalarBarVisibility(renderView1, True)

# Configure scalar bar
pressureLUT = GetColorTransferFunction('Pressure')
scalarBar = GetScalarBar(pressureLUT, renderView1)
scalarBar.Orientation = 'Horizontal'
scalarBar.WindowLocation = 'Lower Center'
scalarBar.Position = [0.25, 0.03]
scalarBar.ScalarBarLength = 0.25
scalarBar.Title = 'Pressure'
scalarBar.ComponentTitle = ''
scalarBar.LabelFormat = '%.3g'

# Get camera and set zoom
camera1 = renderView1.GetActiveCamera()
camera1.SetFocalPoint([0, 0, 0])
camera1.SetPosition([0, 0, 8.0])
camera1.SetViewAngle(20)

Render(view=renderView1)

# Save
output_dir = "/home/xlr82sas/su2hydro"
right_file = os.path.join(output_dir, "hydrofoil.png")
SaveScreenshot(right_file, renderView1, ImageResolution=[1920, 1080])
print(f"Flipped hydrofoil image saved to: {right_file}")

;;;;
%slc_lxpvend;

/**************************************************************************************************************************/
/*  Altair SLC                                                                                                            */
/* hydrofoil image saved to: /home/xlr82sas/su2hydro/hydrofoil.png                                                        */
/**************************************************************************************************************************/

/*
| | ___   __ _
| |/ _ \ / _` |
| | (_) | (_| |
|_|\___/ \__, |
         |___/
*/

1                                          Altair SLC        08:39 Wednesday, July  8, 2026

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas
NOTE: Library workx assigned as follows:
      Engine:        SAS7BDAT
      Physical Name: d:\wpswrkx

NOTE: Library wpdx assigned as follows:
      Engine:        WPD
      Physical Name: d:\wpswrkx

NOTE: Library slchelp assigned as follows:
      Engine:        WPD
      Physical Name: C:\Progra~1\Altair\SLC\2026\sashelp


LOG:  8:39:20
NOTE: 1 record was written to file PRINT

NOTE: The data step took :
      real time : 0.031
      cpu time  : 0.031


NOTE: Format num2mis output
NOTE: Format $chr2mis output
NOTE: Procedure format step took :
      real time : 0.000
      cpu time  : 0.000


NOTE: AUTOEXEC processing completed

1          %utlfkil(\\wsl.localhost\Ubuntu\home\xlr82sas\su2hydro\hydrofoil.png);
2         %utlfkil(\\wsl.localhost\Ubuntu\home\xlr82sas\su2hydro\hydrofoil.png);
The file \\wsl.localhost\Ubuntu\home\xlr82sas\su2hydro\hydrofoil.png does not exist
3
4         %slc_lxpvbegin;
The file c:/temp/lxpv_pgm.py does not exist
The file c:/temp/lxpv_pgm.log does not exist
5         cards4;

NOTE: The file '\\wsl$\Ubuntu\home\xlr82sas\temp\lxpv_pgm.py' is:
      Filename='\\wsl$\Ubuntu\home\xlr82sas\temp\lxpv_pgm.py',
      File size (bytes)=0,
      Create Time=08:36:34 Jul 08 2026,
      Last Accessed=08:36:34 Jul 08 2026,
      Last Modified=08:39:21 Jul 08 2026,
      Lrecl=32767, Recfm=V

NOTE: 58 records were written to file '\\wsl$\Ubuntu\home\xlr82sas\temp\lxpv_pgm.py'
      The minimum record length was 80
      The maximum record length was 80
NOTE: The data step took :
      real time : 0.015
      cpu time  : 0.000


6         #!/usr/bin/env pvbatch
7         from paraview.simple import *
8         import os
9
10        # Disable automatic camera reset on first render
11        paraview.simple._DisableFirstRenderCameraReset()
12
13        # Load data file
14        file_path = "/home/xlr82sas/su2hydro/volume_flow.vtu"
15        reader = XMLUnstructuredGridReader(FileName=[file_path])
16
17        # ============================================================
18        # NEGATE Y COORDINATES USING TRANSFORM FILTER
19        # ============================================================
20        # Apply Transform filter to flip Y coordinates
21        transform = Transform(Input=reader)
22        transform.Transform = 'Transform'
23        transform.Transform.Scale = [1.0, -1.0, 1.0]  # Negate Y only
24
25        # Create a single view
26        renderView1 = CreateView('RenderView')
27        renderView1.ViewSize = [1920, 1080]
28        renderView1.Background = [1.0, 1.0, 1.0]
29
30        # Show the flipped data
31        data2 = Show(transform, renderView1)
32        data2.Representation = 'Surface'
33        ColorBy(data2, ('POINTS', 'Pressure'))
34        data2.RescaleTransferFunctionToDataRange(True, False)
35
36        # Show scalar bar
37        data2.SetScalarBarVisibility(renderView1, True)
38
39        # Configure scalar bar
40        pressureLUT = GetColorTransferFunction('Pressure')
41        scalarBar = GetScalarBar(pressureLUT, renderView1)
42        scalarBar.Orientation = 'Horizontal'
43        scalarBar.WindowLocation = 'Lower Center'
44        scalarBar.Position = [0.25, 0.03]
45        scalarBar.ScalarBarLength = 0.25
46        scalarBar.Title = 'Pressure'
47        scalarBar.ComponentTitle = ''
48        scalarBar.LabelFormat = '%.3g'
49
50        # Get camera and set zoom
51        camera1 = renderView1.GetActiveCamera()
52        camera1.SetFocalPoint([0, 0, 0])
53        camera1.SetPosition([0, 0, 8.0])
54        camera1.SetViewAngle(20)
55
56        Render(view=renderView1)
57
58        # Save
59        output_dir = "/home/xlr82sas/su2hydro"
60        right_file = os.path.join(output_dir, "hydrofoil.png")
61        SaveScreenshot(right_file, renderView1, ImageResolution=[1920, 1080])
62        print(f"Flipped hydrofoil image saved to: {right_file}")
63
64        ;;;;
65        %slc_lxpvend;

NOTE: The infile rut is:
      Unnamed Pipe Access Device,
      Process=wsl bash -c 'pvbatch /home/xlr82sas/temp/lxpv_pgm.py',
      Lrecl=32756, Recfm=V

Flipped hydrofoil image saved to: /home/xlr82sas/su2hydro/hydrofoil.png
NOTE: 1 record was written to file PRINT

NOTE: 1 record was read from file rut
      The minimum record length was 71
      The maximum record length was 71
NOTE: The data step took :
      real time : 13.974
      cpu time  : 0.031



NOTE: The infile rut is:
      Unnamed Pipe Access Device,
      Process=wsl bash -c 'pvbatch /home/xlr82sas/temp/lxpv_pgm.py',
      Lrecl=32767, Recfm=V

NOTE: The file '\\wsl$\Ubuntu\home\xlr82sas\temp\lxpv_pgm.log' is:
      Filename='\\wsl$\Ubuntu\home\xlr82sas\temp\lxpv_pgm.log',
      File size (bytes)=0,
      Create Time=08:27:16 Jul 08 2026,
      Last Accessed=08:27:16 Jul 08 2026,
      Last Modified=08:39:35 Jul 08 2026,
      Lrecl=32767, Recfm=V

NOTE: 1 record was read from file rut
      The minimum record length was 71
      The maximum record length was 71
NOTE: 1 record was written to file '\\wsl$\Ubuntu\home\xlr82sas\temp\lxpv_pgm.log'
      The minimum record length was 71
      The maximum record length was 71
NOTE: The data step took :
      real time : 6.222
      cpu time  : 0.000



NOTE: Submitted statements took :
      real time : 21.124
      cpu time  : 0.140

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
