.class public Lcom/android/settings_ex/LocationSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CONFIRM_LOCATIONACCESS_DIALOG_ID:I = 0x0

.field private static final KEY_ASSISTED_GPS:Ljava/lang/String; = "assisted_gps"

.field private static final KEY_LOCATION_GPS:Ljava/lang/String; = "location_gps"

.field private static final KEY_LOCATION_NETWORK:Ljava/lang/String; = "location_network"

.field private static final KEY_LOCATION_TOGGLE:Ljava/lang/String; = "location_toggle"

.field private static final TAG:Ljava/lang/String; = "LocationSettings"


# instance fields
.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mGps:Lcom/mediatek/lbs/CustomSwitchPreference;

.field private mLocationAccess:Landroid/preference/CheckBoxPreference;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mSettingsObserver:Ljava/util/Observer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/LocationSettings;->updateLocationToggles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/LocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/LocationSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings_ex/LocationSettings;->onToggleLocationAccess(Z)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 102
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 105
    :cond_0
    const v1, 0x7f05001f

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 106
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 108
    const-string v1, "location_toggle"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    .line 109
    const-string v1, "location_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 110
    const-string v1, "location_gps"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/lbs/CustomSwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Lcom/mediatek/lbs/CustomSwitchPreference;

    .line 111
    const-string v1, "assisted_gps"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 113
    const-string v2, "LocationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAssistedGps is null :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-object v0

    .line 113
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onToggleLocationAccess(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 221
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 223
    const-string v1, "network"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 225
    invoke-direct {p0}, Lcom/android/settings_ex/LocationSettings;->updateLocationToggles()V

    .line 226
    return-void
.end method

.method private updateLocationToggles()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 195
    .local v2, res:Landroid/content/ContentResolver;
    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 197
    .local v0, gpsEnabled:Z
    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 199
    .local v1, networkEnabled:Z
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Lcom/mediatek/lbs/CustomSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/mediatek/lbs/CustomSwitchPreference;->setChecked(Z)V

    .line 200
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 201
    iget-object v6, p0, Lcom/android/settings_ex/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 202
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 203
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v6, "assisted_gps_enabled"

    const/4 v7, 0x2

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_3

    :goto_1
    invoke-virtual {v3, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 205
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 207
    :cond_1
    return-void

    :cond_2
    move v3, v4

    .line 201
    goto :goto_0

    :cond_3
    move v5, v4

    .line 203
    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 215
    invoke-direct {p0}, Lcom/android/settings_ex/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 216
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 254
    :goto_0
    return-object v0

    .line 241
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b095f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0960

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0042

    new-instance v3, Lcom/android/settings_ex/LocationSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/LocationSettings$2;-><init>(Lcom/android/settings_ex/LocationSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0043

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "location_toggle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/LocationSettings;->onToggleLocationAccess(Z)V

    .line 233
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 151
    .local v6, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 152
    const-string v0, "network"

    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 187
    :goto_0
    return v3

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Lcom/mediatek/lbs/CustomSwitchPreference;

    if-ne p2, v1, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Lcom/mediatek/lbs/CustomSwitchPreference;

    invoke-virtual {v0}, Lcom/mediatek/lbs/CustomSwitchPreference;->isChecked()Z

    move-result v7

    .line 156
    .local v7, enabled:Z
    const-string v0, "gps"

    invoke-static {v6, v0, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 164
    :cond_1
    const-class v0, Lcom/mediatek/lbs/AgpsEpoSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x7f0b05f4

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 168
    .end local v7           #enabled:Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 169
    const-string v1, "assisted_gps_enabled"

    iget-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v3

    :cond_3
    invoke-static {v6, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 172
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 174
    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 178
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 179
    invoke-direct {p0, v0}, Lcom/android/settings_ex/LocationSettings;->onToggleLocationAccess(Z)V

    goto :goto_0

    .line 184
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 134
    invoke-direct {p0}, Lcom/android/settings_ex/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 135
    invoke-direct {p0}, Lcom/android/settings_ex/LocationSettings;->updateLocationToggles()V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/android/settings_ex/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/LocationSettings$1;-><init>(Lcom/android/settings_ex/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 146
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    .local v6, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 90
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 98
    :cond_0
    return-void
.end method
