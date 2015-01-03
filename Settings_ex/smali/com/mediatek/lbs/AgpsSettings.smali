.class public Lcom/mediatek/lbs/AgpsSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AgpsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ABOUT_AGPS_DIALOG_ID:I = 0x0

.field private static final DISABLE_ON_REBOOT:Ljava/lang/String; = "disable_agps_on_reboot"

.field private static final DM_AGPS_ADDR:Ljava/lang/String; = "addr"

.field private static final DM_AGPS_PORT:Ljava/lang/String; = "port"

.field private static final DM_AGPS_PROFILE:Ljava/lang/String; = "dm_agps_profile"

.field private static final DM_AGPS_PROVIDERIP:Ljava/lang/String; = "providerIP"

.field private static final GEMINI_PHONE:Z = true

.field private static final KEY_ABOUT_AGPS:Ljava/lang/String; = "about_agps"

.field public static final KEY_AGPS_SHARE:Ljava/lang/String; = "agps_share"

.field private static final KEY_MOBILE_DATACONN:Ljava/lang/String; = "mobile_dataConn"

.field private static final KEY_OPERATOR_CODE:Ljava/lang/String; = "saved_operator_code"

.field private static final KEY_PORT:Ljava/lang/String; = "port"

.field private static final KEY_SELECT_PROFILE:Ljava/lang/String; = "select_profile"

.field private static final KEY_SLP_ADDRESS:Ljava/lang/String; = "slp_address"

.field private static final KEY_TLS:Ljava/lang/String; = "tls"

.field private static final NETWORK_INITIATE:Ljava/lang/String; = "Network_Initiate"

.field private static final NETWORK_USED:Ljava/lang/String; = "Network_Used"

.field private static final ROAMING_ALERT_DIALOG_ID:I = 0x1

.field public static final SIM_STATUS:Ljava/lang/String; = "sim_status"

.field private static final XLOGTAG:Ljava/lang/String; = "Settings/Agps"


# instance fields
.field private mAboutPref:Landroid/preference/Preference;

.field private mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

.field private mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mDataConnItemSummary:Ljava/lang/String;

.field private mDataConnItemTitle:Ljava/lang/String;

.field private mDataConnReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

.field private mDisableOnRebootCB:Landroid/preference/CheckBoxPreference;

.field private mNetworkInitiateCB:Landroid/preference/CheckBoxPreference;

.field private mNetworkPref:Landroid/preference/Preference;

.field private mNetworkUsedListPref:Landroid/preference/ListPreference;

.field private mOperatorCode:Ljava/lang/String;

.field private mPortET:Landroid/preference/EditTextPreference;

.field private mSLPAddressET:Landroid/preference/EditTextPreference;

.field private mSelectProfileListPref:Landroid/preference/ListPreference;

.field mSharePreference:Landroid/content/SharedPreferences;

.field private mTLSCB:Landroid/preference/CheckBoxPreference;

.field private mTelMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mWifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 130
    new-instance v0, Lcom/mediatek/lbs/AgpsSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/AgpsSettings$1;-><init>(Lcom/mediatek/lbs/AgpsSettings;)V

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mDataConnReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/lbs/AgpsSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/AgpsSettings;->updateDataConnStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/lbs/AgpsSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/AgpsSettings;->initSlpProfileList()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/lbs/AgpsSettings;)Lcom/mediatek/common/agps/MtkAgpsManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/lbs/AgpsSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/lbs/AgpsSettings;Lcom/mediatek/common/agps/MtkAgpsProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/AgpsSettings;->updateSlpProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/lbs/AgpsSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/AgpsSettings;->updatePage()V

    return-void
.end method

