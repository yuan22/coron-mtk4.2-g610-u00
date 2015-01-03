.class public Lcom/android/settings_ex/PrivacySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final AUTO_RESTORE:Ljava/lang/String; = "auto_restore"

.field private static final BACKUP_CATEGORY:Ljava/lang/String; = "backup_category"

.field private static final BACKUP_DATA:Ljava/lang/String; = "backup_data"

.field private static final CONFIGURE_ACCOUNT:Ljava/lang/String; = "configure_account"

.field private static final DIALOG_ERASE_BACKUP:I = 0x2

.field private static final DRM_RESET:Ljava/lang/String; = "drm_settings"

.field private static final GSETTINGS_PROVIDER:Ljava/lang/String; = "com.google.settings"

.field private static final PERSONAL_DATA_CATEGORY:Ljava/lang/String; = "personal_data"

.field private static final TAG:Ljava/lang/String; = "PrivacySettings"


# instance fields
.field private mAutoRestore:Landroid/preference/CheckBoxPreference;

.field private mBackup:Landroid/preference/CheckBoxPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDialogType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setBackupEnabled(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 221
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    .line 224
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupProvisioned(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 232
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 233
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 234
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 227
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 226
    goto :goto_1

    :cond_2
    move v2, v3

    .line 227
    goto :goto_2
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .parameter "summary"

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b080e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private showEraseBackupDialog()V
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 132
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    .line 133
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0818

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 135
    .local v0, msg:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0817

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 141
    return-void
.end method

.method private updateConfigureSummary()V
    .locals 3

    .prologue
    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, transport:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, summary:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v0           #summary:Ljava/lang/String;
    .end local v1           #transport:Ljava/lang/String;
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 149
    .local v6, res:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 150
    .local v0, backupEnabled:Z
    const/4 v2, 0x0

    .line 151
    .local v2, configIntent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 153
    .local v3, configSummary:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 154
    iget-object v8, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, transport:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 156
    iget-object v8, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 161
    .end local v7           #transport:Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 163
    if-eqz v0, :cond_0

    .line 165
    const-string v8, "backup"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 167
    .local v1, bm:Landroid/app/backup/IBackupManager;
    if-eqz v1, :cond_0

    .line 169
    const/4 v8, 0x1

    :try_start_1
    invoke-interface {v1, v8}, Landroid/app/backup/IBackupManager;->setBackupProvisioned(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    .end local v1           #bm:Landroid/app/backup/IBackupManager;
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    const-string v8, "backup_auto_restore"

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 178
    iget-object v8, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 180
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    move v4, v9

    .line 181
    .local v4, configureEnabled:Z
    :goto_3
    iget-object v8, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 182
    iget-object v8, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 183
    invoke-direct {p0, v3}, Lcom/android/settings_ex/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 184
    return-void

    .line 157
    .end local v4           #configureEnabled:Z
    :catch_0
    move-exception v5

    .line 159
    .local v5, e:Landroid/os/RemoteException;
    iget-object v8, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 170
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v1       #bm:Landroid/app/backup/IBackupManager;
    :catch_1
    move-exception v5

    .line 171
    .restart local v5       #e:Landroid/os/RemoteException;
    const-string v8, "PrivacySettings"

    const-string v11, "set backup provisioned false!"

    invoke-static {v8, v11}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #bm:Landroid/app/backup/IBackupManager;
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_1
    move v8, v10

    .line 176
    goto :goto_2

    :cond_2
    move v4, v10

    .line 180
    goto :goto_3
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 238
    const v0, 0x7f0b094e

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 205
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 207
    iget v0, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 208
    invoke-direct {p0, v2}, Lcom/android/settings_ex/PrivacySettings;->setBackupEnabled(Z)V

    .line 209
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->updateConfigureSummary()V

    .line 212
    :cond_0
    iput v2, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    .line 213
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f050024

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 66
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 68
    .local v0, screen:Landroid/preference/PreferenceScreen;
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 71
    const-string v1, "backup_data"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    .line 72
    const-string v1, "auto_restore"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    .line 73
    const-string v1, "configure_account"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 76
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 78
    const-string v1, "backup_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->updateToggles()V

    .line 85
    const-string v1, "drm_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 89
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 112
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 113
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->showEraseBackupDialog()V

    .line 126
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 116
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/PrivacySettings;->setBackupEnabled(Z)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 121
    .local v0, curState:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v0}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 96
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->updateToggles()V

    .line 97
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 104
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    .line 106
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 107
    return-void
.end method
