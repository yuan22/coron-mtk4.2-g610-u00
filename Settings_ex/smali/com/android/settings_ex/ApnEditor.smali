.class public Lcom/android/settings_ex/ApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final APN_INDEX:I = 0x2

.field private static final AUTH_TYPE_INDEX:I = 0xe

.field private static final BEARER_INDEX:I = 0x12

.field private static final CARRIER_ENABLED_INDEX:I = 0x11

.field private static final DIALOG_CONFIRM_CHANGE:I = 0x1

.field private static final ERROR_DIALOG_ID:I = 0x0

.field private static final GEMINI_PHONE:Z = true

.field private static final ID_INDEX:I = 0x0

.field private static final KEY_APN_TYPE_LIST:Ljava/lang/String; = "apn_type_list"

.field private static final KEY_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field private static final KEY_BEARER:Ljava/lang/String; = "bearer"

.field private static final KEY_CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field private static final KEY_PROTOCOL:Ljava/lang/String; = "apn_protocol"

.field private static final KEY_ROAMING_PROTOCOL:Ljava/lang/String; = "apn_roaming_protocol"

.field private static final MCC_INDEX:I = 0x9

.field private static final MENU_CANCEL:I = 0x3

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_SAVE:I = 0x2

.field private static final MMSC_INDEX:I = 0x8

.field private static final MMSPORT_INDEX:I = 0xd

.field private static final MMSPROXY_INDEX:I = 0xc

.field private static final MNC_INDEX:I = 0xa

.field private static final NAME_INDEX:I = 0x1

.field private static final PASSWORD_INDEX:I = 0x7

.field private static final PORT_INDEX:I = 0x4

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final PROTOCOL_INDEX:I = 0x10

.field private static final PROXY_INDEX:I = 0x3

.field private static final ROAMING_PROTOCOL_INDEX:I = 0x13

.field private static final SAVED_POS:Ljava/lang/String; = "pos"

.field private static final SERVER_INDEX:I = 0x6

.field private static final SIM_CARD_SINGLE:I = 0x0

.field private static final SOURCE_TYPE_DEFAULT:I = 0x0

.field private static final SOURCE_TYPE_INDEX:I = 0x14

.field private static final SOURCE_TYPE_OMACP:I = 0x2

.field private static final SOURCE_TYPE_USER_EDIT:I = 0x1

.field private static final SS_TAG:Ljava/lang/String; = "ssr"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final TYPE_INDEX:I = 0xf

.field private static final USER_INDEX:I = 0x5

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mAirplaneModeEnabled:Z

.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDualSimMode:I

.field mExt:Lcom/android/settings_ex/ext/IApnEditorExt;

.field private mFirstTime:Z

.field private mIMSI:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsCallStateIdle:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mNotInMmsTransaction:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPnn:Ljava/lang/String;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProviderUri:Landroid/net/Uri;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mReadOnlyMode:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mSimId:I

.field private mSourceType:I

