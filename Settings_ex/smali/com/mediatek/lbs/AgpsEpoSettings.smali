.class public Lcom/mediatek/lbs/AgpsEpoSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AgpsEpoSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final CONFIRM_AGPS_DIALOG_ID:I = 0x1

.field private static final CONFIRM_EPO_DIALOG_ID:I = 0x0

.field private static final KEY_AGPS_ENABLER:Ljava/lang/String; = "agps_enabler"

.field private static final KEY_AGPS_SETTINGS:Ljava/lang/String; = "agps_settings"

.field private static final KEY_EPO_ENABLER:Ljava/lang/String; = "epo_enabler"

.field private static final KEY_EPO_SETTINGS:Ljava/lang/String; = "epo_settings"

.field private static final TAG:Ljava/lang/String; = "AgpsEpoSettings"


# instance fields
.field private mAgpsCB:Landroid/preference/CheckBoxPreference;

.field private mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

.field private mAgpsPref:Landroid/preference/Preference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEnabledSwitch:Landroid/widget/Switch;

.field private mEpoEnalberPref:Landroid/preference/CheckBoxPreference;

.field private mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

.field private mEpoSettingPref:Landroid/preference/Preference;

.field private mSettingsObserver:Ljava/util/Observer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/lbs/AgpsEpoSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/lbs/AgpsEpoSettings;->updateLocationToggles()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/lbs/AgpsEpoSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoEnalberPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/lbs/AgpsEpoSettings;)Lcom/mediatek/common/epo/MtkEpoClientManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/lbs/AgpsEpoSettings;)Lcom/mediatek/common/agps/MtkAgpsManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/lbs/AgpsEpoSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsCB:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private createPreferenceHierarchy()V
    .locals 1

    .prologue
    .line 173
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 175
    const-string v0, "epo_enabler"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoEnalberPref:Landroid/preference/CheckBoxPreference;

    .line 176
    const-string v0, "epo_settings"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoSettingPref:Landroid/preference/Preference;

    .line 178
    const-string v0, "mtk-epo-client"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/epo/MtkEpoClientManager;

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    .line 183
    const-string v0, "mtk-agps"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/agps/MtkAgpsManager;

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    .line 185
    const-string v0, "agps_settings"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsPref:Landroid/preference/Preference;

    .line 186
    const-string v0, "agps_enabler"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsCB:Landroid/preference/CheckBoxPreference;

    .line 197
    return-void
.end method

.method private updateLocationToggles()V
    .locals 3

    .prologue
    .line 269
    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 271
    .local v0, gpsEnabled:Z
    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 273
    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsCB:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsCB:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->getStatus()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 275
    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsCB:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoEnalberPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v2}, Lcom/mediatek/common/epo/MtkEpoClientManager;->getStatus()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 280
    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoEnalberPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 282
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 124
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 127
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    .line 129
    iget-object v3, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "gps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 131
    .local v1, gpsEnabled:Z
    iget-object v3, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 133
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 135
    .local v2, padding:I
    iget-object v3, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 136
    iget-object v3, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 253
    const-string v0, "AgpsEpoSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[f] onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_0

    .line 257
    const-string v0, "AgpsEpoSettings"

    const-string v1, "[f] onCheckedChanged buttonview is mEnableSwitch"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 262
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 113
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 117
    invoke-direct {p0}, Lcom/mediatek/lbs/AgpsEpoSettings;->createPreferenceHierarchy()V

    .line 119
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0b05f4

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 120
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x1080027

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 341
    :goto_0
    return-object v0

    .line 289
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b003c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b003d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b003e

    new-instance v3, Lcom/mediatek/lbs/AgpsEpoSettings$3;

    invoke-direct {v3, p0}, Lcom/mediatek/lbs/AgpsEpoSettings$3;-><init>(Lcom/mediatek/lbs/AgpsEpoSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b003f

    new-instance v3, Lcom/mediatek/lbs/AgpsEpoSettings$2;

    invoke-direct {v3, p0}, Lcom/mediatek/lbs/AgpsEpoSettings$2;-><init>(Lcom/mediatek/lbs/AgpsEpoSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 309
    goto :goto_0

    .line 311
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0040

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0041

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0042

    new-instance v3, Lcom/mediatek/lbs/AgpsEpoSettings$5;

    invoke-direct {v3, p0}, Lcom/mediatek/lbs/AgpsEpoSettings$5;-><init>(Lcom/mediatek/lbs/AgpsEpoSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0043

    new-instance v3, Lcom/mediatek/lbs/AgpsEpoSettings$4;

    invoke-direct {v3, p0}, Lcom/mediatek/lbs/AgpsEpoSettings$4;-><init>(Lcom/mediatek/lbs/AgpsEpoSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 337
    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoEnalberPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoEnalberPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    .line 222
    .local v7, flag:Z
    if-eqz v7, :cond_0

    .line 223
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoEnalberPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 224
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .end local v7           #flag:Z
    :goto_0
    move v0, v8

    .line 248
    :goto_1
    return v0

    .line 226
    .restart local v7       #flag:Z
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v0}, Lcom/mediatek/common/epo/MtkEpoClientManager;->disable()V

    goto :goto_0

    .line 228
    .end local v7           #flag:Z
    :cond_1
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoSettingPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 229
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/mediatek/lbs/EPOSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0039

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsCB:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsCB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsCB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 235
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->disable()V

    goto :goto_0

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_5

    .line 240
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/mediatek/lbs/AgpsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b003b

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 245
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 203
    invoke-direct {p0}, Lcom/mediatek/lbs/AgpsEpoSettings;->updateLocationToggles()V

    .line 205
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/mediatek/lbs/AgpsEpoSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/AgpsEpoSettings$1;-><init>(Lcom/mediatek/lbs/AgpsEpoSettings;)V

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 214
    return-void
.end method

.method public onStart()V
    .locals 10

    .prologue
    const/16 v1, 0x10

    const/4 v9, 0x1

    const/4 v5, -0x2

    const/4 v2, 0x0

    .line 141
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 143
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 144
    .local v6, activity:Landroid/app/Activity;
    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 146
    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "location_providers_allowed"

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 158
    .local v7, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v7, v1, v9, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 161
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 166
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 169
    :cond_0
    return-void
.end method
