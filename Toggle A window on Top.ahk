^t:: {
    hwnd := WinExist("A")                         ; get active window handle
    exStyle := WinGetExStyle(hwnd)                ; get extended window styles

    if (exStyle & 0x8) {                          ; 0x8 = WS_EX_TOPMOST
        WinSetAlwaysOnTop 0, hwnd                 ; disable always on top
    } else {
        WinSetAlwaysOnTop 1, hwnd                 ; enable always on top
    }
}
