.class public Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;
.super Landroid/preference/PreferenceActivity;
.source "ImeiInfoGemini.java"


# static fields
.field private static final CDMA:Ljava/lang/String; = "CDMA"

.field private static final KEY_IMEI_SLOT1:Ljava/lang/String; = "imei_slot1"

.field private static final KEY_IMEI_SLOT2:Ljava/lang/String; = "imei_slot2"

.field private static final KEY_IMEI_SV_SLOT1:Ljava/lang/String; = "imei_sv_slot1"

.field private static final KEY_IMEI_SV_SLOT2:Ljava/lang/String; = "imei_sv_slot2"

.field private static final KEY_MEID_NUMBER_SLOT1:Ljava/lang/String; = "meid_number_slot1"

.field private static final KEY_MEID_NUMBER_SLOT2:Ljava/lang/String; = "meid_number_slot2"

.field private static final KEY_MIN_NUMBER_SLOT1:Ljava/lang/String; = "min_number_slot1"

.field private static final KEY_PRL_MIN_NUMBER_SLOT2:Ljava/lang/String; = "min_number_slot2"

.field private static final KEY_PRL_VERSION_SLOT1:Ljava/lang/String; = "prl_version_slot1"

.field private static final KEY_PRL_VERSION_SLOT2:Ljava/lang/String; = "prl_version_slot2"

.field private static final KEY_SLOT_STATUS:Ljava/lang/String; = "slot_status"


# instance fields
.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-void
.end method

.method private removePreferenceSafely(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 0
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 156
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    :cond_0
    return-void
.end method

.method private setSlotStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 57
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 63
    .local v0, preference:Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhoneNameGemini(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDMA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    const-string v2, "meid_number_slot1"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMeidGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "min_number_slot1"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCdmaMinGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v2, "prl_version_slot1"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCdmaPrlVersionGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v2, "imei_slot1"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 74
    .local v1, removablePref:Landroid/preference/Preference;
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    const-string v2, "imei_sv_slot1"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 98
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhoneNameGemini(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDMA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    const-string v2, "meid_number_slot2"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMeidGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "min_number_slot2"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCdmaMinGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "prl_version_slot2"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCdmaPrlVersionGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "imei_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 110
    const-string v2, "imei_sv_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    :goto_1
    if-eqz v0, :cond_0

    .line 130
    const-string v2, "imei_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 131
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->removePreferenceSafely(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    .line 133
    const-string v2, "imei_sv_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 134
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->removePreferenceSafely(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    .line 136
    const-string v2, "prl_version_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 137
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->removePreferenceSafely(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    .line 139
    const-string v2, "meid_number_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 140
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->removePreferenceSafely(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    .line 142
    const-string v2, "min_number_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 143
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->removePreferenceSafely(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    .line 146
    :cond_0
    return-void

    .line 78
    .end local v1           #removablePref:Landroid/preference/Preference;
    :cond_1
    const-string v2, "imei_slot1"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "imei_sv_slot1"

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "prl_version_slot1"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 87
    .restart local v1       #removablePref:Landroid/preference/Preference;
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 88
    const-string v2, "meid_number_slot1"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    const-string v2, "min_number_slot1"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 113
    :cond_2
    const-string v2, "imei_slot2"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v3, "imei_sv_slot2"

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "prl_version_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 122
    const-string v2, "meid_number_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    const-string v2, "min_number_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 163
    .local v0, p:Landroid/preference/Preference;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0269

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 42
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInfoGemini;->setSlotStatus()V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 54
    return-void
.end method