.field private mSpn:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const-class v0, Lcom/android/settings_ex/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    .line 142
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sourcetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/ApnEditor;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 124
    iput v0, p0, Lcom/android/settings_ex/ApnEditor;->mSourceType:I

    .line 127
    iput-boolean v2, p0, Lcom/android/settings_ex/ApnEditor;->mIsCallStateIdle:Z

    .line 128
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnEditor;->mAirplaneModeEnabled:Z

    .line 129
    iput v0, p0, Lcom/android/settings_ex/ApnEditor;->mDualSimMode:I

    .line 133
    iput-boolean v2, p0, Lcom/android/settings_ex/ApnEditor;->mNotInMmsTransaction:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnEditor;->mReadOnlyMode:Z

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mSpn:Ljava/lang/String;

    .line 191
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mIMSI:Ljava/lang/String;

    .line 192
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mPnn:Ljava/lang/String;

    .line 194
    new-instance v0, Lcom/android/settings_ex/ApnEditor$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ApnEditor$1;-><init>(Lcom/android/settings_ex/ApnEditor;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    new-instance v0, Lcom/android/settings_ex/ApnEditor$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ApnEditor$2;-><init>(Lcom/android/settings_ex/ApnEditor;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 261
    new-instance v0, Lcom/android/settings_ex/ApnEditor$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/ApnEditor$3;-><init>(Lcom/android/settings_ex/ApnEditor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ApnEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mAirplaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/ApnEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/ApnEditor;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->radioOffExit()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/ApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->setIMSI()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/ApnEditor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mPnn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/ApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->setPnn()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/ApnEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/settings_ex/ApnEditor;->mSimId:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings_ex/ApnEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/ApnEditor;->mIsCallStateIdle:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/settings_ex/ApnEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/ApnEditor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings_ex/ApnEditor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/ApnEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/ApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->fillUi()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/ApnEditor;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/ApnEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/ApnEditor;->mNotInMmsTransaction:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->setScreenEnabledStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ApnEditor;)Lcom/android/settings_ex/ApnTypePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/ApnEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/settings_ex/ApnEditor;->mDualSimMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/ApnEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/settings_ex/ApnEditor;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/ApnEditor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/ApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->setSpn()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/ApnEditor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mIMSI:Ljava/lang/String;

    return-object v0
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 642
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 643
    .local v1, mBearerIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 650
    :goto_0
    return-object v3

    .line 646
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f07002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 982
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 983
    :cond_0
    const-string p1, ""

    .line 985
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 974
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 975
    :cond_0
    sget-object p1, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 977
    .end local p1
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 955
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 958
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 959
    return-void
.end method

.method private fillUi()V
    .locals 13

    .prologue
    .line 517
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_0

    .line 518
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 620
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-boolean v9, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    if-eqz v9, :cond_3

    .line 522
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    .line 524
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 525
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 526
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 527
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 528
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 529
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 530
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x7

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 531
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xc

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 532
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xd

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 533
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x8

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 534
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x9

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 535
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xa

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 537
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xf

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 538
    .local v7, strType:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x9

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xa

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/settings_ex/ApnTypePreference;->setType(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 539
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;

    invoke-virtual {v9, v7}, Lcom/android/settings_ex/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    .line 542
    iget-boolean v9, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v9, :cond_2

    .line 544
    iget v9, p0, Lcom/android/settings_ex/ApnEditor;->mSimId:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 545
    const-string v6, "gsm.sim.operator.numeric.2"

    .line 549
    .local v6, simSysProperty:Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 551
    .local v5, numeric:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_1

    .line 553
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 555
    .local v3, mcc:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, mnc:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 558
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 559
    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 560
    iput-object v3, p0, Lcom/android/settings_ex/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 563
    .end local v3           #mcc:Ljava/lang/String;
    .end local v4           #mnc:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "apn_type"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, apnType:Ljava/lang/String;
    const-string v9, "tethering"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 566
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;

    const-string v10, "tethering"

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;

    const-string v10, "tethering"

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    .line 573
    .end local v0           #apnType:Ljava/lang/String;
    .end local v5           #numeric:Ljava/lang/String;
    .end local v6           #simSysProperty:Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xe

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 574
    .local v1, authVal:I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_6

    .line 575
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 580
    :goto_3
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x10

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 581
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x13

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 582
    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_7

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v10, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 583
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x12

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 584
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x14

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, p0, Lcom/android/settings_ex/ApnEditor;->mSourceType:I

    .line 588
    .end local v1           #authVal:I
    .end local v7           #strType:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, authVal:Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 605
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 606
    .local v2, authValIndex:I
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 608
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f070028

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 609
    .local v8, values:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v10, v8, v2

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 614
    .end local v2           #authValIndex:I
    .end local v8           #values:[Ljava/lang/String;
    :goto_5
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 547
    .end local v1           #authVal:Ljava/lang/String;
    .restart local v7       #strType:Ljava/lang/String;
    :cond_4
    const-string v6, "gsm.sim.operator.numeric"

    .restart local v6       #simSysProperty:Ljava/lang/String;
    goto/16 :goto_1

    .line 569
    .restart local v0       #apnType:Ljava/lang/String;
    .restart local v5       #numeric:Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;

    const-string v10, "default"

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;

    const-string v10, "default"

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 577
    .end local v0           #apnType:Ljava/lang/String;
    .end local v5           #numeric:Ljava/lang/String;
    .end local v6           #simSysProperty:Ljava/lang/String;
    .local v1, authVal:I
    :cond_6
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 582
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 611
    .end local v7           #strType:Ljava/lang/String;
    .local v1, authVal:Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v10, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 891
    const/4 v1, 0x0

    .line 893
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 894
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, apn:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 896
    .local v2, mcc:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 898
    .local v3, mnc:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 899
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b05ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 908
    :cond_0
    :goto_0
    return-object v1

    .line 900
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 901
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b05bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 902
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 903
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b05bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 904
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 905
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b05bd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isMMSNotTransaction()Z
    .locals 7

    .prologue
    .line 490
    const/4 v1, 0x1

    .line 491
    .local v1, isMMSNotProcess:Z
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 492
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 493
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 494
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 495
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 496
    .local v3, state:Landroid/net/NetworkInfo$State;
    sget-object v4, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mms state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    .line 501
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #state:Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_0
    return v1

    .line 497
    .restart local v2       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v3       #state:Landroid/net/NetworkInfo$State;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "raw"
    .parameter "protocol"

    .prologue
    const/4 v3, 0x0

    .line 628
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 629
    .local v1, protocolIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 636
    :goto_0
    return-object v3

    .line 632
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f07002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private radioOffExit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 277
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 278
    return-void
.end method

.method private setIMSI()V
    .locals 5

    .prologue
    .line 297
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 299
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    iget v2, p0, Lcom/android/settings_ex/ApnEditor;->mSimId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForImsiGemini(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mIMSI:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mIMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPnn()V
    .locals 4

    .prologue
    .line 310
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 312
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/android/settings_ex/ApnEditor;->mSimId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isOperatorMvnoForEfPnnGemini(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mPnn:Ljava/lang/String;

    .line 316
    sget-object v1, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPnn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/ApnEditor;->mPnn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method

.method private setScreenEnabledStatus()V
    .locals 2

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mReadOnlyMode:Z

    if-eqz v0, :cond_0

    .line 321
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "-----------mReadOnlyMode is true -----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mAirplaneModeEnabled:Z

    if-eqz v0, :cond_1

    .line 324
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "-----------mAirplaneModeEnabled is true -----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mNotInMmsTransaction:Z

    if-nez v0, :cond_2

    .line 327
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "-----------!mNotInMmsTransaction is true -----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/ApnEditor;->mDualSimMode:I

    if-nez v0, :cond_3

    .line 330
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "-----------mDualSimMode is 0 -----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mReadOnlyMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mAirplaneModeEnabled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mNotInMmsTransaction:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/settings_ex/ApnEditor;->mDualSimMode:I

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 334
    return-void

    .line 332
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSpn()V
    .locals 5

    .prologue
    .line 282
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 285
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    iget v2, p0, Lcom/android/settings_ex/ApnEditor;->mSimId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getSpNameInEfSpnGemini(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mSpn:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mSpn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 962
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 963
    :cond_0
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 969
    :goto_0
    return-object v2

    .line 965
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 966
    .local v1, password:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 967
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 966
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 969
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 14
    .parameter "force"

    .prologue
    .line 784
    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 785
    .local v7, name:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, apn:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 787
    .local v5, mcc:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 789
    .local v6, mnc:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    if-nez p1, :cond_0

    .line 790
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/app/Activity;->showDialog(I)V

    .line 791
    const/4 v10, 0x0

    .line 887
    .end local v7           #name:Ljava/lang/String;
    :goto_0
    return v10

    .line 794
    .restart local v7       #name:Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-nez v10, :cond_1

    .line 795
    sget-object v10, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v10, 0x0

    goto :goto_0

    .line 801
    :cond_1
    if-eqz p1, :cond_3

    iget-boolean v10, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v10, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_3

    .line 802
    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v10, :cond_2

    .line 803
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 804
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    .line 806
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 809
    :cond_3
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 813
    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "name"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0823

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .end local v7           #name:Ljava/lang/String;
    :cond_4
    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string v10, "apn"

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v10, "proxy"

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v10, "port"

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v10, "mmsproxy"

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v10, "mmsport"

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v10, "user"

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v10, "server"

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v10, "password"

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v10, "mmsc"

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const/4 v4, 0x0

    .line 827
    .local v4, isMVNO:Z
    :try_start_0
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 830
    .local v8, telephony:Lcom/android/internal/telephony/ITelephony;
    iget v10, p0, Lcom/android/settings_ex/ApnEditor;->mSimId:I

    invoke-interface {v8, v10}, Lcom/android/internal/telephony/ITelephony;->isIccCardProviderAsMvnoGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 838
    .end local v8           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_1
    if-eqz v4, :cond_5

    .line 839
    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mIMSI:Ljava/lang/String;

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mIMSI:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    .line 840
    const-string v10, "imsi"

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mIMSI:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :cond_5
    :goto_2
    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, authVal:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 850
    const-string v10, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    :cond_6
    const-string v10, "protocol"

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v10, "roaming_protocol"

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v10, "type"

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;

    invoke-virtual {v11}, Lcom/android/settings_ex/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v11, "carrier_enabled"

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    :goto_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 859
    const-string v10, "mcc"

    invoke-virtual {v9, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v10, "mnc"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v10, "numeric"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v10, :cond_7

    .line 865
    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 866
    const-string v10, "current"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 870
    :cond_7
    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 871
    .local v2, bearerVal:Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 872
    const-string v10, "bearer"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 874
    :cond_8
    iget-boolean v10, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v10, :cond_9

    .line 875
    const-string v10, "sourcetype"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    :cond_9
    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v10, :cond_a

    .line 879
    sget-object v10, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "former inserted URI was already deleted, insert a new one"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    .line 882
    :cond_a
    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v10, :cond_b

    .line 883
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v9, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 887
    :cond_b
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 835
    .end local v1           #authVal:Ljava/lang/String;
    .end local v2           #bearerVal:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 836
    .local v3, e:Landroid/os/RemoteException;
    sget-object v10, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "RemoteException"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 841
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_c
    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mSpn:Ljava/lang/String;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mSpn:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    .line 842
    const-string v10, "spn"

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mSpn:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 844
    :cond_d
    const-string v10, "pnn"

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mPnn:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 857
    .restart local v1       #authVal:Ljava/lang/String;
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 338
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 340
    const v2, 0x7f050005

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 342
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b059c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 343
    const-string v2, "apn_name"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 344
    const-string v2, "apn_apn"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 345
    const-string v2, "apn_http_proxy"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 346
    const-string v2, "apn_http_port"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 347
    const-string v2, "apn_user"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 348
    const-string v2, "apn_server"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 349
    const-string v2, "apn_password"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 350
    const-string v2, "apn_mms_proxy"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 351
    const-string v2, "apn_mms_port"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 352
    const-string v2, "apn_mmsc"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 353
    const-string v2, "apn_mcc"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 354
    const-string v2, "apn_mnc"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 355
    const-string v2, "apn_type_list"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/ApnTypePreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;

    .line 356
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 359
    const-string v2, "auth_type"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 360
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 362
    const-string v2, "apn_protocol"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 363
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 365
    const-string v2, "apn_roaming_protocol"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 366
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 368
    const-string v2, "carrier_enabled"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 370
    const-string v2, "bearer"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    .line 371
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 373
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 376
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 378
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 379
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 456
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, action:Ljava/lang/String;
    if-nez p1, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    .line 386
    const-string v2, "simId"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ApnEditor;->mSimId:I

    .line 387
    iget v2, p0, Lcom/android/settings_ex/ApnEditor;->mSimId:I

    if-ne v3, v2, :cond_4

    .line 388
    sget-object v2, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mProviderUri:Landroid/net/Uri;

    .line 395
    :goto_2
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getApnEditorPlugin(Landroid/content/Context;)Lcom/android/settings_ex/ext/IApnEditorExt;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mExt:Lcom/android/settings_ex/ext/IApnEditorExt;

    .line 397
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 398
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    .line 399
    const-string v2, "readOnly"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/ApnEditor;->mReadOnlyMode:Z

    .line 400
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read only mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings_ex/ApnEditor;->mReadOnlyMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :goto_3
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 434
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    iget-boolean v2, p0, Lcom/android/settings_ex/ApnEditor;->mReadOnlyMode:Z

    if-nez v2, :cond_1

    .line 440
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.android.mms.transaction.START"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.android.mms.transaction.STOP"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/settings_ex/ApnEditor;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v6, v6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 444
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 446
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->fillUi()V

    .line 447
    iget-boolean v2, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-nez v2, :cond_2

    .line 448
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 452
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->setSpn()V

    .line 453
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->setIMSI()V

    .line 454
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->setPnn()V

    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 385
    goto/16 :goto_1

    .line 389
    :cond_4
    iget v2, p0, Lcom/android/settings_ex/ApnEditor;->mSimId:I

    if-nez v2, :cond_5

    .line 390
    sget-object v2, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mProviderUri:Landroid/net/Uri;

    goto/16 :goto_2

    .line 392
    :cond_5
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mProviderUri:Landroid/net/Uri;

    goto/16 :goto_2

    .line 402
    :cond_6
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 404
    iget-boolean v2, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    if-nez v2, :cond_7

    const-string v2, "pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    .line 405
    :cond_7
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    .line 413
    :goto_4
    iput-boolean v3, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    .line 417
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_9

    .line 418
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert new telephony provider into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 408
    :cond_8
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mExt:Lcom/android/settings_ex/ext/IApnEditorExt;

    invoke-interface {v2, p0, v1}, Lcom/android/settings_ex/ext/IApnEditorExt;->getUriFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    .line 410
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mProviderUri:Landroid/net/Uri;

    const-string v4, "pos"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_4

    .line 426
    :cond_9
    const/4 v2, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_3

    .line 429
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0b05b9

    const v3, 0x104000a

    .line 914
    if-nez p1, :cond_0

    .line 915
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 938
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 922
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 923
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0090

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/ApnEditor$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ApnEditor$4;-><init>(Lcom/android/settings_ex/ApnEditor;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b034c

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 938
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 698
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 700
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mReadOnlyMode:Z

    if-eqz v0, :cond_0

    .line 712
    :goto_0
    return v3

    .line 704
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings_ex/ApnEditor;->mSourceType:I

    if-eqz v0, :cond_1

    .line 705
    const v0, 0x7f0b05b5

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020078

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 708
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f0b05b7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 710
    const/4 v0, 0x3

    const v1, 0x7f0b05b8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 462
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 463
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 751
    packed-switch p1, :pswitch_data_0

    .line 761
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 753
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 756
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 751
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 717
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 719
    if-eqz p2, :cond_0

    .line 720
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mNotInMmsTransaction:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mIsCallStateIdle:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mAirplaneModeEnabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings_ex/ApnEditor;->mDualSimMode:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {p2, v2, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 722
    :cond_0
    return v1

    :cond_1
    move v0, v2

    .line 720
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 727
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 746
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 729
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 732
    :pswitch_1
    iget v1, p0, Lcom/android/settings_ex/ApnEditor;->mSourceType:I

    if-nez v1, :cond_1

    .line 733
    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 734
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 739
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 740
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 742
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 727
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 505
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 507
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 509
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 510
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 511
    sget-object v1, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy set PhoneStateListener.LISTEN_NONE!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 514
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x0

    .line 656
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 657
    .local v3, key:Ljava/lang/String;
    const-string v6, "auth_type"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 659
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 660
    .local v2, index:I
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 662
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f070028

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 663
    .local v5, values:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v8, v5, v2

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    .end local v2           #index:I
    .end local v5           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 664
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move v6, v7

    .line 665
    goto :goto_1

    .line 667
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v6, "apn_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, p2

    .line 668
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 669
    .local v4, protocol:Ljava/lang/String;
    if-nez v4, :cond_2

    move v6, v7

    .line 670
    goto :goto_1

    .line 672
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 673
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 674
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_3
    const-string v6, "apn_roaming_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, p2

    .line 675
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 676
    .restart local v4       #protocol:Ljava/lang/String;
    if-nez v4, :cond_4

    move v6, v7

    .line 677
    goto :goto_1

    .line 679
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 681
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_5
    const-string v6, "bearer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, p2

    .line 682
    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settings_ex/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, bearer:Ljava/lang/String;
    if-nez v0, :cond_6

    move v6, v7

    .line 684
    goto :goto_1

    .line 686
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 687
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 688
    .end local v0           #bearer:Ljava/lang/String;
    .restart local p2
    :cond_7
    const-string v6, "apn_type_list"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 689
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;

    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;

    invoke-virtual {v7}, Lcom/android/settings_ex/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 943
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 945
    if-nez p1, :cond_0

    .line 946
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 949
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 952
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 467
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 468
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 471
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings_ex/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 474
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 475
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnEditor;->mIsCallStateIdle:Z

    .line 476
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 478
    invoke-static {p0}, Lcom/android/settings_ex/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/ApnEditor;->mAirplaneModeEnabled:Z

    .line 480
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ApnEditor;->mDualSimMode:I

    .line 482
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->isMMSNotTransaction()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/ApnEditor;->mNotInMmsTransaction:Z

    .line 483
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->setScreenEnabledStatus()V

    .line 485
    const-string v1, "tethering"

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mExt:Lcom/android/settings_ex/ext/IApnEditorExt;

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;

    invoke-interface {v1, v2}, Lcom/android/settings_ex/ext/IApnEditorExt;->setPreferenceState(Landroid/preference/DialogPreference;)V

    .line 488
    :cond_0
    return-void

    .line 475
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 766
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 767
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 771
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 775
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 990
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 991
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 992
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 993
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    const-string v1, "carrier_enabled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 995
    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 997
    :cond_2
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
