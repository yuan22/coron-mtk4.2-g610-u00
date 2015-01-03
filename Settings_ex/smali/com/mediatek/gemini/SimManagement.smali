.class public Lcom/mediatek/gemini/SimManagement;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SimManagement.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/mediatek/gemini/SimInfoEnablePreference$OnPreferenceClickCallback;


# static fields
.field private static final ALL_RADIO_OFF:I = 0x0

.field private static final ALL_RADIO_ON:I = 0x3

.field private static final ATTACH_DATA_CONN_TIME_OUT:I = 0x7530

.field private static final DATA_3G_SWITCH_TIME_OUT_MSG:I = 0x7d2

.field private static final DATA_SWITCH_TIME_OUT_MSG:I = 0x7d0

.field private static final DETACH_DATA_CONN_TIME_OUT:I = 0x2710

.field private static final DIALOG_3G_MODEM_SWITCH_CONFIRM:I = 0x3e9

.field private static final DIALOG_GPRS_SWITCH_CONFIRM:I = 0x3ea

.field private static final DIALOG_NOT_REMOVE_TIME_OUT:I = 0x3e8

.field private static final DIALOG_NOT_SHOW_SUCCESS_MSG:I = 0x7d1

.field private static final EVENT_DUAL_SIM_MODE_CHANGED_COMPLETE:I = 0x1

.field private static final KEY_3G_SERVICE_SETTING:Ljava/lang/String; = "3g_service_settings"

.field private static final KEY_DEFAULT_SIM_SETTINGS_CATEGORY:Ljava/lang/String; = "default_sim"

.field private static final KEY_GENERAL_SETTINGS_CATEGORY:Ljava/lang/String; = "general_settings"

.field private static final KEY_GPRS_SIM_SETTING:Ljava/lang/String; = "gprs_sim_setting"

.field private static final KEY_SIM_CONTACTS_SETTINGS:Ljava/lang/String; = "contacts_sim"

.field private static final KEY_SIM_INFO_CATEGORY:Ljava/lang/String; = "sim_info"

.field private static final KEY_SMS_SIM_SETTING:Ljava/lang/String; = "sms_sim_setting"

.field private static final KEY_VIDEO_CALL_SIM_SETTING:Ljava/lang/String; = "video_call_sim_setting"

.field private static final KEY_VOICE_CALL_SIM_SETTING:Ljava/lang/String; = "voice_call_sim_setting"

.field private static final PROGRESS_DIALOG:I = 0x3e8

.field private static final SIM_SLOT_1_RADIO_ON:I = 0x1

.field private static final SIM_SLOT_2_RADIO_ON:I = 0x2

.field private static final SWITCH_3G_TIME_OUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "SimManagementSettings"

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final VIDEO_CALL_OFF:I = -0x1

.field private static sIsVoipAvailable:Z

.field private static sVTCallSupport:Z


# instance fields
.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mDataSwitchMsgIndex:I

.field private mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

.field private mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

.field private mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIs3gOff:Z

.field private mIsDataConnectActing:Z

.field private mIsSIMRadioSwitching:Z

.field private mIsSlot1Insert:Z

.field private mIsSlot2Insert:Z

.field private mIsSmsCapable:Z

.field private mIsVoiceCapable:Z

.field private mProDlgMsgId:I

.field private mRemoveProgDlg:Z

.field private mSelectedGprsSimId:J

.field private mSelectedVideoSimId:J

.field private mSimAndContacts:Landroid/preference/PreferenceScreen;

.field private mSimItemListGprs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimItemListSms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimItemListVideo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimItemListVoice:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimNum:I

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSiminfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

.field private mSwitchRadioStateMsg:Landroid/os/Messenger;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimerHandler:Landroid/os/Handler;

.field private mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

