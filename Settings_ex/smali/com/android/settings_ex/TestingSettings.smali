.class public Lcom/android/settings_ex/TestingSettings;
.super Landroid/preference/PreferenceActivity;
.source "TestingSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v6, 0x7f05003c

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 37
    const/16 v6, 0x41

    :try_start_0
    new-array v3, v6, [B

    .line 38
    .local v3, rootCheck:[B
    new-instance v1, Landroid/app/NvramGetSet;

    invoke-direct {v1}, Landroid/app/NvramGetSet;-><init>()V

    .line 39
    .local v1, nvGetSet:Landroid/app/NvramGetSet;
    const/16 v6, 0x30

    const/4 v7, 0x2

    const/16 v8, 0x40

    invoke-virtual {v1, v3, v6, v7, v8}, Landroid/app/NvramGetSet;->readNV([BIII)Z

    .line 40
    new-instance v4, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 41
    .local v4, ss:Ljava/lang/String;
    const-string v6, "TestingReceiver"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "risk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "user"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 43
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 44
    .local v2, ps:Landroid/preference/PreferenceScreen;
    const-string v6, "wlan_info"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 45
    .local v5, wifi:Landroid/preference/PreferenceScreen;
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1           #nvGetSet:Landroid/app/NvramGetSet;
    .end local v2           #ps:Landroid/preference/PreferenceScreen;
    .end local v3           #rootCheck:[B
    .end local v4           #ss:Ljava/lang/String;
    .end local v5           #wifi:Landroid/preference/PreferenceScreen;
    :cond_1
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
