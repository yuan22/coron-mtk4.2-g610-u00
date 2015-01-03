.class public Lcom/android/settings_ex/ApnSettings;
.super Landroid/preference/PreferenceActivity;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ApnSettings$5;,
        Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

.field public static final APN_TYPE:Ljava/lang/String; = "apn_type"

.field protected static final DEFAULTAPN_URI:Landroid/net/Uri; = null

.field private static final DEFAULTAPN_URI_GEMINI_SIM1:Landroid/net/Uri; = null

.field private static final DEFAULTAPN_URI_GEMINI_SIM2:Landroid/net/Uri; = null

.field private static final DIALOG_APN_DISABLED:I = 0x7d0

.field private static final DIALOG_RESTORE_DEFAULTAPN:I = 0x3e9

.field private static final EVENT_RESTORE_DEFAULTAPN_COMPLETE:I = 0x2

.field private static final EVENT_RESTORE_DEFAULTAPN_START:I = 0x1

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x5

.field public static final EXTRA_POSITION:Ljava/lang/String; = "position"

.field private static final ID_INDEX:I = 0x0

.field protected static final MENU_NEW:I = 0x1

.field private static final MENU_RESTORE:I = 0x2

.field private static final NAME_INDEX:I = 0x1

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field private static final PREFERAPN_URI_GEMINI_SIM1:Landroid/net/Uri; = null

.field private static final PREFERAPN_URI_GEMINI_SIM2:Landroid/net/Uri; = null

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field private static final PREFERRED_APN_URI_GEMINI_SIM1:Ljava/lang/String; = "content://telephony/carriers_sim1/preferapn"

.field private static final PREFERRED_APN_URI_GEMINI_SIM2:Ljava/lang/String; = "content://telephony/carriers_sim2/preferapn"

.field public static final RCSE_TYPE:Ljava/lang/String; = "rcse"

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://telephony/carriers/restore"

.field private static final RESTORE_CARRIERS_URI_GEMINI_SIM1:Ljava/lang/String; = "content://telephony/carriers_sim1/restore"

.field private static final RESTORE_CARRIERS_URI_GEMINI_SIM2:Ljava/lang/String; = "content://telephony/carriers_sim2/restore"

.field public static final SIM_CARD_1:I = 0x0

.field public static final SIM_CARD_2:I = 0x1

.field public static final SIM_CARD_SINGLE:I = 0x2

.field public static final SIM_CARD_UNDEFINED:I = -0x1

.field private static final SOURCE_TYPE_INDEX:I = 0x4

.field static final TAG:Ljava/lang/String; = "ApnSettings"

.field public static final TETHER_TYPE:Ljava/lang/String; = "tethering"

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final TYPES_INDEX:I = 0x3

.field private static sNotInMmsTransation:Z


# instance fields
.field protected mAirplaneModeEnabled:Z

.field protected mDefaultApnUri:Landroid/net/Uri;

.field private mDualSimMode:I

.field private mExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

.field private mIMSI:Ljava/lang/String;

.field protected mIsCallStateIdle:Z

.field private mIsTetehred:Z

.field protected mIsTetherApn:Z

.field private mListener:Lcom/android/settings_ex/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field protected mNumeric:Ljava/lang/String;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPnn:Ljava/lang/String;

.field private mRcseExt:Lcom/android/settings_ex/ext/IRcseOnlyApnExtension;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

.field protected mRestoreCarrierUri:Landroid/net/Uri;

.field protected mRestoreDefaultApnMode:Z

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field protected mSelectableApnCount:I

.field protected mSelectedKey:Ljava/lang/String;

.field protected mSimId:I

