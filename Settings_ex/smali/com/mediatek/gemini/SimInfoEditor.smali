.class public Lcom/mediatek/gemini/SimInfoEditor;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SimInfoEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final DIALOG_SIM_NAME_DUP:I = 0x3f2

.field private static final KEY_SIM_COLOR:Ljava/lang/String; = "sim_color"

.field private static final KEY_SIM_NAME:Ljava/lang/String; = "sim_name"

.field private static final KEY_SIM_NUMBER:Ljava/lang/String; = "sim_number"

.field private static final KEY_SIM_NUMBER_FORMAT:Ljava/lang/String; = "sim_number_format"

.field private static final KEY_SIM_STATUS:Ljava/lang/String; = "status_info"

.field private static final NAME_EXISTED:I = -0x2

.field private static final TAG:Ljava/lang/String; = "SimInfoEditor"

.field private static final TYPE_COLOR:I = 0x1

.field private static final TYPE_FORMAT:I = 0x3

.field private static final TYPE_NAME:I = 0x0

.field private static final TYPE_NUMBER:I = 0x2

.field private static sArrayNumFormat:[Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimColor:Lcom/mediatek/gemini/ColorPickerPreference;

.field private mSimID:J

.field private mSimName:Landroid/preference/EditTextPreference;

.field private mSimNumber:Landroid/preference/EditTextPreference;

.field private mSimNumberFormat:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/mediatek/gemini/SimInfoEditor$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimInfoEditor$1;-><init>(Lcom/mediatek/gemini/SimInfoEditor;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/SimInfoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoEditor;->updateStatusUiState()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/SimInfoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoEditor;->goBackSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/SimInfoEditor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    return-wide v0
.end method

.method private goBackSettings()V
    .locals 3

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/Settings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 366
    return-void
.end method

.method private turnNumformatValuetoIndex(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    const/4 v0, 0x2

    .line 194
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method

.method private updateInfo()V
    .locals 5

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-static {v2, v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 166
    .local v1, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_0

    .line 167
    iget-object v2, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    sget-object v3, Lcom/mediatek/gemini/SimInfoEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 173
    :goto_0
    iget-object v2, v1, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    iget-object v3, v1, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    iget-object v3, v1, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 180
    :goto_1
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimColor:Lcom/mediatek/gemini/ColorPickerPreference;

    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/ColorPickerPreference;->setInitValue(I)V

    .line 181
    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimInfoEditor;->turnNumformatValuetoIndex(I)I

    move-result v0

    .line 182
    .local v0, nIndex:I
    if-gez v0, :cond_3

    .line 188
    .end local v0           #nIndex:I
    :cond_0
    :goto_2
    return-void

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    iget-object v3, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    iget-object v3, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    sget-object v3, Lcom/mediatek/gemini/SimInfoEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 185
    .restart local v0       #nIndex:I
    :cond_3
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumberFormat:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 186
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumberFormat:Landroid/preference/ListPreference;

    sget-object v3, Lcom/mediatek/gemini/SimInfoEditor;->sArrayNumFormat:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateStatusUiState()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 135
    .local v0, isAirplaneModeOn:Z
    :goto_0
    const-string v4, "status_info"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 136
    .local v1, pref:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 137
    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 143
    :cond_0
    :goto_1
    return-void

    .end local v0           #isAirplaneModeOn:Z
    .end local v1           #pref:Landroid/preference/Preference;
    :cond_1
    move v0, v3

    .line 133
    goto :goto_0

    .line 140
    .restart local v0       #isAirplaneModeOn:Z
    .restart local v1       #pref:Landroid/preference/Preference;
    :cond_2
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 312
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 319
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b059c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/gemini/SimInfoEditor;->sNotSet:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 90
    const-string v2, "simid"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    .line 92
    :cond_0
    const-string v2, "SimInfoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/gemini/SimInfoEditor;->sArrayNumFormat:[Ljava/lang/String;

    .line 95
    const v2, 0x7f050035

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 96
    const-string v2, "sim_number_format"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumberFormat:Landroid/preference/ListPreference;

    .line 97
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumberFormat:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    const-string v2, "sim_name"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    .line 99
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    const-string v2, "sim_number"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    .line 101
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    const-string v2, "sim_color"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/ColorPickerPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimColor:Lcom/mediatek/gemini/ColorPickerPreference;

    .line 103
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimColor:Lcom/mediatek/gemini/ColorPickerPreference;

    iget-wide v3, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/gemini/ColorPickerPreference;->setSimID(J)V

    .line 104
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimColor:Lcom/mediatek/gemini/ColorPickerPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 107
    .local v1, parent:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/android/settings_ex/ext/ISimManagementExt;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

    .line 108
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

    invoke-interface {v2, v1}, Lcom/android/settings_ex/ext/ISimManagementExt;->updateSimManagementPref(Landroid/preference/PreferenceGroup;)V

    .line 110
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mExt:Lcom/android/settings_ex/ext/ISimManagementExt;

    invoke-interface {v2, p0}, Lcom/android/settings_ex/ext/ISimManagementExt;->updateSimEditorPref(Landroid/preference/PreferenceFragment;)V

    .line 112
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 335
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 356
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 339
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 341
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 342
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 344
    const v2, 0x104000a

    new-instance v3, Lcom/mediatek/gemini/SimInfoEditor$2;

    invoke-direct {v3, p0}, Lcom/mediatek/gemini/SimInfoEditor$2;-><init>(Lcom/mediatek/gemini/SimInfoEditor;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 352
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 353
    .local v0, alertDlg:Landroid/app/AlertDialog;
    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x3f2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 128
    const-string v0, "SimInfoEditor"

    const-string v1, "OnPause()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 16
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 200
    .local v8, key:Ljava/lang/String;
    const-string v1, "sim_name"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    .line 202
    .local v13, textName:Landroid/text/Editable;
    if-eqz v13, :cond_1

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, name:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-static {v1, v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v12

    .line 205
    .local v12, siminfo:Landroid/provider/Telephony$SIMInfo;
    const-string v1, "SimInfoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz v12, :cond_0

    if-eqz v2, :cond_0

    .line 207
    iget-object v1, v12, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 306
    .end local v2           #name:Ljava/lang/String;
    .end local v12           #siminfo:Landroid/provider/Telephony$SIMInfo;
    .end local v13           #textName:Landroid/text/Editable;
    .end local p2
    :goto_0
    return v1

    .line 211
    .restart local v2       #name:Ljava/lang/String;
    .restart local v12       #siminfo:Landroid/provider/Telephony$SIMInfo;
    .restart local v13       #textName:Landroid/text/Editable;
    .restart local p2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    const-wide/16 v5, 0x2

    invoke-static/range {v1 .. v6}, Landroid/provider/Telephony$SIMInfo;->setDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I

    move-result v11

    .line 214
    .local v11, result:I
    const-string v1, "SimInfoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-lez v11, :cond_2

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 218
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "simid"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-virtual {v7, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 220
    const-string v1, "type"

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    .end local v2           #name:Ljava/lang/String;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v11           #result:I
    .end local v12           #siminfo:Landroid/provider/Telephony$SIMInfo;
    .end local v13           #textName:Landroid/text/Editable;
    .end local p2
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 224
    .restart local v2       #name:Ljava/lang/String;
    .restart local v11       #result:I
    .restart local v12       #siminfo:Landroid/provider/Telephony$SIMInfo;
    .restart local v13       #textName:Landroid/text/Editable;
    .restart local p2
    :cond_2
    const/4 v1, -0x2

    if-ne v11, v1, :cond_3

    .line 225
    const/16 v1, 0x3f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 228
    :cond_3
    if-eqz v12, :cond_4

    iget-object v1, v12, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    iget-object v3, v12, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 232
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 236
    .end local v2           #name:Ljava/lang/String;
    .end local v11           #result:I
    .end local v12           #siminfo:Landroid/provider/Telephony$SIMInfo;
    .end local v13           #textName:Landroid/text/Editable;
    :cond_5
    const-string v1, "sim_color"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 237
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-static {v3, v1, v4, v5}, Landroid/provider/Telephony$SIMInfo;->setColor(Landroid/content/Context;IJ)I

    move-result v1

    if-lez v1, :cond_1

    .line 239
    const-string v1, "SimInfoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set color succeed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v1, "simid"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-virtual {v7, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 242
    const-string v1, "type"

    const/4 v3, 0x1

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 245
    .end local v7           #intent:Landroid/content/Intent;
    :cond_6
    const-string v1, "sim_number"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    .line 247
    .local v14, textNumber:Landroid/text/Editable;
    if-eqz v14, :cond_1

    .line 248
    const-string v1, "SimInfoEditor"

    const-string v3, "textNumber != null "

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 250
    .local v10, number:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-static {v1, v10, v3, v4}, Landroid/provider/Telephony$SIMInfo;->setNumber(Landroid/content/Context;Ljava/lang/String;J)I

    move-result v1

    if-lez v1, :cond_8

    .line 252
    const-string v1, "SimInfoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set number succeed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 259
    :goto_2
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v1, "simid"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-virtual {v7, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 261
    const-string v1, "type"

    const/4 v3, 0x2

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 256
    .end local v7           #intent:Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    sget-object v3, Lcom/mediatek/gemini/SimInfoEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 264
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-static {v1, v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v12

    .line 266
    .restart local v12       #siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v12, :cond_9

    .line 267
    iget-object v1, v12, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, v12, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    iget-object v3, v12, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 279
    :cond_9
    :goto_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 274
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 284
    .end local v10           #number:Ljava/lang/String;
    .end local v12           #siminfo:Landroid/provider/Telephony$SIMInfo;
    .end local v14           #textNumber:Landroid/text/Editable;
    :cond_b
    const-string v1, "sim_number_format"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 287
    .local v15, value:I
    const-string v1, "SimInfoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_SIM_NUMBER_FORMAT is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-gez v15, :cond_c

    .line 290
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 292
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-static {v1, v15, v3, v4}, Landroid/provider/Telephony$SIMInfo;->setDispalyNumberFormat(Landroid/content/Context;IJ)I

    move-result v1

    if-lez v1, :cond_1

    .line 294
    const-string v1, "SimInfoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set format succeed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/gemini/SimInfoEditor;->turnNumformatValuetoIndex(I)I

    move-result v9

    .line 298
    .local v9, nIndex:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumberFormat:Landroid/preference/ListPreference;

    sget-object v3, Lcom/mediatek/gemini/SimInfoEditor;->sArrayNumFormat:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v1, "simid"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-virtual {v7, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 301
    const-string v1, "type"

    const/4 v3, 0x3

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    .line 148
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "status_info"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    .local v0, it:Landroid/content/Intent;
    const-string v2, "com.android.settings_ex"

    const-string v3, "com.android.settings_ex.deviceinfo.SimStatusGemini"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-static {v2, v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v1

    .line 154
    .local v1, slot:I
    if-gez v1, :cond_1

    .line 161
    .end local v0           #it:Landroid/content/Intent;
    .end local v1           #slot:I
    :cond_0
    :goto_0
    return v5

    .line 157
    .restart local v0       #it:Landroid/content/Intent;
    .restart local v1       #slot:I
    :cond_1
    const-string v2, "slotid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v2, "SimInfoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slotid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 117
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoEditor;->updateInfo()V

    .line 118
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoEditor;->updateStatusUiState()V

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 121
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 324
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 325
    .local v0, d:Landroid/app/Dialog;
    instance-of v1, v0, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 326
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 330
    :cond_0
    return-void

    .line 326
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
