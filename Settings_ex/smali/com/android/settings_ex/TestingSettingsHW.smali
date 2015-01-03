.class public Lcom/android/settings_ex/TestingSettingsHW;
.super Landroid/preference/PreferenceActivity;
.source "TestingSettingsHW.java"


# static fields
.field private static final KEY_MMI_AUDIO_SHORT_TEST:Ljava/lang/String; = "mmi_audiosorttest"

.field private static final KEY_MMI_FUNCTION_TEST:Ljava/lang/String; = "mmi_function_test"

.field private static final KEY_MMI_SHORT_TEST:Ljava/lang/String; = "mmi_sorttest"

.field private static final KEY_MMI_TEST:Ljava/lang/String; = "mmi_test"

.field private static final KEY_PARENT:Ljava/lang/String; = "parent"

.field private static final KEY_PROJECT_MENU:Ljava/lang/String; = "project_menu"

.field private static final TAG:Ljava/lang/String; = "TestingSettingsHW"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v7, 0x7f05003d

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 37
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 41
    .local v5, parent:Landroid/preference/PreferenceGroup;
    const-string v7, "project_menu"

    invoke-static {p0, v5, v7, v10}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 42
    const-string v7, "mmi_function_test"

    invoke-static {p0, v5, v7, v10}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, intents:Landroid/content/Intent;
    const-string v7, "mmtype"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, mmitype:Ljava/lang/String;
    const-string v7, "mmi_test"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 51
    .local v3, mmipreferecnce:Landroid/preference/PreferenceScreen;
    const-string v7, "mmi_sorttest"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 52
    .local v2, mmi_short_preferecnce:Landroid/preference/PreferenceScreen;
    const-string v7, "mmi_audiosorttest"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 54
    .local v1, mmi_audioshort_preferecnce:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 55
    .local v6, ps:Landroid/preference/PreferenceScreen;
    if-nez v6, :cond_0

    .line 56
    const-string v7, "TestingSettingsHW"

    const-string v8, "getPreferenceScreen is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return-void

    .line 59
    :cond_0
    if-eqz v4, :cond_1

    .line 60
    const-string v7, "TestingSettingsHW"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mmitype = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    const-string v7, "shorttest"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 64
    const-string v7, "mmi_sorttest"

    invoke-static {p0, v5, v7, v10}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 65
    invoke-virtual {v6, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 66
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 67
    :cond_2
    const-string v7, "audiotest"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 68
    const-string v7, "mmi_audiosorttest"

    invoke-static {p0, v5, v7, v10}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 69
    invoke-virtual {v6, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 70
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 72
    :cond_3
    const-string v7, "mmi_test"

    invoke-static {p0, v5, v7, v10}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 73
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
