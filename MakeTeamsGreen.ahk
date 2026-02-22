While True{
    ; Implementation Logic:
    ; F1-F24 are all functional keys. On normal keyboards, F13-F24 no longer exist physically,
    ; but they still exist in the computer's API.
    ; Sending F24 simulates activity to keep status green without interfering with active windows.
    ;
    ; Side Effects:
    ; - Terminals: In some terminal emulators (e.g., Git Bash, WSL), F24 may print a '~' character or beep.
    Send("{F24}")
    Sleep(10000)  ; Wait for 10 seconds before sending the next command
}
    