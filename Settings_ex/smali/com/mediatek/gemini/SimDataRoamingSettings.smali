.class public Lcom/mediatek/gemini/SimDataRoamingSettings;
.super Lcom/mediatek/gemini/SimCheckboxEntrance;
.source "SimDataRoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DLG_ROAMING_WARNING:I = 0x1

.field private static final SIM_DATAROAMING_INFO_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_DATAROAMING_INFO_CHANGED"

.field private static final TAG:Ljava/lang/String; = "SimDataRoamingSettings"


# instance fields
.field private mCurrentSimID:J

.field private mCurrentSimSlot:I

.field private mExt:Lcom/android/settings_ex/ext/ISimRoamingExt;

.field private mSIMInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;-><init>()V

    .line 56
    new-instance v0, Lcom/mediatek/gemini/SimDataRoamingSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimDataRoamingSettings$1;-><init>(Lcom/mediatek/gemini/SimDataRoamingSettings;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSIMInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    return-void
.end method

.method private getDataRoamingState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setDataRoaming(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 143
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget v3, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mCurrentSimSlot:I

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabledGemini(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    if-eqz p1, :cond_1

    .line 152
    const/4 v1, 0x1

    .line 156
    .local v1, roamingState:I
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mCurrentSimID:J

    invoke-static {v2, v1, v3, v4}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    .line 160
    .end local v1           #roamingState:I
    :goto_1
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimDataRoamingSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 154
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #roamingState:I
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 165
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 166
    invoke-direct {p0, v1}, Lcom/mediatek/gemini/SimDataRoamingSettings;->setDataRoaming(Z)V

    .line 167
    iget-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/mediatek/gemini/SimCheckboxEntrance;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 50
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getSimRoamingExtPlugin(Landroid/content/Context;)Lcom/android/settings_ex/ext/ISimRoamingExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mExt:Lcom/android/settings_ex/ext/ISimRoamingExt;

    .line 52
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSIMInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_DATAROAMING_INFO_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "dialogId"

    .prologue
    .line 105
    const/4 v3, 0x1

    if-ne v3, p1, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 107
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mExt:Lcom/android/settings_ex/ext/ISimRoamingExt;

    const v4, 0x7f0b0359

    invoke-interface {v3, v1, v4}, Lcom/android/settings_ex/ext/ISimRoamingExt;->getRoamingWarningMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, msg:Ljava/lang/String;
    const-string v3, "SimDataRoamingSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 117
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #msg:Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v3

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->onDestroy()V

    .line 68
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSIMInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 69
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 75
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 76
    .local v1, simID:J
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 77
    .local v3, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v3, :cond_1

    .line 80
    iget v0, v3, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    .line 88
    .local v0, dataRoaming:I
    iget v6, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v6, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mCurrentSimSlot:I

    .line 89
    iget-wide v6, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iput-wide v6, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mCurrentSimID:J

    .line 90
    check-cast p2, Lcom/mediatek/gemini/SimInfoPreference;

    .end local p2
    iput-object p2, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

    .line 91
    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 99
    .end local v0           #dataRoaming:I
    :goto_0
    return v4

    .line 94
    .restart local v0       #dataRoaming:I
    :cond_0
    invoke-direct {p0, v5}, Lcom/mediatek/gemini/SimDataRoamingSettings;->setDataRoaming(Z)V

    .line 95
    iget-object v6, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

    invoke-virtual {v6, v5}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    goto :goto_0

    .end local v0           #dataRoaming:I
    .restart local p2
    :cond_1
    move v4, v5

    .line 99
    goto :goto_0
.end method

.method protected shouldDisableWhenRadioOff()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method protected updateCheckState(Lcom/mediatek/gemini/SimInfoPreference;Landroid/provider/Telephony$SIMInfo;)V
    .locals 2
    .parameter "pref"
    .parameter "siminfo"

    .prologue
    const/4 v0, 0x1

    .line 127
    iget v1, p2, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    .line 131
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