.field private mSpn:Ljava/lang/String;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 110
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .line 113
    const-string v0, "content://telephony/carriers_sim1/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnSettings;->DEFAULTAPN_URI_GEMINI_SIM1:Landroid/net/Uri;

    .line 114
    const-string v0, "content://telephony/carriers_sim2/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnSettings;->DEFAULTAPN_URI_GEMINI_SIM2:Landroid/net/Uri;

    .line 116
    const-string v0, "content://telephony/carriers_sim1/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI_GEMINI_SIM1:Landroid/net/Uri;

    .line 117
    const-string v0, "content://telephony/carriers_sim2/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI_GEMINI_SIM2:Landroid/net/Uri;

    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/ApnSettings;->sNotInMmsTransation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mIsCallStateIdle:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnSettings;->mAirplaneModeEnabled:Z

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/ApnSettings;->mDualSimMode:I

    .line 125
    iput v1, p0, Lcom/android/settings_ex/ApnSettings;->mSelectableApnCount:I

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mSpn:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mIMSI:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mPnn:Ljava/lang/String;

    .line 155
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnSettings;->mIsTetherApn:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnSettings;->mIsTetehred:Z

    .line 160
    new-instance v0, Lcom/android/settings_ex/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ApnSettings$1;-><init>(Lcom/android/settings_ex/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mListener:Lcom/android/settings_ex/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    .line 168
    new-instance v0, Lcom/android/settings_ex/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ApnSettings$2;-><init>(Lcom/android/settings_ex/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 244
    new-instance v0, Lcom/android/settings_ex/ApnSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ApnSettings$3;-><init>(Lcom/android/settings_ex/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 788
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ApnSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ApnSettings;->fillList(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/settings_ex/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    sput-boolean p0, Lcom/android/settings_ex/ApnSettings;->sNotInMmsTransation:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ApnSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/settings_ex/ApnSettings;->mDualSimMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/ApnSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/settings_ex/ApnSettings;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mIMSI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/ApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mPnn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->initSimState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->setSpn()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->setIMSI()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->setPnn()V

    return-void
.end method

.method private fillList(I)V
    .locals 25
    .parameter "simId"

    .prologue
    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getFillListQuery()Ljava/lang/String;

    move-result-object v5

    .line 547
    .local v5, where:Ljava/lang/String;
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList where: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 550
    const-string v2, "ApnSettings"

    const-string v3, "fillList, mUri null !"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 655
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/ApnSettings;->mUri:Landroid/net/Uri;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "apn"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "type"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "sourcetype"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 557
    .local v11, cursor:Landroid/database/Cursor;
    const-string v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 558
    .local v9, apnList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 560
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v17, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    const/16 v16, 0x0

    .line 564
    .local v16, keySetChecked:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 565
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList : mSelectedKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 569
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_b

    .line 570
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 572
    .local v24, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ApnSettings;->mIsTetherApn:Z

    if-eqz v2, :cond_1

    const-string v2, "tethering"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 573
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 577
    :cond_1
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 578
    .local v18, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 579
    .local v8, apn:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 581
    .local v15, key:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 583
    .local v23, sourcetype:I
    const-string v2, "cmmail"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v23, :cond_2

    .line 584
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 587
    :cond_2
    const-string v2, "rcse"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mRcseExt:Lcom/android/settings_ex/ext/IRcseOnlyApnExtension;

    if-eqz v2, :cond_4

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mRcseExt:Lcom/android/settings_ex/ext/IRcseOnlyApnExtension;

    invoke-interface {v2}, Lcom/android/settings_ex/ext/IRcseOnlyApnExtension;->isRcseOnlyApnEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 589
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 590
    const-string v2, "ApnSettings"

    const-string v3, "Vodafone not matched"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 593
    :cond_3
    const-string v2, "ApnSettings"

    const-string v3, "Vodafone matched"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_4
    new-instance v19, Lcom/android/settings_ex/ApnPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 599
    .local v19, pref:Lcom/android/settings_ex/ApnPreference;
    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ApnPreference;->setSimId(I)V

    .line 600
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 601
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 602
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 603
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 604
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ApnPreference;->setSourceType(I)V

    .line 605
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/ApnSettings;->mNumeric:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v2, v0, v8, v3}, Lcom/android/settings_ex/ext/ISettingsMiscExt;->isAllowEditPresetApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 608
    .local v14, isEditable:Z
    if-nez v23, :cond_5

    if-eqz v14, :cond_7

    :cond_5
    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ApnPreference;->setApnEditable(Z)V

    .line 611
    const/16 v21, 0x1

    .line 612
    .local v21, selectable:Z
    const-string v2, "tethering"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 613
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/ApnSettings;->mIsTetherApn:Z

    move/from16 v21, v0

    .line 617
    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ApnPreference;->setSelectable(Z)V

    .line 619
    if-eqz v21, :cond_a

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 621
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/ApnPreference;->setChecked()V

    .line 622
    const/16 v16, 0x1

    .line 623
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_6
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 626
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " added!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 608
    .end local v21           #selectable:Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 615
    .restart local v21       #selectable:Z
    :cond_8
    const-string v2, "mms"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v21, 0x1

    :goto_5
    goto :goto_3

    :cond_9
    const/16 v21, 0x0

    goto :goto_5

    .line 628
    :cond_a
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 632
    .end local v8           #apn:Ljava/lang/String;
    .end local v14           #isEditable:Z
    .end local v15           #key:Ljava/lang/String;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #pref:Lcom/android/settings_ex/ApnPreference;
    .end local v21           #selectable:Z
    .end local v23           #sourcetype:I
    .end local v24           #type:Ljava/lang/String;
    :cond_b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 634
    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/ApnSettings;->mSelectableApnCount:I

    .line 636
    if-nez v16, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/ApnSettings;->mSelectableApnCount:I

    if-lez v2, :cond_d

    .line 637
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/ApnSettings;->mSelectableApnCount:I

    new-array v0, v2, [I

    move-object/from16 v22, v0

    .line 638
    .local v22, sourceTypeArray:[I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/ApnSettings;->mSelectableApnCount:I

    if-ge v12, v2, :cond_c

    .line 639
    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/ApnPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/ApnPreference;->getSourceType()I

    move-result v2

    aput v2, v22, v12

    .line 638
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 641
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/ApnSettings;->mSelectableApnCount:I

    move-object/from16 v0, v22

    invoke-interface {v2, v9, v3, v0}, Lcom/android/settings_ex/ext/ISettingsMiscExt;->getApnPref(Landroid/preference/PreferenceGroup;I[I)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/ApnPreference;

    .line 642
    .local v10, apnPref:Lcom/android/settings_ex/ApnPreference;
    if-eqz v10, :cond_d

    .line 643
    invoke-virtual {v10}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v10}, Lcom/android/settings_ex/ApnPreference;->setChecked()V

    .line 645
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key does not match.Set key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .end local v10           #apnPref:Lcom/android/settings_ex/ApnPreference;
    .end local v12           #i:I
    .end local v22           #sourceTypeArray:[I
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ApnSettings;->mIsTetherApn:Z

    if-nez v2, :cond_e

    .line 650
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/preference/Preference;

    .line 651
    .local v20, preference:Landroid/preference/Preference;
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_7

    .line 654
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v20           #preference:Landroid/preference/Preference;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getScreenEnableState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 255
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 257
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 259
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 732
    const/4 v7, 0x0

    .line 734
    .local v7, key:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 736
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 737
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 738
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 740
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 741
    return-object v7
.end method

.method private initSimState()V
    .locals 6

    .prologue
    .line 323
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 324
    .local v1, it:Landroid/content/Intent;
    const-string v3, "simId"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/ApnSettings;->mSimId:I

    .line 325
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 326
    iget v3, p0, Lcom/android/settings_ex/ApnSettings;->mSimId:I

    invoke-static {p0, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 327
    .local v2, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_0

    .line 328
    iget-object v3, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 331
    .end local v2           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GEMINI_SIM_ID_KEY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/ApnSettings;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget v3, p0, Lcom/android/settings_ex/ApnSettings;->mSimId:I

    packed-switch v3, :pswitch_data_0

    .line 357
    const-string v3, "ApnSettings"

    const-string v4, "Incorrect sim id "

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 360
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.phone"

    const-string v4, "com.mediatek.settings.MultipleSimActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v3, "TARGET_CLASS"

    const-string v4, "com.android.settings_ex.ApnSettings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 364
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 368
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNumeric "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/ApnSettings;->mNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/ApnSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void

    .line 338
    :pswitch_0
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mUri:Landroid/net/Uri;

    .line 339
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mNumeric:Ljava/lang/String;

    .line 340
    sget-object v3, Lcom/android/settings_ex/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mDefaultApnUri:Landroid/net/Uri;

    .line 341
    sget-object v3, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    goto :goto_0

    .line 344
    :pswitch_1
    sget-object v3, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mUri:Landroid/net/Uri;

    .line 345
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mNumeric:Ljava/lang/String;

    .line 346
    sget-object v3, Lcom/android/settings_ex/ApnSettings;->DEFAULTAPN_URI_GEMINI_SIM1:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mDefaultApnUri:Landroid/net/Uri;

    .line 347
    sget-object v3, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI_GEMINI_SIM1:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    goto :goto_0

    .line 350
    :pswitch_2
    sget-object v3, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mUri:Landroid/net/Uri;

    .line 351
    const-string v3, "gsm.sim.operator.numeric.2"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mNumeric:Ljava/lang/String;

    .line 352
    sget-object v3, Lcom/android/settings_ex/ApnSettings;->DEFAULTAPN_URI_GEMINI_SIM2:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mDefaultApnUri:Landroid/net/Uri;

    .line 353
    sget-object v3, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI_GEMINI_SIM2:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private isMMSNotTransaction()Z
    .locals 7

    .prologue
    .line 390
    const/4 v1, 0x1

    .line 391
    .local v1, isMMSNotProcess:Z
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 392
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 393
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 394
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 395
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 396
    .local v3, state:Landroid/net/NetworkInfo$State;
    const-string v4, "ApnSettings"

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

    .line 397
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    .line 401
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #state:Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_0
    return v1

    .line 397
    .restart local v2       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v3       #state:Landroid/net/NetworkInfo$State;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 745
    const-string v0, "ApnSettings"

    const-string v1, "restore Default Apn."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 747
    iput-boolean v3, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 749
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 750
    new-instance v0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings_ex/ApnSettings;Lcom/android/settings_ex/ApnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 755
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 757
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 758
    new-instance v0, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings_ex/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 764
    return v3
.end method

.method private setIMSI()V
    .locals 5

    .prologue
    .line 523
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 525
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    iget v2, p0, Lcom/android/settings_ex/ApnSettings;->mSimId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForImsiGemini(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mIMSI:Ljava/lang/String;

    .line 529
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings;->mIMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings;->mIMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ApnSettings"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPnn()V
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings_ex/ApnSettings;->mSimId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isOperatorMvnoForEfPnnGemini(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mPnn:Ljava/lang/String;

    .line 542
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pnn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mPnn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void
.end method

.method private setSpn()V
    .locals 5

    .prologue
    .line 509
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 511
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    iget v2, p0, Lcom/android/settings_ex/ApnSettings;->mSimId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getSpNameInEfSpnGemini(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mSpn:Ljava/lang/String;

    .line 515
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings;->mSpn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ApnSettings"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected addMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 667
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b05b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 670
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b05bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 673
    return-void
.end method

.method protected addNewApn()V
    .locals 3

    .prologue
    .line 705
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 706
    .local v0, it:Landroid/content/Intent;
    const-string v1, "simId"

    iget v2, p0, Lcom/android/settings_ex/ApnSettings;->mSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 708
    return-void
.end method

.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method protected getFillListQuery()Ljava/lang/String;
    .locals 12

    .prologue
    .line 429
    const-string v0, ""

    .line 431
    .local v0, addNotCMDM:Ljava/lang/String;
    const/4 v5, 0x0

    .line 433
    .local v5, isMVNO:Z
    :try_start_0
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 436
    .local v8, telephony:Lcom/android/internal/telephony/ITelephony;
    iget v9, p0, Lcom/android/settings_ex/ApnSettings;->mSimId:I

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/ITelephony;->isIccCardProviderAsMvnoGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 444
    .end local v8           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    const/4 v2, 0x0

    .line 445
    .local v2, flagImsi:Z
    const/4 v4, 0x0

    .line 446
    .local v4, flagSpn:Z
    const/4 v3, 0x0

    .line 447
    .local v3, flagPnn:Z
    const-string v7, ""

    .line 449
    .local v7, sqlStr:Ljava/lang/String;
    const-string v9, "ApnSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isMVNO ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    if-eqz v5, :cond_6

    .line 452
    iget-object v9, p0, Lcom/android/settings_ex/ApnSettings;->mIMSI:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings_ex/ApnSettings;->mIMSI:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 453
    const/4 v2, 0x1

    .line 454
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " imsi=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/ApnSettings;->mIMSI:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 456
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/ApnSettings;->mSpn:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings_ex/ApnSettings;->mSpn:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 457
    const/4 v4, 0x1

    .line 458
    if-eqz v2, :cond_4

    .line 459
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " or spn=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/ApnSettings;->mSpn:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 465
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/android/settings_ex/ApnSettings;->mPnn:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/settings_ex/ApnSettings;->mPnn:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 466
    const/4 v3, 0x1

    .line 467
    if-nez v2, :cond_2

    if-eqz v4, :cond_5

    .line 468
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " or pnn=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/ApnSettings;->mPnn:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 479
    :cond_3
    :goto_2
    const-string v0, "and (name != \"CMDM\")"

    .line 480
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "numeric=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/ApnSettings;->mNumeric:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" and ( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 482
    .local v6, result:Ljava/lang/String;
    const-string v9, "ApnSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getFillListQuery result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-object v6

    .line 441
    .end local v2           #flagImsi:Z
    .end local v3           #flagPnn:Z
    .end local v4           #flagSpn:Z
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #sqlStr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 442
    .local v1, e:Landroid/os/RemoteException;
    const-string v9, "ApnSettings"

    const-string v10, "RemoteException"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 461
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #flagImsi:Z
    .restart local v3       #flagPnn:Z
    .restart local v4       #flagSpn:Z
    .restart local v7       #sqlStr:Ljava/lang/String;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " spn=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/ApnSettings;->mSpn:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 470
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pnn=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/ApnSettings;->mPnn:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 475
    :cond_6
    const-string v7, "(spn is NULL or spn=\"\") and (imsi is NULL or imsi=\"\") and (pnn is NULL or pnn=\"\") "

    goto/16 :goto_2
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 300
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v1, "com.android.mms.transaction.START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v1, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    return-object v0
.end method

.method protected getScreenEnableState()Z
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 489
    const/4 v0, 0x1

    .line 490
    .local v0, simReady:Z
    iget v3, p0, Lcom/android/settings_ex/ApnSettings;->mSimId:I

    packed-switch v3, :pswitch_data_0

    .line 503
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/android/settings_ex/ApnSettings;->mIsCallStateIdle:Z

    .line 504
    sget-boolean v3, Lcom/android/settings_ex/ApnSettings;->sNotInMmsTransation:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/settings_ex/ApnSettings;->mIsCallStateIdle:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/settings_ex/ApnSettings;->mAirplaneModeEnabled:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    :goto_2
    return v1

    .line 492
    :pswitch_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    move v0, v1

    .line 493
    :goto_3
    goto :goto_0

    :cond_0
    move v0, v2

    .line 492
    goto :goto_3

    .line 495
    :pswitch_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v3

    if-ne v4, v3, :cond_1

    move v0, v1

    .line 496
    :goto_4
    goto :goto_0

    :cond_1
    move v0, v2

    .line 495
    goto :goto_4

    .line 498
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v4, v3, :cond_2

    move v0, v1

    .line 499
    :goto_5
    goto :goto_0

    :cond_2
    move v0, v2

    .line 498
    goto :goto_5

    :cond_3
    move v3, v2

    .line 503
    goto :goto_1

    :cond_4
    move v1, v2

    .line 504
    goto :goto_2

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 265
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 267
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 268
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 270
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/android/settings_ex/ext/ISettingsMiscExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

    .line 271
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getRcseApnPlugin(Landroid/content/Context;)Lcom/android/settings_ex/ext/IRcseOnlyApnExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRcseExt:Lcom/android/settings_ex/ext/IRcseOnlyApnExtension;

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRcseExt:Lcom/android/settings_ex/ext/IRcseOnlyApnExtension;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRcseExt:Lcom/android/settings_ex/ext/IRcseOnlyApnExtension;

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mListener:Lcom/android/settings_ex/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    invoke-interface {v0, v1}, Lcom/android/settings_ex/ext/IRcseOnlyApnExtension;->addRcseOnlyApnStateChanged(Lcom/android/settings_ex/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;)V

    .line 277
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->initSimState()V

    .line 279
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 280
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 281
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 282
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 284
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->setSpn()V

    .line 285
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->setIMSI()V

    .line 286
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->setPnn()V

    .line 288
    return-void

    .line 275
    :cond_0
    const-string v0, "ApnSettings"

    const-string v1, "mApnPlugin is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 813
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 814
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 815
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b05be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 816
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 830
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    .line 819
    :cond_0
    const/16 v1, 0x7d0

    if-ne p1, v1, :cond_1

    .line 820
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0091

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0092

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/ApnSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/ApnSettings$4;-><init>(Lcom/android/settings_ex/ApnSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 830
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 659
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 660
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/ApnSettings;->addMenu(Landroid/view/Menu;)V

    .line 661
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 412
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 414
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 415
    const-string v0, "ApnSettings"

    const-string v1, "onDestroy set PhoneStateListener.LISTEN_NONE!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRcseExt:Lcom/android/settings_ex/ext/IRcseOnlyApnExtension;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRcseExt:Lcom/android/settings_ex/ext/IRcseOnlyApnExtension;

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mListener:Lcom/android/settings_ex/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    invoke-interface {v0, v1}, Lcom/android/settings_ex/ext/IRcseOnlyApnExtension;->removeRcseOnlyApnStateChanged(Lcom/android/settings_ex/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;)V

    .line 423
    :cond_1
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 677
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 679
    if-eqz p2, :cond_0

    .line 680
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getScreenEnableState()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 682
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 294
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->initSimState()V

    .line 295
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 688
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 699
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 690
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 694
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 405
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 407
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 408
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 710
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 714
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 717
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 835
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 836
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 838
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 377
    invoke-static {p0}, Lcom/android/settings_ex/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mAirplaneModeEnabled:Z

    .line 378
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/ApnSettings;->mDualSimMode:I

    .line 380
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->isMMSNotTransaction()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/ApnSettings;->sNotInMmsTransation:Z

    .line 381
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mAirplaneModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/ApnSettings;->mDualSimMode:I

    if-nez v0, :cond_1

    .line 382
    :cond_0
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 385
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_2

    .line 386
    iget v0, p0, Lcom/android/settings_ex/ApnSettings;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApnSettings;->fillList(I)V

    .line 388
    :cond_2
    return-void
.end method

.method protected setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 723
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 724
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 726
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 727
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 729
    return-void
.end method