.method private getMobileConnectionInfo(ZI)Z
    .locals 6
    .parameter "isGemini"
    .parameter "simid"

    .prologue
    const v5, 0x7f0b006c

    const v4, 0x7f0b006b

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 285
    if-eqz p1, :cond_0

    .line 286
    iget-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mTelMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v2, p2}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mOperatorCode:Ljava/lang/String;

    .line 287
    iget-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mTelMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v2, p2}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDataState(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 288
    new-array v2, v0, [Ljava/lang/Object;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v5, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mDataConnItemTitle:Ljava/lang/String;

    .line 289
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mDataConnItemSummary:Ljava/lang/String;

    .line 300
    :goto_0
    return v0

    .line 293
    :cond_0
    iget-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mOperatorCode:Ljava/lang/String;

    .line 294
    iget-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 295
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v1

    invoke-virtual {p0, v5, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mDataConnItemTitle:Ljava/lang/String;

    .line 296
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mDataConnItemSummary:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 300
    goto :goto_0
.end method

.method private initPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 322
    const-string v2, "disable_agps_on_reboot"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mDisableOnRebootCB:Landroid/preference/CheckBoxPreference;

    .line 323
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "agps_disable"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 324
    .local v1, prefs:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 325
    .local v0, disableAfterReboot:Z
    const-string v2, "changed"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const-string v2, "status"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mDisableOnRebootCB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 330
    const-string v2, "Network_Initiate"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mNetworkInitiateCB:Landroid/preference/CheckBoxPreference;

    .line 332
    const-string v2, "Network_Used"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mNetworkUsedListPref:Landroid/preference/ListPreference;

    .line 333
    iget-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mNetworkUsedListPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 336
    const-string v2, "slp_address"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mSLPAddressET:Landroid/preference/EditTextPreference;

    .line 337
    iget-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mSLPAddressET:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 340
    const-string v2, "port"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mPortET:Landroid/preference/EditTextPreference;

    .line 341
    iget-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mPortET:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 344
    const-string v2, "tls"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mTLSCB:Landroid/preference/CheckBoxPreference;

    .line 345
    iget-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mTLSCB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 348
    const-string v2, "mobile_dataConn"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mNetworkPref:Landroid/preference/Preference;

    .line 351
    const-string v2, "about_agps"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mAboutPref:Landroid/preference/Preference;

    .line 354
    const-string v2, "select_profile"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mSelectProfileListPref:Landroid/preference/ListPreference;

    .line 355
    iget-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mSelectProfileListPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 357
    return-void
.end method

.method private initSlpProfileList()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 360
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "omacp_profile"

    invoke-virtual {v10, v11, v13}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 361
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v10, "changed"

    invoke-interface {v5, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 362
    new-instance v6, Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-direct {v6}, Lcom/mediatek/common/agps/MtkAgpsProfile;-><init>()V

    .line 363
    .local v6, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    const-string v10, "name"

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    .line 364
    const-string v10, "addr"

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 365
    const-string v10, "backupSlpNameVar"

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->backupSlpNameVar:Ljava/lang/String;

    .line 366
    const-string v10, "port"

    invoke-interface {v5, v10, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    .line 367
    const-string v10, "tls"

    invoke-interface {v5, v10, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    .line 368
    const-string v10, "showType"

    invoke-interface {v5, v10, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I

    .line 369
    const-string v10, "code"

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    .line 370
    const-string v10, "addrType"

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->addrType:Ljava/lang/String;

    .line 371
    const-string v10, "defaultApn"

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->defaultApn:Ljava/lang/String;

    .line 372
    const-string v10, "providerId"

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    .line 373
    iget-object v10, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v10, v6}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->insertProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    .line 376
    .end local v6           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "opeator code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/lbs/AgpsSettings;->mOperatorCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v0, availableProfiles:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/agps/MtkAgpsProfile;>;"
    iget-object v10, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v10}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAllProfile()Ljava/util/List;

    move-result-object v7

    .line 380
    .local v7, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/agps/MtkAgpsProfile;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 382
    .restart local v6       #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    const-string v10, "46000"

    iget-object v11, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "46002"

    iget-object v11, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "46007"

    iget-object v11, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 385
    :cond_2
    iget-object v10, p0, Lcom/mediatek/lbs/AgpsSettings;->mSharePreference:Landroid/content/SharedPreferences;

    const-string v11, "addr"

    iget-object v12, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 386
    iget-object v10, p0, Lcom/mediatek/lbs/AgpsSettings;->mSharePreference:Landroid/content/SharedPreferences;

    const-string v11, "port"

    iget v12, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    .line 387
    iget-object v10, p0, Lcom/mediatek/lbs/AgpsSettings;->mSharePreference:Landroid/content/SharedPreferences;

    const-string v11, "providerIP"

    iget-object v12, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    .line 390
    :cond_3
    iget-object v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    iget-object v11, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v11}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getDefaultProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v11

    iget-object v11, v11, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 391
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "default profile code"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 392
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    :cond_4
    iget v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I

    if-nez v10, :cond_5

    .line 394
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showType == 0 profile code"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 395
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 396
    :cond_5
    iget v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    iget-object v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    iget-object v11, p0, Lcom/mediatek/lbs/AgpsSettings;->mOperatorCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 397
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showType == 2 profile code"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 398
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 403
    .end local v6           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-array v1, v10, [Ljava/lang/String;

    .line 404
    .local v1, entries:[Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-array v9, v10, [Ljava/lang/String;

    .line 405
    .local v9, values:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 406
    .local v4, num:I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 407
    .restart local v6       #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    iget-object v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    aput-object v10, v1, v4

    .line 408
    iget-object v10, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    aput-object v10, v9, v4

    .line 409
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 411
    .end local v6           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_7
    iget-object v10, p0, Lcom/mediatek/lbs/AgpsSettings;->mSelectProfileListPref:Landroid/preference/ListPreference;

    invoke-virtual {v10, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 412
    iget-object v10, p0, Lcom/mediatek/lbs/AgpsSettings;->mSelectProfileListPref:Landroid/preference/ListPreference;

    invoke-virtual {v10, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 414
    const/4 v2, 0x0

    .line 415
    .local v2, flag:Z
    iget-object v10, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v10}, Lcom/mediatek/common/agps/MtkAgpsManager;->getProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v8

    .line 416
    .local v8, selectProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "select profile code"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 417
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 418
    .restart local v6       #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    iget-object v10, v8, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    iget-object v11, v6, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 419
    const/4 v2, 0x1

    .line 424
    .end local v6           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_9
    if-nez v2, :cond_a

    .line 425
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set current profile code"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/lbs/AgpsSettings;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v11, v11, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 426
    iget-object v10, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    iget-object v11, p0, Lcom/mediatek/lbs/AgpsSettings;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-interface {v10, v11}, Lcom/mediatek/common/agps/MtkAgpsManager;->setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    .line 429
    :cond_a
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 518
    const-string v0, "Settings/Agps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AGPS Setting] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void
.end method

.method private updateDataConnStatus()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 232
    const/4 v2, -0x1

    .line 233
    .local v2, sim1Satus:I
    const/4 v3, -0x1

    .line 235
    .local v3, sim2Satus:I
    const v4, 0x7f0b0068

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/lbs/AgpsSettings;->mDataConnItemTitle:Ljava/lang/String;

    .line 236
    const v4, 0x7f0b0069

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/lbs/AgpsSettings;->mDataConnItemSummary:Ljava/lang/String;

    .line 238
    const/4 v1, -0x1

    .line 239
    .local v1, networkType:I
    iget-object v4, p0, Lcom/mediatek/lbs/AgpsSettings;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 240
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 245
    :goto_0
    const-string v4, "updateDataConnStatus"

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 246
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/lbs/AgpsSettings;->mOperatorCode:Ljava/lang/String;

    .line 247
    if-nez v1, :cond_4

    .line 251
    iget-object v4, p0, Lcom/mediatek/lbs/AgpsSettings;->mTelMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v4, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v2

    .line 252
    iget-object v4, p0, Lcom/mediatek/lbs/AgpsSettings;->mTelMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v4, v6}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v3

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim1 status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim2 status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 257
    if-ne v7, v2, :cond_2

    if-eq v7, v3, :cond_2

    .line 258
    invoke-direct {p0, v6, v8}, Lcom/mediatek/lbs/AgpsSettings;->getMobileConnectionInfo(ZI)Z

    .line 279
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/mediatek/lbs/AgpsSettings;->mNetworkPref:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/mediatek/lbs/AgpsSettings;->mDataConnItemTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v4, p0, Lcom/mediatek/lbs/AgpsSettings;->mNetworkPref:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/mediatek/lbs/AgpsSettings;->mDataConnItemSummary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    return-void

    .line 243
    :cond_1
    const-string v4, "WARNING: no active network"

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_2
    if-eq v7, v2, :cond_3

    if-ne v7, v3, :cond_3

    .line 260
    invoke-direct {p0, v6, v6}, Lcom/mediatek/lbs/AgpsSettings;->getMobileConnectionInfo(ZI)Z

    goto :goto_1

    .line 261
    :cond_3
    if-ne v7, v2, :cond_0

    if-ne v7, v3, :cond_0

    .line 262
    invoke-direct {p0, v6, v8}, Lcom/mediatek/lbs/AgpsSettings;->getMobileConnectionInfo(ZI)Z

    move-result v4

    if-nez v4, :cond_0

    .line 263
    invoke-direct {p0, v6, v6}, Lcom/mediatek/lbs/AgpsSettings;->getMobileConnectionInfo(ZI)Z

    goto :goto_1

    .line 273
    :cond_4
    if-ne v1, v6, :cond_0

    iget-object v4, p0, Lcom/mediatek/lbs/AgpsSettings;->mWifiMgr:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    const v4, 0x7f0b006a

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/lbs/AgpsSettings;->mDataConnItemTitle:Ljava/lang/String;

    .line 276
    const v4, 0x7f0b006b

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/lbs/AgpsSettings;->mDataConnItemSummary:Ljava/lang/String;

    goto :goto_1
.end method

.method private updatePage()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->getRoamingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mNetworkUsedListPref:Landroid/preference/ListPreference;

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 218
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mNetworkUsedListPref:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 223
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/MtkAgpsManager;->getProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->getProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/AgpsSettings;->updateSlpProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    .line 225
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mNetworkInitiateCB:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/MtkAgpsManager;->getNiStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 226
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mNetworkUsedListPref:Landroid/preference/ListPreference;

    const v1, 0x7f0b0067

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 221
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mNetworkUsedListPref:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0
.end method

.method private updateSlpProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V
    .locals 3
    .parameter "selectProfile"

    .prologue
    const/4 v0, 0x1

    .line 432
    iget-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mSelectProfileListPref:Landroid/preference/ListPreference;

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mSelectProfileListPref:Landroid/preference/ListPreference;

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mSLPAddressET:Landroid/preference/EditTextPreference;

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mSLPAddressET:Landroid/preference/EditTextPreference;

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mPortET:Landroid/preference/EditTextPreference;

    iget v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mPortET:Landroid/preference/EditTextPreference;

    iget v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mTLSCB:Landroid/preference/CheckBoxPreference;

    iget v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    if-ne v0, v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 442
    return-void

    .line 441
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const-string v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 150
    new-instance v0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-direct {v0}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    .line 151
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    const-string v1, "/etc/agps_profiles_conf.xml"

    invoke-virtual {v0, v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->updateAgpsProfile(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v0}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getDefaultProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 154
    const-string v0, "mtk-agps"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/agps/MtkAgpsManager;

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    .line 155
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 157
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mWifiMgr:Landroid/net/wifi/WifiManager;

    .line 159
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 160
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mTelMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 162
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "dm_agps_profile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mSharePreference:Landroid/content/SharedPreferences;

    .line 165
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mWifiMgr:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsSettings;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: getSystemService failed mAgpsMgr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mConnMgr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiMgr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTelephonyMgr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsSettings;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_1
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 172
    invoke-direct {p0}, Lcom/mediatek/lbs/AgpsSettings;->initPreference()V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f0b001f

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_0

    .line 493
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0059

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b005a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 514
    :goto_0
    return-object v0

    .line 496
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 497
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b006d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b006e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/lbs/AgpsSettings$3;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/AgpsSettings$3;-><init>(Lcom/mediatek/lbs/AgpsSettings;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0043

    new-instance v3, Lcom/mediatek/lbs/AgpsSettings$2;

    invoke-direct {v3, p0}, Lcom/mediatek/lbs/AgpsSettings$2;-><init>(Lcom/mediatek/lbs/AgpsSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 510
    invoke-direct {p0}, Lcom/mediatek/lbs/AgpsSettings;->updatePage()V

    goto :goto_0

    .line 512
    :cond_1
    const-string v1, "WARNING: onCreateDialog unknown id recv"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 212
    const-string v0, "^_^ onDestroy"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 179
    const-string v2, "^_^ onPause"

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "agps_operator"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 183
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save mOperatorCode to sharedpreference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/AgpsSettings;->mOperatorCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 185
    const-string v2, "saved_operator_code"

    iget-object v3, p0, Lcom/mediatek/lbs/AgpsSettings;->mOperatorCode:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/AgpsSettings;->mDataConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v8, 0x1

    .line 453
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, key:Ljava/lang/String;
    const-string v6, "select_profile"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 456
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, code:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 458
    new-instance v5, Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-direct {v5}, Lcom/mediatek/common/agps/MtkAgpsProfile;-><init>()V

    .line 459
    .local v5, selectProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    iget-object v6, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v6}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAllProfile()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 460
    .local v4, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    iget-object v6, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 461
    move-object v5, v4

    .line 465
    .end local v4           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_1
    invoke-direct {p0, v5}, Lcom/mediatek/lbs/AgpsSettings;->updateSlpProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    .line 466
    const-string v6, "onPreferenceChange set profile to mAgpsMgr"

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 467
    iget-object v6, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v6, v5}, Lcom/mediatek/common/agps/MtkAgpsManager;->setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    .line 480
    .end local v0           #code:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #selectProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_2
    :goto_0
    return v8

    .line 468
    :cond_3
    iget-object v6, p0, Lcom/mediatek/lbs/AgpsSettings;->mNetworkUsedListPref:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 469
    iget-object v6, p0, Lcom/mediatek/lbs/AgpsSettings;->mNetworkUsedListPref:Landroid/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 470
    .local v2, index:I
    if-nez v2, :cond_4

    .line 471
    iget-object v6, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/mediatek/common/agps/MtkAgpsManager;->setRoamingEnable(Z)V

    .line 472
    invoke-direct {p0}, Lcom/mediatek/lbs/AgpsSettings;->updatePage()V

    goto :goto_0

    .line 473
    :cond_4
    if-ne v2, v8, :cond_2

    .line 474
    iget-object v6, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v6}, Lcom/mediatek/common/agps/MtkAgpsManager;->getRoamingStatus()Z

    move-result v6

    if-nez v6, :cond_2

    .line 475
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    .line 305
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 307
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Network_Initiate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, p2

    .line 308
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 309
    .local v1, niCheckBox:Landroid/preference/CheckBoxPreference;
    iget-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/common/agps/MtkAgpsManager;->setNiEnable(Z)V

    .line 317
    .end local v1           #niCheckBox:Landroid/preference/CheckBoxPreference;
    :cond_0
    :goto_0
    return v4

    .line 310
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "disable_agps_on_reboot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.agps.DISABLE_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "status"

    iget-object v3, p0, Lcom/mediatek/lbs/AgpsSettings;->mDisableOnRebootCB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 314
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mAboutPref:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mAboutPref:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 195
    const-string v2, "onResume"

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 197
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/AgpsSettings;->mDataConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "agps_operator"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 201
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    const-string v2, "saved_operator_code"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/lbs/AgpsSettings;->mOperatorCode:Ljava/lang/String;

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restored mOperatorCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/AgpsSettings;->mOperatorCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/AgpsSettings;->log(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Lcom/mediatek/lbs/AgpsSettings;->updateDataConnStatus()V

    .line 205
    invoke-direct {p0}, Lcom/mediatek/lbs/AgpsSettings;->initSlpProfileList()V

    .line 206
    invoke-direct {p0}, Lcom/mediatek/lbs/AgpsSettings;->updatePage()V

    .line 207
    return-void
.end method
