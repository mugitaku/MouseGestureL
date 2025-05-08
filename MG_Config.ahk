MG_IniFileVersion=1.41
MG_8Dir=0
MG_ActiveAsTarget=0
MG_Interval=20
MG_AlwaysHook=0
MG_PrvntCtxtMenu=1
MG_Threshold=15
MG_LongThresholdX=800
MG_LongThresholdY=600
MG_LongThreshold=700
MG_FirstLongOnly=0
MG_TimeoutThreshold=0
MG_Timeout=400
MG_DGInterval=0
MG_TmReleaseTrigger=3
MG_ORangeDefault=3
MG_ORangeA=3
MG_ORangeB=3
MG_EdgeInterval=20
MG_EdgeIndiv=0
MG_CornerX=1
MG_CornerY=1
MG_DisableDefMB=0
MG_DisableDefX1B=0
MG_DisableDefX2B=0
MG_UseNavi=1
MG_UseExNavi=3
MG_NaviInterval=20
MG_NaviPersist=0
MG_ExNaviTransBG=1
MG_ExNaviFG=000000
MG_ExNaviBG=FFFFFF
MG_ExNaviTranspcy=255
MG_ExNaviSize=24
MG_ExNaviSpacing=2
MG_ExNaviPadding=4
MG_ExNaviMargin=8
MG_AdNaviFG=FFFFFF
MG_AdNaviNI=7F7F7F
MG_AdNaviBG=000000
MG_AdNaviTranspcy=255
MG_AdNaviSize=10
MG_AdNaviFont=メイリオ
MG_AdNaviPosition=0
MG_AdNaviPaddingL=6
MG_AdNaviPaddingR=6
MG_AdNaviPaddingT=3
MG_AdNaviPaddingB=3
MG_AdNaviRound=2
MG_AdNaviMargin=-1
MG_AdNaviSpaceX=2
MG_AdNaviSpaceY=2
MG_AdNaviOnClick=0
MG_ShowTrail=0
MG_DrawTrailWnd=1
MG_TrailColor=0000FF
MG_TrailTranspcy=255
MG_TrailWidth=3
MG_TrailStartMove=3
MG_TrailInterval=10
MG_ShowLogs=0
MG_LogPosition=4
MG_LogPosX=0
MG_LogPosY=0
MG_LogMax=20
MG_LogSizeW=400
MG_LogInterval=500
MG_LogFG=FFFFFF
MG_LogBG=000000
MG_LogTranspcy=100
MG_LogFontSize=10
MG_LogFont=MS UI Gothic
MG_EditCommand=
MG_HotkeyReload=
MG_HotkeyEnable=
MG_HotkeyAbort=Escape
MG_HotkeyNavi=
MG_HotkeyShowList=F1
MG_ScriptEditor=
MG_TraySubmenu=0
MG_AdjustDlg=0
MG_DlgHeightLimit=800
MG_FoldTarget=0
MG_DisableWarning=0
MG_ActvtExclud := []
MG_MaxLength=6
MG_Triggers=RB
MG_SubTriggers=MB_WU_WD


Goto, MG_RB_End

MG_RB_Enable:
	if (!MG_AlwaysHook) {
		MG_RB_HookEnabled := Func("MG_IsHookEnabled_RB")
		Hotkey, If, % MG_RB_HookEnabled
	}
	Hotkey, *RButton, MG_RB_DownHotkey, On
	Hotkey, *RButton up, MG_RB_UpHotkey, On
	Hotkey, If
	MG_RB_Enabled := 1
return

MG_RB_Disable:
	Hotkey, *RButton, MG_RB_DownHotkey, Off
	Hotkey, *RButton up, MG_RB_UpHotkey, Off
	MG_RB_Enabled := 0
return

MG_RB_DownHotkey:
	MG_TriggerDown("RB")
return

MG_RB_UpHotkey:
	MG_TriggerUp("RB")
return

MG_RB_Down:
	MG_SendButton("RB", "RButton", "Down")
return

MG_RB_Up:
	MG_SendButton("RB", "RButton", "Up")
return

MG_RB_Check:
	MG_CheckButton("RB", "RButton")
return

MG_RB_End:


Goto, MG_MB_End

