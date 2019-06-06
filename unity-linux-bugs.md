#Ubuntu 19.04, Unity 2019.1.5f1

## Just annoyances

1. Adding existing project bug
  - First install of unity hub you cannot add a project, you have to create a new one, then after that you canm add an existing project.


2. Stuck in full screen
  - After installation, opening an existing project and the unity editor is full screen with no title bar, cannot move the window at all.
  - Fixed after logging out or rebooting


3. Scrolling inside editor bug
  - [Video of the problem](https://youtu.be/7wh_EIzj2vk)
  - Temporary Fix: Pulling window down and maximizing it again each time Unity is opened.




5. Package 'java6-runtime' has no installation candidate
-  `sudo apt install java6-runtime`

6. Unable to locate package java7-jdk
  - `sudo apt install java7-jdk`


## Fixed Bugs

### BUG 2019-06-05
*Unidentifiable errors in console (Ubuntu 19.04 libssl / .net issue)*
  Also posted this on the form: https://forum.unity.com/threads/unidentifiable-errors-in-unity-console-on-ubuntu-19-04-fixed.690757/

  Bug present in Unity 2019.1.5f1 and 2019.3.0a4
  5 Blank errors  in console, game will not run.
  We read through the Editor Log and found this:
  ```No usable version of the libssl was found
  /home/abezuska/Unity/Hub/Editor/2019.1.5f1/Editor/Data/Tools/RoslynScripts/unity_csc.sh: line 64: 28227 Aborted                 (core dumped) "/home/abezuska/Unity/Hub/Editor/2019.1.5f1/Editor/Data/Tools/RoslynScripts/../../Tools/Roslyn/csc" /shared /noconfig @Temp/UnityTempFile-c8355884da1220cdd9d43fb9e8e24eb0
  ```
  Apparently Ubuntu 19 uses libssl1.1 and .net requires libssl1.0
  installing libssl1.0 from this source fixed the issue for me:
  https://packages.ubuntu.com/xenial/amd64/libssl1.0.0/download

  ![](images/unitybug-errors.png)


### BUG 2019-06-05
 *Can't create Mac builds*
    - Mac module installed by does not show up in Build Settings > PC, Mac & Linux Standalone, Cannot create mac builds.

  ![](images/unity-2019-mac.png)

  *The Fix*
  (be sure to change `2019.1.5f1` to your version of Unity)
  Turns out that`PATH/TO/Unity/Hub/Editor/2019.1.5f1/modules.json` has an error, the mac-mono destination should be:
  ```
  "destination": "{UNITY_PATH}/Editor/Data/PlaybackEngines/MacStandaloneSupport",
  ```
  also change selected to false to retrigger the need to download the build support module to the right destination:
  ```
  "selected: false
  ```
  - Log out/in Linux for changes to take effect in Unity Hub
  - Open Unity hub and go to Installs, the apple icon for the version of Unity you want should be gone
  - Click the menu on that version of unity > Add Modules, check Mac Build Support(Mono) and click done