.field private mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 114
    sput-boolean v0, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    .line 115
    sput-boolean v0, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 116
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    .line 122
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot1Insert:Z

    .line 123
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot2Insert:Z

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    .line 163
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    .line 166
    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    .line 168
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    .line 169
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    .line 170
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    .line 174
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    .line 175
    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    .line 180
    new-instance v0, Lcom/mediatek/gemini/SimManagement$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/SimManagement$1;-><init>(Lcom/mediatek/gemini/SimManagement;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    .line 190
    new-instance v0, Lcom/mediatek/gemini/SimManagement$2;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimManagement$2;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    .line 211
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/mediatek/gemini/SimManagement$3;

    invoke-direct {v1, p0}, Lcom/mediatek/gemini/SimManagement$3;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    .line 222
    new-instance v0, Lcom/mediatek/gemini/SimManagement$4;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimManagement$4;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateDataConnPrefe()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/gemini/SimManagement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/DefaultSimPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/gemini/SimManagement;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-static {p0}, Lcom/mediatek/gemini/SimManagement;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/gemini/SimManagement;)Lcom/android/settings_ex/ext/ISimManagementExt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/gemini/SimManagement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/gemini/SimManagement;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchSimRadioState(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/gemini/SimManagement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/gemini/SimManagement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/gemini/SimManagement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/mediatek/gemini/SimManagement;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->enableDataRoaming(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/gemini/SimManagement;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchGprsDefautlSIM(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/gemini/SimManagement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedVideoSimId:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/mediatek/gemini/SimManagement;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchVideoCallDefaultSIM(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->dealWithSwtichComplete()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/gemini/SimManagement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->setStatusBarEnableStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->getSimInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updatePreferenceUI()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/gemini/SimManagement;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->dealDlgOnAirplaneMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/DefaultSimPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    return-object v0
.end method

.method private addSimInfoPreference()V
    .locals 18

    .prologue
    .line 555
    const-string v3, "SimManagementSettings"

    const-string v4, "addSimInfoPreference()"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v3, "sim_info"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceGroup;

    .line 558
    .local v16, simInfoListCategory:Landroid/preference/PreferenceGroup;
    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/provider/Telephony$SIMInfo;

    .line 560
    .local v17, siminfo:Landroid/provider/Telephony$SIMInfo;
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mDisplayName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mDispalyNumberFormat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mSimId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-wide v5, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    move-object/from16 v0, v17

    iget v3, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/gemini/SimManagement;->getSimIndicator(I)I

    move-result v7

    .line 569
    .local v7, status:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v12, 0x1

    .line 571
    .local v12, isAirplaneModeOn:Z
    :goto_1
    new-instance v2, Lcom/mediatek/gemini/SimInfoEnablePreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v17

    iget v8, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    move-object/from16 v0, v17

    iget v9, v0, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    move-object/from16 v0, v17

    iget-wide v10, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-direct/range {v2 .. v12}, Lcom/mediatek/gemini/SimInfoEnablePreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZ)V

    .line 576
    .local v2, simInfoPref:Lcom/mediatek/gemini/SimInfoEnablePreference;
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simid status is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    if-eqz v2, :cond_0

    .line 578
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/mediatek/gemini/SimInfoEnablePreference;->setClickCallback(Lcom/mediatek/gemini/SimInfoEnablePreference$OnPreferenceClickCallback;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_1

    .line 584
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    move-object/from16 v0, v17

    iget v4, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z

    move-result v15

    .line 604
    .local v15, isRadioOn:Z
    invoke-virtual {v2, v15}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    .line 605
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim card "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " radio state is isRadioOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    .end local v15           #isRadioOn:Z
    :cond_1
    :goto_2
    new-instance v3, Lcom/mediatek/gemini/SimManagement$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v2}, Lcom/mediatek/gemini/SimManagement$5;-><init>(Lcom/mediatek/gemini/SimManagement;Landroid/provider/Telephony$SIMInfo;Lcom/mediatek/gemini/SimInfoEnablePreference;)V

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/SimInfoEnablePreference;->setCheckBoxClickListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 638
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 569
    .end local v2           #simInfoPref:Lcom/mediatek/gemini/SimInfoEnablePreference;
    .end local v12           #isAirplaneModeOn:Z
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 607
    .restart local v2       #simInfoPref:Lcom/mediatek/gemini/SimInfoEnablePreference;
    .restart local v12       #isAirplaneModeOn:Z
    :catch_0
    move-exception v13

    .line 608
    .local v13, e:Landroid/os/RemoteException;
    const-string v3, "SimManagementSettings"

    const-string v4, "mTelephony exception"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 641
    .end local v2           #simInfoPref:Lcom/mediatek/gemini/SimInfoEnablePreference;
    .end local v7           #status:I
    .end local v12           #isAirplaneModeOn:Z
    .end local v13           #e:Landroid/os/RemoteException;
    .end local v17           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    return-void
.end method

.method private current3GSlotId()I
    .locals 4

    .prologue
    .line 755
    const/4 v1, -0x1

    .line 757
    .local v1, slot3G:I
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 758
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 763
    :cond_0
    :goto_0
    return v1

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimManagementSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dataSwitchConfirmDlgMsg(J)I
    .locals 7
    .parameter "simid"

    .prologue
    const/4 v1, 0x1

    .line 1038
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->findSIMInfoBySimId(J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 1039
    .local v2, siminfo:Landroid/provider/Telephony$SIMInfo;
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    .line 1040
    .local v3, telephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    iget v4, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v0

    .line 1041
    .local v0, isInRoaming:Z
    iget v4, v2, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    if-ne v4, v1, :cond_0

    .line 1042
    .local v1, isRoamingDataAllowed:Z
    :goto_0
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInRoaming="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isRoamingDataAllowed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    if-eqz v0, :cond_1

    .line 1047
    if-nez v1, :cond_1

    .line 1063
    const v4, 0x7f0b00fc

    .line 1083
    :goto_1
    return v4

    .line 1041
    .end local v1           #isRoamingDataAllowed:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1083
    .restart local v1       #isRoamingDataAllowed:Z
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private dealDialogOnResume()V
    .locals 5

    .prologue
    const/16 v4, 0x3ea

    const/16 v3, 0x3e9

    .line 431
    const-string v0, "SimManagementSettings"

    const-string v1, "dealDialogOnResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    if-eqz v0, :cond_0

    .line 434
    const-string v0, "SimManagementSettings"

    const-string v1, "on resume to remove dialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    .line 438
    :cond_0
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRemoveProgDlg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 444
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 447
    :cond_2
    return-void
.end method

.method private dealDlgOnAirplaneMode(Ljava/lang/String;)V
    .locals 4
    .parameter "action"

    .prologue
    const/16 v3, 0x3ea

    const/16 v2, 0x3e9

    .line 449
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const-string v0, "SimManagementSettings"

    const-string v1, "dealDlgOnAirplaneMode"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    goto :goto_0
.end method

.method private dealWithSwtichComplete()V
    .locals 4

    .prologue
    .line 1326
    const-string v0, "SimManagementSettings"

    const-string v1, "dealWithSwtichComplete()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSIMModeSwitching is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    if-nez v0, :cond_1

    .line 1329
    const-string v0, "SimManagementSettings"

    const-string v1, "dual mode change by other not sim management"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/ext/ISimManagementExt;->showChangeDataConnDialog(Landroid/preference/PreferenceFragment;)V

    .line 1344
    :cond_0
    return-void

    .line 1331
    :cond_1
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->isDialogShowing(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1332
    const-string v0, "SimManagementSettings"

    const-string v1, "Dialog is not show yet but dual sim modechange has sent msg"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1335
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V

    .line 1336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    goto :goto_0
.end method

.method private enableDataRoaming(J)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    .line 1502
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDataRoaming with SimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    .line 1505
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabledGemini(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1512
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4, p1, p2}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    .line 1514
    :goto_0
    return-void

    .line 1508
    :catch_0
    move-exception v0

    .line 1509
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SimManagementSettings"

    const-string v2, "mTelephony exception"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findListPosBySimId(J)I
    .locals 6
    .parameter "simid"

    .prologue
    const/4 v4, 0x1

    .line 1087
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1088
    .local v1, size:I
    const/4 v0, -0x1

    .line 1090
    .local v0, pos:I
    if-ne v1, v4, :cond_0

    .line 1091
    const/4 v0, 0x0

    .line 1094
    :cond_0
    if-le v1, v4, :cond_1

    .line 1095
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->findSIMInfoBySimId(J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 1096
    .local v2, tempSIMInfo:Landroid/provider/Telephony$SIMInfo;
    if-nez v2, :cond_2

    .line 1097
    const-string v3, "SimManagementSettings"

    const-string v4, "Error can not find the sim id with related siminfo"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    .end local v2           #tempSIMInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    :goto_0
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sim card inserted and the sim is in pos with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return v0

    .line 1100
    .restart local v2       #tempSIMInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    iget v0, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_0
.end method

.method private findSIMInfoBySimId(J)Landroid/provider/Telephony$SIMInfo;
    .locals 4
    .parameter "simid"

    .prologue
    .line 1108
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 1109
    .local v1, siminfo:Landroid/provider/Telephony$SIMInfo;
    iget-wide v2, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1114
    .end local v1           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 1113
    :cond_1
    const-string v2, "SimManagementSettings"

    const-string v3, "Error happend on findSIMInfoBySimId no siminfo find"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findSIMInofBySlotId(I)Landroid/provider/Telephony$SIMInfo;
    .locals 4
    .parameter "mslot"

    .prologue
    .line 1118
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 1119
    .local v1, siminfo:Landroid/provider/Telephony$SIMInfo;
    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v2, p1, :cond_0

    .line 1124
    .end local v1           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 1123
    :cond_1
    const-string v2, "SimManagementSettings"

    const-string v3, "Error happend on findSIMInofBySlotId no siminfo find"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDataValue(Ljava/lang/String;)J
    .locals 3
    .parameter "dataString"

    .prologue
    .line 1569
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, -0x5

    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1379
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1380
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1381
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 1383
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSIMInfoById(Ljava/lang/Long;)Landroid/provider/Telephony$SIMInfo;
    .locals 6
    .parameter "simid"

    .prologue
    .line 1028
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 1029
    .local v1, siminfo:Landroid/provider/Telephony$SIMInfo;
    iget-wide v2, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1034
    .end local v1           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 1033
    :cond_1
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error there is no correct siminfo found by simid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSimIndicator(I)I
    .locals 6
    .parameter "slotId"

    .prologue
    const/4 v2, -0x1

    .line 1198
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimIndicator---slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_0

    .line 1201
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1212
    :cond_0
    :goto_0
    return v2

    .line 1207
    :catch_0
    move-exception v0

    .line 1208
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SimManagementSettings"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1210
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1211
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "SimManagementSettings"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSimInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 483
    const-string v2, "SimManagementSettings"

    const-string v3, "getSimInfo()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    .line 485
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    .line 486
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total inserted sim card ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    new-instance v3, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;

    invoke-direct {v3}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 490
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 491
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mDisplayName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mNumber = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v1, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 494
    .local v1, slot:I
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    if-nez v1, :cond_1

    .line 496
    iput-boolean v7, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot1Insert:Z

    .line 500
    :cond_0
    :goto_1
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mColor = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mDispalyNumberFormat = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mSimId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget-wide v5, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 497
    :cond_1
    if-ne v1, v7, :cond_0

    .line 498
    iput-boolean v7, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot2Insert:Z

    goto :goto_1

    .line 505
    .end local v1           #slot:I
    :cond_2
    return-void
.end method

.method private initIntentFilter()V
    .locals 2

    .prologue
    .line 383
    const-string v0, "SimManagementSettings"

    const-string v1, "initIntentFilter"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    .line 386
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.transaction.START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method private isGPRSEnable()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1580
    const/4 v1, 0x0

    .line 1582
    .local v1, isMMSProcess:Z
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1583
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 1584
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1585
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    .line 1586
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 1587
    .local v4, state:Landroid/net/NetworkInfo$State;
    const-string v7, "SimManagementSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mms state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v4, v7, :cond_0

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_2

    :cond_0
    move v1, v6

    .line 1592
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #state:Landroid/net/NetworkInfo$State;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v2

    .line 1593
    .local v2, isRadioOff:Z
    const-string v7, "SimManagementSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMMSProcess="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isRadioOff="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    :goto_1
    return v6

    .end local v2           #isRadioOff:Z
    .restart local v3       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v4       #state:Landroid/net/NetworkInfo$State;
    :cond_2
    move v1, v5

    .line 1588
    goto :goto_0

    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #state:Landroid/net/NetworkInfo$State;
    .restart local v2       #isRadioOff:Z
    :cond_3
    move v6, v5

    .line 1595
    goto :goto_1
.end method

.method private isRadioOff()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 1602
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-nez v1, :cond_1

    .line 1607
    .local v0, isAllRadioOff:Z
    :cond_0
    :goto_0
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllRadioOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    return v0

    .line 1602
    .end local v0           #isAllRadioOff:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoipAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1462
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_internet_call_value"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1465
    .local v0, isInternetCallEnabled:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private removeDefaultSimPref()V
    .locals 4

    .prologue
    .line 370
    const-string v2, "default_sim"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 372
    .local v0, defaultSettings:Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_0

    .line 373
    const-string v2, "SimManagementSettings"

    const-string v3, "group != null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 377
    :cond_0
    const-string v2, "general_settings"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 378
    .local v1, generalSettings:Landroid/preference/PreferenceGroup;
    if-eqz v1, :cond_1

    .line 379
    const-string v2, "contacts_sim"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 381
    :cond_1
    return-void
.end method

.method private removeProgDlg()V
    .locals 2

    .prologue
    .line 1347
    const-string v0, "SimManagementSettings"

    const-string v1, "removeProgDlg()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    const-string v0, "SimManagementSettings"

    const-string v1, "Progress Dialog removed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 1355
    :goto_0
    return-void

    .line 1352
    :cond_0
    const-string v0, "SimManagementSettings"

    const-string v1, "under onpause not enable to remove set flag as true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    goto :goto_0
.end method

.method private removeUnusedPref()V
    .locals 4

    .prologue
    .line 459
    const-string v1, "SimManagementSettings"

    const-string v2, "removeUnusedPref()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-nez v1, :cond_0

    .line 461
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    .line 463
    :cond_0
    const-string v1, "default_sim"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 464
    .local v0, pref:Landroid/preference/PreferenceGroup;
    iget-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-nez v1, :cond_1

    .line 465
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 466
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 467
    iget-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    if-nez v1, :cond_1

    .line 468
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 476
    :cond_1
    sget-boolean v1, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    if-nez v1, :cond_2

    .line 477
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video call is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " remove the pref"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 480
    :cond_2
    return-void
.end method

.method private setIconForDefaultSimPref()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 365
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 366
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 367
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 368
    return-void
.end method

.method private setNoSimInfoUi()V
    .locals 5

    .prologue
    .line 527
    const-string v2, "sim_info"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 528
    .local v1, simInfoListCategory:Landroid/preference/PreferenceGroup;
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 529
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 530
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 531
    const v2, 0x7f0b00f0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 532
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 534
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 536
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isVoipAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 537
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    .line 552
    :goto_0
    return-void

    .line 539
    :cond_1
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish() sim management for sim hot swap as mSimNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v2, "tablet"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 541
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 543
    const-string v2, "SimManagementSettings"

    const-string v3, "[Tablet] It is single pane, so finish it!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 546
    :cond_2
    const-string v2, "SimManagementSettings"

    const-string v3, "[Tablet] It is multi pane, so do not finish it!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto :goto_0
.end method

.method private setPreferenceProperty()V
    .locals 15

    .prologue
    .line 767
    const-string v12, "voice_call_sim_setting"

    invoke-direct {p0, v12}, Lcom/mediatek/gemini/SimManagement;->getDataValue(Ljava/lang/String;)J

    move-result-wide v10

    .line 768
    .local v10, voicecallID:J
    const-string v12, "sms_sim_setting"

    invoke-direct {p0, v12}, Lcom/mediatek/gemini/SimManagement;->getDataValue(Ljava/lang/String;)J

    move-result-wide v7

    .line 769
    .local v7, smsID:J
    const-string v12, "gprs_connection_sim_setting"

    invoke-direct {p0, v12}, Lcom/mediatek/gemini/SimManagement;->getDataValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 770
    .local v0, dataconnectionID:J
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->current3GSlotId()I

    move-result v9

    .line 771
    .local v9, videocallSlotID:I
    const-string v12, "SimManagementSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "voicecallID ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " smsID ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " dataconnectionID ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " videocallSlotID ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v5, 0x0

    .line 775
    .local v5, pos:I
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/Telephony$SIMInfo;

    .line 776
    .local v6, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v6, :cond_3

    .line 777
    iget-wide v12, v6, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v12, v12, v10

    if-nez v12, :cond_0

    .line 778
    iget-boolean v12, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-eqz v12, :cond_0

    .line 779
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v12, v5}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 780
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v13, v6, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 783
    :cond_0
    iget-wide v12, v6, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v12, v12, v7

    if-nez v12, :cond_1

    .line 784
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v12, v5}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 785
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v13, v6, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 790
    :cond_1
    iget-wide v12, v6, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v12, v12, v0

    if-nez v12, :cond_2

    .line 791
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v12, v5}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 792
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v13, v6, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 801
    :cond_2
    sget-boolean v12, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    if-eqz v12, :cond_3

    .line 802
    iget v12, v6, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v12, v9, :cond_3

    .line 803
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v12, v5}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 804
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v13, v6, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 808
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 811
    .end local v6           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_4
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 812
    .local v4, nSim:I
    iget-boolean v12, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-eqz v12, :cond_5

    .line 813
    const-wide/16 v12, -0x2

    cmp-long v12, v10, v12

    if-nez v12, :cond_9

    .line 814
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v12, v4}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 815
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v13, 0x7f0b00dd

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    .line 827
    :cond_5
    :goto_1
    const-wide/16 v12, -0x1

    cmp-long v12, v7, v12

    if-nez v12, :cond_c

    .line 828
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v12, v4}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 829
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v13, 0x7f0b00dc

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    .line 843
    :cond_6
    :goto_2
    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-nez v12, :cond_e

    .line 844
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v12, v4}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 845
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v13, 0x7f0b00de

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    .line 857
    :cond_7
    :goto_3
    sget-boolean v12, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    if-eqz v12, :cond_8

    .line 858
    const/4 v12, -0x1

    if-ne v9, v12, :cond_f

    .line 859
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    .line 860
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v13, 0x7f0b00df

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    .line 865
    :goto_4
    :try_start_0
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v12, :cond_8

    .line 867
    iget-object v13, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-boolean v12, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    if-nez v12, :cond_10

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v12}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchLocked()Z

    move-result v12

    if-nez v12, :cond_10

    iget v12, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    const/4 v14, 0x1

    if-eq v12, v14, :cond_10

    const/4 v12, 0x1

    :goto_5
    invoke-virtual {v13, v12}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    .line 869
    const-string v12, "SimManagementSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mIs3gOff="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-string v12, "SimManagementSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mTelephony.is3GSwitchLocked() is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchLocked()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :cond_8
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isGPRSEnable()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    .line 879
    :goto_6
    return-void

    .line 816
    :cond_9
    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-nez v12, :cond_b

    .line 817
    iget-object v13, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    sget-boolean v12, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    if-eqz v12, :cond_a

    add-int/lit8 v12, v4, 0x1

    :goto_7
    invoke-virtual {v13, v12}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 819
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v13, 0x7f0b00dc

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    :cond_a
    move v12, v4

    .line 817
    goto :goto_7

    .line 821
    :cond_b
    const-wide/16 v12, -0x5

    cmp-long v12, v10, v12

    if-nez v12, :cond_5

    .line 822
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v13, -0x5

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 824
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v13, 0x7f0b059c

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 830
    :cond_c
    const-wide/16 v12, -0x5

    cmp-long v12, v7, v12

    if-nez v12, :cond_d

    .line 831
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v13, 0x7f0b059c

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    .line 833
    :cond_d
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

    invoke-interface {v12}, Lcom/android/settings_ex/ext/ISimManagementExt;->isNeedsetAutoItem()Z

    move-result v12

    if-eqz v12, :cond_6

    const-wide/16 v12, -0x3

    cmp-long v12, v7, v12

    if-nez v12, :cond_6

    .line 834
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

    iget-object v13, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-interface {v12, v13, v7, v8}, Lcom/android/settings_ex/ext/ISimManagementExt;->setPrefProperty(Landroid/preference/DialogPreference;J)V

    .line 835
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    goto/16 :goto_2

    .line 846
    :cond_e
    const-wide/16 v12, -0x5

    cmp-long v12, v0, v12

    if-nez v12, :cond_7

    .line 847
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v13, 0x7f0b059c

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 862
    :cond_f
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    goto/16 :goto_4

    .line 867
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 873
    :catch_0
    move-exception v2

    .line 874
    .local v2, e:Landroid/os/RemoteException;
    const-string v12, "SimManagementSettings"

    const-string v13, "mTelephony exception"

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private setStatusBarEnableStatus(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 1552
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStatusBarEnableStatus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1555
    .local v0, statusBarManager:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_1

    .line 1556
    if-eqz p1, :cond_0

    .line 1557
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1566
    :goto_0
    return-void

    .line 1559
    :cond_0
    const/high16 v1, 0x121

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 1564
    :cond_1
    const-string v1, "SimManagementSettings"

    const-string v2, "Fail to get status bar instance"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDataConnDialog(Z)V
    .locals 4
    .parameter "isConnect"

    .prologue
    .line 1361
    const-wide/16 v0, 0x0

    .line 1362
    .local v0, delaytime:J
    if-eqz p1, :cond_0

    .line 1363
    const-wide/16 v0, 0x7530

    .line 1367
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1368
    const v2, 0x7f0b00f2

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->showProgressDlg(I)V

    .line 1369
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    .line 1370
    return-void

    .line 1365
    :cond_0
    const-wide/16 v0, 0x2710

    goto :goto_0
.end method

.method private showProgressDlg(I)V
    .locals 3
    .parameter "dialogMsg"

    .prologue
    .line 1373
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showProgressDlg() with dialogMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iput p1, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    .line 1375
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 1376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->setCancelable(Z)V

    .line 1377
    return-void
.end method

.method private switchGprsDefautlSIM(J)V
    .locals 9
    .parameter "simid"

    .prologue
    const-wide/16 v7, 0x0

    .line 1476
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchGprsDefautlSIM() with simid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    cmp-long v4, p1, v7

    if-gez v4, :cond_1

    .line 1499
    :cond_0
    :goto_0
    return-void

    .line 1480
    :cond_1
    cmp-long v4, p1, v7

    if-lez v4, :cond_2

    const/4 v3, 0x1

    .line 1482
    .local v3, isConnect:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gprs_connection_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1485
    .local v0, curConSimId:J
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curConSimId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    cmp-long v4, p1, v0

    if-eqz v4, :cond_0

    .line 1489
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1490
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "simid"

    invoke-virtual {v2, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1493
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1494
    invoke-direct {p0, v3}, Lcom/mediatek/gemini/SimManagement;->showDataConnDialog(Z)V

    goto :goto_0

    .line 1480
    .end local v0           #curConSimId:J
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isConnect:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private switchSimRadioState(IZ)V
    .locals 10
    .parameter "slot"
    .parameter "isChecked"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 1216
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dual_sim_mode_setting"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1218
    .local v0, dualSimMode:I
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The current dual sim mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

    invoke-interface {v5, v9}, Lcom/android/settings_ex/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    .line 1222
    const/4 v1, 0x0

    .line 1223
    .local v1, dualState:I
    const/4 v3, 0x0

    .line 1224
    .local v3, isRadioOn:Z
    packed-switch v0, :pswitch_data_0

    .line 1303
    const-string v5, "SimManagementSettings"

    const-string v6, "Error not correct values"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :goto_0
    return-void

    .line 1226
    :pswitch_0
    if-nez p1, :cond_2

    .line 1227
    const/4 v1, 0x1

    .line 1231
    :cond_0
    :goto_1
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning on only sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const/4 v3, 0x1

    .line 1308
    :cond_1
    :goto_2
    const/4 v4, 0x0

    .line 1309
    .local v4, msgId:I
    if-eqz v3, :cond_c

    .line 1310
    const v4, 0x7f0b00e4

    .line 1314
    :goto_3
    invoke-direct {p0, v4}, Lcom/mediatek/gemini/SimManagement;->showProgressDlg(I)V

    .line 1317
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dualState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isRadioOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dual_sim_mode_setting"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1320
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1321
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "mode"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1322
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1228
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #msgId:I
    :cond_2
    if-ne p1, v8, :cond_0

    .line 1229
    const/4 v1, 0x2

    goto :goto_1

    .line 1235
    :pswitch_1
    if-nez p1, :cond_4

    .line 1236
    if-eqz p2, :cond_3

    .line 1237
    const-string v5, "SimManagementSettings"

    const-string v6, "try to turn on slot 1 again since it is already on"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    move v1, v0

    .line 1239
    const/4 v3, 0x1

    .line 1244
    :goto_4
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning off sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and all sim radio is off"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1241
    :cond_3
    const/4 v1, 0x0

    .line 1242
    const/4 v3, 0x0

    goto :goto_4

    .line 1246
    :cond_4
    if-ne p1, v8, :cond_1

    .line 1247
    iget-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot1Insert:Z

    if-eqz v5, :cond_5

    .line 1248
    const/4 v1, 0x3

    .line 1249
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim 0 was radio on and now turning on sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :goto_5
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1252
    :cond_5
    const/4 v1, 0x2

    .line 1253
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning on only sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1259
    :pswitch_2
    if-ne p1, v8, :cond_7

    .line 1260
    if-eqz p2, :cond_6

    .line 1261
    const-string v5, "SimManagementSettings"

    const-string v6, "try to turn on slot 2 again since it is already on"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    move v1, v0

    .line 1263
    const/4 v3, 0x1

    .line 1268
    :goto_6
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning off sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and all sim radio is off"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1265
    :cond_6
    const/4 v1, 0x0

    .line 1266
    const/4 v3, 0x0

    goto :goto_6

    .line 1270
    :cond_7
    if-nez p1, :cond_1

    .line 1271
    iget-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot2Insert:Z

    if-eqz v5, :cond_8

    .line 1272
    const/4 v1, 0x3

    .line 1273
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim 1 was radio on and now turning on sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :goto_7
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1275
    :cond_8
    const/4 v1, 0x1

    .line 1276
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning on only sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1282
    :pswitch_3
    if-nez p2, :cond_b

    .line 1283
    if-nez p1, :cond_a

    .line 1284
    const/4 v1, 0x2

    .line 1286
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/settings_ex/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    .line 1294
    :cond_9
    :goto_8
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning off only sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1288
    :cond_a
    if-ne p1, v8, :cond_9

    .line 1289
    const/4 v1, 0x1

    .line 1291
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

    invoke-interface {v5, v8}, Lcom/android/settings_ex/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    goto :goto_8

    .line 1297
    :cond_b
    const-string v5, "SimManagementSettings"

    const-string v6, "try to turn on but actually they are all on"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    move v1, v0

    .line 1299
    const/4 v3, 0x1

    .line 1301
    goto/16 :goto_2

    .line 1312
    .restart local v4       #msgId:I
    :cond_c
    const v4, 0x7f0b00e5

    goto/16 :goto_3

    .line 1224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private switchVideoCallDefaultSIM(J)V
    .locals 6
    .parameter "simid"

    .prologue
    .line 1522
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchVideoCallDefaultSIM to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 1524
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->findSIMInfoBySimId(J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 1525
    .local v1, siminfo:Landroid/provider/Telephony$SIMInfo;
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    if-nez v1, :cond_1

    .line 1527
    const-string v2, "SimManagementSettings"

    const-string v3, "Error no corrent siminfo found"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    .end local v1           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    :goto_0
    return-void

    .line 1531
    .restart local v1       #siminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    :try_start_0
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set sim slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with 3G capability"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->set3GCapabilitySIM(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1534
    const v2, 0x7f0b00f3

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->showProgressDlg(I)V

    .line 1535
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v3, 0x7d2

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1539
    :catch_0
    move-exception v0

    .line 1540
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimManagementSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1537
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateDataConnPrefe()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 1392
    const-wide/16 v1, 0x0

    .line 1394
    .local v1, simid:J
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gprs_connection_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1406
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gprs connection SIM changed with simid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    cmp-long v4, v1, v8

    if-nez v4, :cond_0

    .line 1410
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 1411
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v5, 0x7f0b00de

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 1426
    :goto_0
    return-void

    .line 1412
    :cond_0
    cmp-long v4, v1, v8

    if-lez v4, :cond_2

    .line 1415
    invoke-direct {p0, v1, v2}, Lcom/mediatek/gemini/SimManagement;->findListPosBySimId(J)I

    move-result v0

    .line 1416
    .local v0, pos:I
    invoke-direct {p0, v1, v2}, Lcom/mediatek/gemini/SimManagement;->findSIMInfoBySimId(J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 1417
    .local v3, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-nez v3, :cond_1

    .line 1418
    const-string v4, "SimManagementSettings"

    const-string v5, "Error no correct siminfo get..."

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1421
    :cond_1
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v4, v0}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 1422
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v5, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1424
    .end local v0           #pos:I
    .end local v3           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    const-string v4, "SimManagementSettings"

    const-string v5, "Error wrong simid need to check..."

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDefaultSIMSummary(Lcom/mediatek/gemini/DefaultSimPreference;Ljava/lang/Long;)V
    .locals 7
    .parameter "pref"
    .parameter "simid"

    .prologue
    const-wide/16 v5, 0x0

    .line 1002
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDefaultSIMSummary() with simid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-lez v1, :cond_1

    .line 1005
    invoke-direct {p0, p2}, Lcom/mediatek/gemini/SimManagement;->getSIMInfoById(Ljava/lang/Long;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1006
    .local v0, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 1007
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1019
    .end local v0           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1010
    const v1, 0x7f0b00dd

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 1011
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 1012
    const v1, 0x7f0b00dc

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 1013
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_4

    .line 1014
    const v1, 0x7f0b00de

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 1015
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

    invoke-interface {v1, p1, p2}, Lcom/android/settings_ex/ext/ISimManagementExt;->updateDefaultSIMSummary(Landroid/preference/DialogPreference;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private updatePreferenceUI()V
    .locals 2

    .prologue
    .line 509
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    const-string v0, "SimManagementSettings"

    const-string v1, "updatePreferenceUI() and update UI"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 512
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->initDefaultSimPreference()V

    .line 513
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setPreferenceProperty()V

    .line 514
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-lez v0, :cond_1

    .line 516
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->addSimInfoPreference()V

    .line 524
    :goto_1
    return-void

    .line 511
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 518
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setNoSimInfoUi()V

    goto :goto_1

    .line 521
    :cond_2
    const-string v0, "SimManagementSettings"

    const-string v1, "on backgroud no need update preference"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateVideoCallDefaultSIM()V
    .locals 7

    .prologue
    .line 1433
    const-string v4, "SimManagementSettings"

    const-string v5, "updateVideoCallDefaultSIM()"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v4, :cond_0

    .line 1436
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I

    move-result v3

    .line 1437
    .local v3, slotId:I
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateVideoCallDefaultSIM()---slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    if-gez v3, :cond_1

    .line 1456
    .end local v3           #slotId:I
    :cond_0
    :goto_0
    return-void

    .line 1441
    .restart local v3       #slotId:I
    :cond_1
    invoke-direct {p0, v3}, Lcom/mediatek/gemini/SimManagement;->findSIMInofBySlotId(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 1442
    .local v2, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_2

    .line 1443
    iget-wide v4, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-direct {p0, v4, v5}, Lcom/mediatek/gemini/SimManagement;->findListPosBySimId(J)I

    move-result v1

    .line 1444
    .local v1, pos:I
    if-ltz v1, :cond_0

    .line 1445
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v4, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 1446
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v5, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1452
    .end local v1           #pos:I
    .end local v2           #siminfo:Landroid/provider/Telephony$SIMInfo;
    .end local v3           #slotId:I
    :catch_0
    move-exception v0

    .line 1453
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SimManagementSettings"

    const-string v5, "mTelephony exception"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1449
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #siminfo:Landroid/provider/Telephony$SIMInfo;
    .restart local v3       #slotId:I
    :cond_2
    :try_start_1
    const-string v4, "SimManagementSettings"

    const-string v5, "mVideoCallSimSetting.setInitValue(-1)"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected initDefaultSimPreference()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 644
    const-string v5, "SimManagementSettings"

    const-string v6, "initDefaultSimPreference()"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 646
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 647
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 648
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 650
    const/4 v1, 0x0

    .line 651
    .local v1, k:I
    const/4 v2, 0x0

    .line 652
    .local v2, simState:I
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    .line 653
    .local v3, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v3, :cond_0

    .line 654
    new-instance v4, Lcom/mediatek/gemini/SimItem;

    invoke-direct {v4, v3}, Lcom/mediatek/gemini/SimItem;-><init>(Landroid/provider/Telephony$SIMInfo;)V

    .line 655
    .local v4, simitem:Lcom/mediatek/gemini/SimItem;
    iget v5, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-direct {p0, v5}, Lcom/mediatek/gemini/SimManagement;->getSimIndicator(I)I

    move-result v2

    .line 656
    iput v2, v4, Lcom/mediatek/gemini/SimItem;->mState:I

    .line 661
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 662
    const-string v5, "SimManagementSettings"

    const-string v6, "Force the state to be radio off as airplane mode or dual sim mode"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iput v9, v4, Lcom/mediatek/gemini/SimItem;->mState:I

    .line 665
    :cond_1
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    sget-boolean v5, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    if-eqz v5, :cond_0

    .line 672
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 677
    .end local v3           #siminfo:Landroid/provider/Telephony$SIMInfo;
    .end local v4           #simitem:Lcom/mediatek/gemini/SimItem;
    :cond_2
    sget-boolean v5, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    if-eqz v5, :cond_3

    .line 678
    const-string v5, "SimManagementSettings"

    const-string v6, "set internet call item"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    new-instance v4, Lcom/mediatek/gemini/SimItem;

    const v5, 0x7f0b00dd

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    const-wide/16 v7, -0x2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mediatek/gemini/SimItem;-><init>(Ljava/lang/String;IJ)V

    .line 682
    .restart local v4       #simitem:Lcom/mediatek/gemini/SimItem;
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    .end local v4           #simitem:Lcom/mediatek/gemini/SimItem;
    :cond_3
    new-instance v4, Lcom/mediatek/gemini/SimItem;

    const v5, 0x7f0b00dc

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-direct {v4, v5, v11, v6, v7}, Lcom/mediatek/gemini/SimItem;-><init>(Ljava/lang/String;IJ)V

    .line 688
    .restart local v4       #simitem:Lcom/mediatek/gemini/SimItem;
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_b

    .line 689
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_5

    .line 695
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_5
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

    invoke-interface {v5}, Lcom/android/settings_ex/ext/ISimManagementExt;->isNeedsetAutoItem()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 700
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_6

    .line 701
    new-instance v4, Lcom/mediatek/gemini/SimItem;

    .end local v4           #simitem:Lcom/mediatek/gemini/SimItem;
    const v5, 0x7f0b013e

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x3

    invoke-direct {v4, v5, v11, v6, v7}, Lcom/mediatek/gemini/SimItem;-><init>(Ljava/lang/String;IJ)V

    .line 705
    .restart local v4       #simitem:Lcom/mediatek/gemini/SimItem;
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_6
    new-instance v4, Lcom/mediatek/gemini/SimItem;

    .end local v4           #simitem:Lcom/mediatek/gemini/SimItem;
    const v5, 0x7f0b00de

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v11, v6, v7}, Lcom/mediatek/gemini/SimItem;-><init>(Ljava/lang/String;IJ)V

    .line 713
    .restart local v4       #simitem:Lcom/mediatek/gemini/SimItem;
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 714
    iput v9, v4, Lcom/mediatek/gemini/SimItem;->mState:I

    .line 716
    :cond_7
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSimItemListVoice.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSimItemListVideo.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSimItemListSms.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSimItemListSms.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    sget-boolean v5, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    if-eqz v5, :cond_8

    .line 723
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_c

    .line 724
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v10}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    .line 730
    :cond_8
    :goto_2
    iget-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-eqz v5, :cond_9

    .line 731
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_d

    .line 732
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v10}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    .line 738
    :cond_9
    :goto_3
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_e

    .line 739
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v10}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    .line 745
    :goto_4
    iget v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-ne v5, v9, :cond_f

    .line 746
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 751
    :cond_a
    :goto_5
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitData(Ljava/util/List;)V

    .line 752
    return-void

    .line 690
    :cond_b
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_4

    sget-boolean v5, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    if-eqz v5, :cond_4

    .line 691
    const-string v5, "SimManagementSettings"

    const-string v6, "no sim card inserted but internet call is on"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 726
    :cond_c
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitData(Ljava/util/List;)V

    .line 727
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v9}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    goto :goto_2

    .line 734
    :cond_d
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitData(Ljava/util/List;)V

    .line 735
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v9}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    goto :goto_3

    .line 741
    :cond_e
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitData(Ljava/util/List;)V

    .line 742
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v9}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    goto :goto_4

    .line 747
    :cond_f
    iget v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-le v5, v9, :cond_a

    .line 749
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 304
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 305
    const v2, 0x7f050037

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 306
    const-string v2, "SimManagementSettings"

    const-string v3, "onCreate Sim Management"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v2, "SimManagementSettings"

    const-string v3, "MTK_VT3G324M_SUPPORT=falseMTK_GEMINI_3G_SWITCH=false"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v2, 0x0

    sput-boolean v2, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    .line 313
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mConnService:Landroid/net/ConnectivityManager;

    .line 314
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 315
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 317
    const-string v2, "SimManagementSettings"

    const-string v3, "FeatureOption.MTK_GEMINI_3G_SWITCH=false"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v2, "general_settings"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 321
    .local v1, parent:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/android/settings_ex/ext/ISimManagementExt;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

    .line 322
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

    invoke-interface {v2, v1}, Lcom/android/settings_ex/ext/ISimManagementExt;->updateSimManagementPref(Landroid/preference/PreferenceGroup;)V

    .line 323
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->initIntentFilter()V

    .line 325
    const-string v2, "voice_call_sim_setting"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/DefaultSimPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    .line 326
    const-string v2, "video_call_sim_setting"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/DefaultSimPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    .line 327
    const-string v2, "sms_sim_setting"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/DefaultSimPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    .line 328
    const-string v2, "gprs_sim_setting"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/DefaultSimPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    .line 331
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setIconForDefaultSimPref()V

    .line 333
    const-string v2, "contacts_sim"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    .line 335
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, v4}, Lcom/mediatek/gemini/DefaultSimPreference;->setType(I)V

    .line 336
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 337
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setType(I)V

    .line 338
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 342
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setType(I)V

    .line 343
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 344
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setType(I)V

    .line 345
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 346
    new-instance v2, Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {v2}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>()V

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 347
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 348
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setCellConnMgr(Lcom/mediatek/CellConnService/CellConnMgr;)V

    .line 351
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 361
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimManagementSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    const v12, 0x1080027

    const v11, 0x1040014

    const v10, 0x1040013

    const v9, 0x1040009

    .line 1129
    const-string v6, "SimManagementSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateDialog() with id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1132
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 1194
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1134
    :pswitch_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1135
    .local v2, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1136
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1137
    iget v6, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    const v7, 0x7f0b00f3

    if-ne v6, v7, :cond_0

    .line 1138
    const-string v6, "SimManagementSettings"

    const-string v7, "3G switch to dispatch home key"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 1140
    .local v5, win:Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1141
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, -0x8000

    or-int/2addr v6, v7

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1142
    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1143
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/mediatek/gemini/SimManagement;->setStatusBarEnableStatus(Z)V

    .line 1145
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #win:Landroid/view/Window;
    :cond_0
    const/4 v6, -0x1

    iput v6, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    move-object v0, v2

    .line 1146
    goto :goto_0

    .line 1148
    .end local v2           #dialog:Landroid/app/ProgressDialog;
    :pswitch_1
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1149
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1151
    const/4 v4, -0x1

    .line 1152
    .local v4, noNeedToShowMessage:I
    iget v6, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    if-ne v6, v4, :cond_1

    .line 1153
    const v6, 0x7f0b00fb

    iput v6, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    .line 1156
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1157
    new-instance v6, Lcom/mediatek/gemini/SimManagement$8;

    invoke-direct {v6, p0}, Lcom/mediatek/gemini/SimManagement$8;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v1, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1166
    new-instance v6, Lcom/mediatek/gemini/SimManagement$9;

    invoke-direct {v6, p0}, Lcom/mediatek/gemini/SimManagement$9;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v1, v9, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1172
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1173
    .local v0, alertDlg:Landroid/app/AlertDialog;
    goto :goto_0

    .line 1175
    .end local v0           #alertDlg:Landroid/app/AlertDialog;
    .end local v4           #noNeedToShowMessage:I
    :pswitch_2
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1176
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1177
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00f4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1179
    new-instance v6, Lcom/mediatek/gemini/SimManagement$10;

    invoke-direct {v6, p0}, Lcom/mediatek/gemini/SimManagement$10;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v1, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1185
    new-instance v6, Lcom/mediatek/gemini/SimManagement$11;

    invoke-direct {v6, p0}, Lcom/mediatek/gemini/SimManagement$11;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v1, v9, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1191
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1192
    .restart local v0       #alertDlg:Landroid/app/AlertDialog;
    goto/16 :goto_0

    .line 1132
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 981
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 982
    const-string v1, "SimManagementSettings"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 986
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    .line 987
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->unregisterForSimModeChange(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 996
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 997
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 998
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v2, 0x7d2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 999
    :goto_0
    return-void

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SimManagementSettings"

    const-string v2, "mTelephony exception"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 974
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 975
    const-string v0, "SimManagementSettings"

    const-string v1, "OnPause()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 977
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v7, -0x1

    .line 914
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 915
    .local v1, key:Ljava/lang/String;
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enter onPreferenceChange function with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const-string v4, "voice_call_sim_setting"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 917
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_call_sim_setting"

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 919
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VOICE_CALL_DEFAULT_SIM"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 921
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "simid"

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 922
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 923
    const-string v5, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send broadcast voice call change with simid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-direct {p0, v4, p2}, Lcom/mediatek/gemini/SimManagement;->updateDefaultSIMSummary(Lcom/mediatek/gemini/DefaultSimPreference;Ljava/lang/Long;)V

    .line 969
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 926
    .restart local p2
    :cond_1
    const-string v4, "video_call_sim_setting"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 936
    const-string v4, "sms_sim_setting"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 937
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sms_sim_setting"

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 939
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SMS_DEFAULT_SIM"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 940
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v5, "simid"

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 941
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 942
    const-string v5, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send broadcast sms change with simid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-direct {p0, v4, p2}, Lcom/mediatek/gemini/SimManagement;->updateDefaultSIMSummary(Lcom/mediatek/gemini/DefaultSimPreference;Ljava/lang/Long;)V

    goto :goto_0

    .line 944
    .end local v0           #intent:Landroid/content/Intent;
    .restart local p2
    :cond_2
    const-string v4, "gprs_sim_setting"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 945
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 946
    .local v2, simid:J
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 951
    iput v7, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    .line 957
    :goto_1
    iget v4, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    if-eq v4, v7, :cond_4

    .line 960
    iput-wide v2, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J

    .line 961
    const/16 v4, 0x3ea

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 962
    new-instance v4, Lcom/mediatek/gemini/SimManagement$7;

    invoke-direct {v4, p0}, Lcom/mediatek/gemini/SimManagement$7;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 953
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/SimManagement;->dataSwitchConfirmDlgMsg(J)I

    move-result v4

    iput v4, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    goto :goto_1

    .line 958
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/SimManagement;->switchGprsDefautlSIM(J)V

    goto/16 :goto_0
.end method

.method public onPreferenceClick(J)V
    .locals 6
    .parameter "simid"

    .prologue
    .line 1613
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1614
    .local v4, extras:Landroid/os/Bundle;
    const-string v0, "simid"

    invoke-virtual {v4, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1615
    const-class v0, Lcom/mediatek/gemini/SimInfoEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const v5, 0x7f0b00ce

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 1617
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/mediatek/gemini/SimInfoEditor;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 884
    const-string v0, "contacts_sim"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 886
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/provider/Telephony$SIMInfo;

    .line 887
    .local v7, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v7, :cond_0

    .line 888
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 889
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "com.android.settings_ex"

    const-string v1, "com.mediatek.gemini.GeminiSIMTetherInfo"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    iget v8, v7, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 892
    .local v8, slot:I
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter sim contanct of sim "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    if-ltz v8, :cond_0

    .line 894
    const-string v0, "simid"

    iget-wide v1, v7, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 895
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 909
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #siminfo:Landroid/provider/Telephony$SIMInfo;
    .end local v8           #slot:I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 901
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 902
    .local v4, extras:Landroid/os/Bundle;
    const-string v0, "type"

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 904
    const-class v0, Lcom/mediatek/gemini/SimListEntrance;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const v5, 0x7f0b00d6

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 906
    const-string v0, "SimManagementSettings"

    const-string v1, "startFragment(this, SimListEntrance.class.getCanonicalName(), -1, extras);"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 402
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 403
    const-string v0, "SimManagementSettings"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    .line 406
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    .line 407
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isVoipAvailable()Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    .line 408
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVoiceCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsSmsCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sVTCallSupport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sIsVoipAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->getSimInfo()V

    .line 413
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->removeUnusedPref()V

    .line 414
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updatePreferenceUI()V

    .line 416
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_sim_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 424
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->dealDialogOnResume()V

    .line 426
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/settings_ex/ext/ISimManagementExt;->dealWithDataConnChanged(Landroid/content/Intent;Z)V

    .line 428
    return-void
.end method