MG_MB_Enable:
	if (!MG_AlwaysHook) {
		MG_MB_HookEnabled := Func("MG_IsHookEnabled_MB")
		Hotkey, If, % MG_MB_HookEnabled
	}
	Hotkey, *MButton, MG_MB_DownHotkey, On
	Hotkey, *MButton up, MG_MB_UpHotkey, On
	Hotkey, If
	MG_MB_Enabled := 1
return

MG_MB_Disable:
	Hotkey, *MButton, MG_MB_DownHotkey, Off
	Hotkey, *MButton up, MG_MB_UpHotkey, Off
	MG_MB_Enabled := 0
return

MG_MB_DownHotkey:
	MG_TriggerDown("MB")
return

MG_MB_UpHotkey:
	MG_TriggerUp("MB")
return

MG_MB_Down:
	if (!MG_DisableDefMB) {
		MG_SendButton("MB", "MButton", "Down")
	}
return

MG_MB_Up:
	if (!MG_DisableDefMB) {
		MG_SendButton("MB", "MButton", "Up")
	}
return

MG_MB_Check:
	MG_CheckButton("MB", "MButton")
return

MG_MB_End:


Goto, MG_WU_End

MG_WU_Enable:
	if (!MG_AlwaysHook) {
		MG_WU_HookEnabled := Func("MG_IsHookEnabled_WU")
		Hotkey, If, % MG_WU_HookEnabled
	}
	Hotkey, *WheelUp, MG_WU_Hotkey, On
	Hotkey, If
	MG_WU_Enabled := 1
return

MG_WU_Disable:
	Hotkey, *WheelUp, MG_WU_Hotkey, Off
	MG_WU_Enabled := 0
return

MG_WU_Hotkey:
	MG_ButtonPress("WU")
return

MG_WU_Press:
	MG_SendButton("WU", "WheelUp")
return

MG_WU_End:


Goto, MG_WD_End

MG_WD_Enable:
	if (!MG_AlwaysHook) {
		MG_WD_HookEnabled := Func("MG_IsHookEnabled_WD")
		Hotkey, If, % MG_WD_HookEnabled
	}
	Hotkey, *WheelDown, MG_WD_Hotkey, On
	Hotkey, If
	MG_WD_Enabled := 1
return

MG_WD_Disable:
	Hotkey, *WheelDown, MG_WD_Hotkey, Off
	MG_WD_Enabled := 0
return

MG_WD_Hotkey:
	MG_ButtonPress("WD")
return

MG_WD_Press:
	MG_SendButton("WD", "WheelDown")
return

MG_WD_End:


Goto, MG_Config_End


MG_IsDisable() {
	global
	return (0)
}

MG_IsTarget1() {
	global
	return ((MG_Exe="iexplore.exe") || (MG_Exe="msedge.exe") || (MG_Exe="chrome.exe") || (MG_Exe="firefox.exe"))
}

MG_IsTarget2() {
	global
	return ((MG_WClass="CabinetWClass") || (MG_WClass="ExploreWClass") || (MG_WClass="Progman") || (MG_WClass="WorkerW"))
}

MG_IsTarget3() {
	global
	return (MG_IsTarget2() && ((MG_TreeListHitTest())))
}

MG_IsExDefault() {
	return (0)
}

MG_Gesture_RB_:
	if (MG_IsTarget3()) {
		;ジェスチャーキャンセル
		MG_Abort()
	} else if (!MG_IsExDefault()){
		;アクティブ化
		if (InStr(MG_WClass, "Chrome_WidgetWin")!=1 || (MG_WStyle & 0x000B0000)) {
			MG_WinActivate()
		}
	}
return

MG_GetAction_RB_:
	if (MG_IsTarget3()) {
		MG_ActionStr := "ジェスチャーキャンセル"
	} else if (!MG_IsExDefault()){
		MG_ActionStr := "アクティブ化"
	}
return

MG_Gesture_RB_L_:
	if (!MG_IsExDefault()) {
		;previous tab
		Send, +^{Tab}
		
	}
return

MG_GetAction_RB_L_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "previous tab"
	}
return

MG_Gesture_RB_R_:
	if (!MG_IsExDefault()) {
		;next tab
		Send, ^{Tab}
		
	}
return

