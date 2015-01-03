.class public Lcom/android/settings_ex/net/DataUsageMeteredSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DataUsageMeteredSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;
    }
.end annotation


# static fields
.field private static final SHOW_MOBILE_CATEGORY:Z


# instance fields
.field private mMobileCategory:Landroid/preference/PreferenceCategory;

.field private mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mWifiCategory:Landroid/preference/PreferenceCategory;

.field private mWifiDisabled:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/net/DataUsageMeteredSettings;)Lcom/android/settings_ex/net/NetworkPolicyEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    return-object v0
.end method

.method private buildMobilePref(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 4
    .parameter "context"

    .prologue
    .line 96
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 97
    .local v1, tele:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 99
    .local v2, template:Landroid/net/NetworkTemplate;
    new-instance v0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;-><init>(Lcom/android/settings_ex/net/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    .line 100
    .local v0, pref:Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    return-object v0
.end method

.method private buildWifiPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;
    .locals 4
    .parameter "context"
    .parameter "config"

    .prologue
    .line 105
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, networkId:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 107
    .local v2, template:Landroid/net/NetworkTemplate;
    new-instance v1, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;-><init>(Lcom/android/settings_ex/net/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    .line 108
    .local v1, pref:Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    return-object v1
.end method

.method private updateNetworks(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mMobileCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 83
    iget-object v2, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 84
    invoke-static {p1}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 86
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->buildWifiPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 91
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiDisabled:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 93
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 60
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 62
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 64
    new-instance v1, Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    .line 65
    iget-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-virtual {v1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->read()V

    .line 67
    const v1, 0x7f05000c

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 68
    const-string v1, "mobile"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mMobileCategory:Landroid/preference/PreferenceCategory;

    .line 69
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    .line 70
    const-string v1, "wifi_disabled"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiDisabled:Landroid/preference/Preference;

    .line 72
    invoke-direct {p0, v0}, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->updateNetworks(Landroid/content/Context;)V

    .line 73
    return-void
.end method