MG_GetAction_RB_R_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "next tab"
	}
return

MG_Gesture_RB_U_:
	if (!MG_IsExDefault()) {
		;Top
		Send, ^{Home}
		
		
	}
return

MG_GetAction_RB_U_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Top"
	}
return

MG_Gesture_RB_D_:
	if (!MG_IsExDefault()) {
		;Bottom
		Send, ^{End}
		
	}
return

MG_GetAction_RB_D_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Bottom"
	}
return

MG_Gesture_RB_LU_:
	if (!MG_IsExDefault()) {
		;Zoom in
		Send, +^{+}
		
	}
return

MG_GetAction_RB_LU_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Zoom in"
	}
return

MG_Gesture_RB_LD_:
	if (!MG_IsExDefault()) {
		;Zoom out
		Send, ^{-}
		
	}
return

MG_GetAction_RB_LD_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Zoom out"
	}
return

MG_Gesture_RB_RU_:
	if (!MG_IsExDefault()) {
		;Task View
		Send, #{Tab}
		
	}
return

MG_GetAction_RB_RU_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Task View"
	}
return

MG_Gesture_RB_RD_:
	if (!MG_IsExDefault()) {
		;Reload
		Send, ^r
		
	}
return

MG_GetAction_RB_RD_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Reload"
	}
return

MG_Gesture_RB_UL_:
	if (!MG_IsExDefault()) {
		;Close
		Send, ^w
		
		
	}
return

MG_GetAction_RB_UL_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Close"
	}
return

MG_Gesture_RB_UR_:
	if (!MG_IsExDefault()) {
		;Restore tab
		Send, +^t
		
	}
return

MG_GetAction_RB_UR_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Restore tab"
	}
return

MG_Gesture_RB_DL_:
	if (!MG_IsExDefault()) {
		;Copy
		Send, ^c
		
	}
return

MG_GetAction_RB_DL_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Copy"
	}
return

MG_Gesture_RB_DR_:
	if (!MG_IsExDefault()) {
		;Paste
		Send, ^v
		
	}
return

MG_GetAction_RB_DR_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Paste"
	}
return

MG_Gesture_RB_RL_:
	if (!MG_IsExDefault()) {
		;Back
		Send, !{Left}
		
	}
return

MG_GetAction_RB_RL_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Back"
	}
return

MG_Gesture_RB_DU_:
	if (!MG_IsExDefault()) {
		;Search
		Send, ^f
		
		
	}
return

MG_GetAction_RB_DU_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Search"
	}
return

MG_Gesture_RB_UD_:
	if (!MG_IsExDefault()) {
		;New tab
		Send, ^t
		
	}
return

MG_GetAction_RB_UD_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "New tab"
	}
return

MG_Gesture_RB_LR_:
	if (!MG_IsExDefault()) {
		;Forward
		Send, !{Right}
		
		
	}
return

MG_GetAction_RB_LR_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Forward"
	}
return

MG_Gesture_RB_WU_:
	if (!MG_IsExDefault()) {
		;previous tab
		Send, +^g
		
	}
return

MG_GetAction_RB_WU_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "previous tab"
	}
return

MG_Gesture_RB_WD_:
	if (!MG_IsExDefault()) {
		;next tab
		Send, ^g
		
	}
return

MG_GetAction_RB_WD_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "next tab"
	}
return

MG_Gesture_RB_MB_:
	if (!MG_IsExDefault()) {
		;Enter
		Send, {Enter}
		
	}
return

MG_GetAction_RB_MB_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Enter"
	}
return


MG_IsHookEnabled_RB() {
	global
	MG_TriggerCount ? : MG_GetMousePosInfo()
	return (MG_RB_Enabled && (MG_TriggerCount || (!MG_IsDisable())))
}

MG_IsHookEnabled_MB() {
	global
	return (MG_MB_Enabled && MG_TriggerCount)
}

MG_IsHookEnabled_WU() {
	global
	return (MG_WU_Enabled && MG_TriggerCount)
}

MG_IsHookEnabled_WD() {
	global
	return (MG_WD_Enabled && MG_TriggerCount)
}


#if MG_Active
Escape::MG_Abort()
F1::MG_ShowGestureList()
#if


MG_Config_end: