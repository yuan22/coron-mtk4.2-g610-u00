.class public Lcom/android/settings_ex/deviceinfo/UsbSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "UsbSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_BICR:Ljava/lang/String; = "usb_bicr"

.field private static final KEY_CHARGE:Ljava/lang/String; = "usb_charge"

.field private static final KEY_MTP:Ljava/lang/String; = "usb_mtp"

.field private static final KEY_PTP:Ljava/lang/String; = "usb_ptp"

.field private static final KEY_UMS:Ljava/lang/String; = "usb_ums"

.field private static final TAG:Ljava/lang/String; = "UsbSettings"

.field private static final USB_CHARGING_PHLUGIN:I = 0x2

.field private static str_hisuite_model:Ljava/lang/String;

.field private static str_mass_storage_model:Ljava/lang/String;

.field private static str_mtp_model:Ljava/lang/String;

.field private static str_ptp_model:Ljava/lang/String;


# instance fields
.field private bw:Ljava/io/BufferedWriter;

.field private fw:Ljava/io/FileWriter;

.field private mBicr:Lcom/android/settings_ex/deviceinfo/UsbPreference;

.field private mBicrExist:Z

.field private mCanUpdateToggle:Z

.field private mCharge:Lcom/android/settings_ex/deviceinfo/UsbPreference;

.field private mChargeExist:Z

.field private mCurrentToggles:Ljava/lang/String;

.field private mIsHwUsbConnected:Z

.field private mIsPcKnowMe:Z

.field private mMtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

.field private mPlugType:I

.field private mPtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUms:Lcom/android/settings_ex/deviceinfo/UsbPreference;

.field private mUmsExist:Z

.field private mUsbAccessoryMode:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private newfile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-string v0, "mtp_model"

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->str_mtp_model:Ljava/lang/String;

    .line 102
    const-string v0, "mass_storage_model"

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->str_mass_storage_model:Ljava/lang/String;

    .line 103
    const-string v0, "ptp_model"

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->str_ptp_model:Ljava/lang/String;

    .line 104
    const-string v0, "hisuite_model"

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->str_hisuite_model:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 89
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUmsExist:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mChargeExist:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicrExist:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    .line 94
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPlugType:I

    .line 95
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getCurrentFunction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/deviceinfo/UsbSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPlugType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/deviceinfo/UsbSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPlugType:I

    return p1
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 186
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 187
    .local v4, root:Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_0

    .line 188
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 190
    :cond_0
    const v5, 0x7f050045

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 191
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 193
    const-string v5, "usb_mtp"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    .line 194
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    const-string v5, "usb_ptp"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    .line 197
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    const-string v5, "usb_ums"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUms:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    .line 200
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUms:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    const-string v5, "usb_charge"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    .line 203
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    const-string v5, "usb_bicr"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    .line 206
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 214
    const-string v5, "ro.sys.usb.storage.type"

    const-string v6, "mtp"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, config:Ljava/lang/String;
    const-string v5, "mtp,mass_storage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 218
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUms:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    iput-boolean v8, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUmsExist:Z

    .line 222
    :cond_1
    const-string v5, "ro.sys.usb.charging.only"

    const-string v6, "no"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, chargeConfig:Ljava/lang/String;
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.sys.usb.charging.only: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v5, "no"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 226
    const-string v5, "UsbSettings"

    const-string v6, "Usb Charge does not exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    iput-boolean v8, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mChargeExist:Z

    .line 231
    :cond_2
    const-string v5, "ro.sys.usb.bicr"

    const-string v6, "no"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, bicrConfig:Ljava/lang/String;
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.sys.usb.bicr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v5, "no"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 235
    const-string v5, "UsbSettings"

    const-string v6, "Usb Bicr does not exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v5, "usb_connect_as_cdrom_category"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 237
    .local v1, cdromCategory:Landroid/preference/PreferenceCategory;
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    iput-boolean v8, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicrExist:Z

    .line 243
    .end local v1           #cdromCategory:Landroid/preference/PreferenceCategory;
    :cond_3
    return-object v4
.end method

.method private getCurrentFunction()Ljava/lang/String;
    .locals 5

    .prologue
    .line 174
    const-string v2, "sys.usb.config"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, functions:Ljava/lang/String;
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 178
    .local v0, commandIndex:I
    if-lez v0, :cond_0

    .line 179
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 181
    .end local v1           #functions:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private isNeedToRecordLogFile()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 260
    const-string v4, "UsbSettings"

    const-string v5, "isNeedToRecordLogFile start..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, isConfigToRecord:Z
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/projectline_flag.txt"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, flgFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    const-string v3, "UsbSettings"

    const-string v4, "projectline_flag.txt already exist ,not to data write"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    return v2

    .line 267
    :cond_0
    const-string v4, "UsbSettings"

    const-string v5, "projectline_flag.txt not exist ,to write data"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "record_product_line"

    invoke-static {v4, v5, v2}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v1, v3

    .line 274
    :goto_1
    if-eqz v1, :cond_2

    .line 275
    const-string v2, "UsbSettings"

    const-string v4, "isConfigToRecord == true"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 276
    goto :goto_0

    :cond_1
    move v1, v2

    .line 272
    goto :goto_1

    .line 278
    :cond_2
    const-string v3, "UsbSettings"

    const-string v4, "isConfigToRecord == false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 4
    .parameter "function"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 371
    const-string v0, "mtp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 373
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 374
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUms:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 377
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 380
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 445
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v0, :cond_15

    .line 447
    const-string v0, "UsbSettings"

    const-string v1, "USB Normal Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 449
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 450
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_3

    .line 451
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUms:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 453
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_4

    .line 454
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 456
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_5

    .line 457
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 474
    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    .line 475
    return-void

    .line 383
    :cond_6
    const-string v0, "ptp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 384
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 386
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_7

    .line 387
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUms:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 389
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_8

    .line 390
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 392
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto :goto_0

    .line 395
    :cond_9
    const-string v0, "mass_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 396
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 397
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 398
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_a

    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUms:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 401
    :cond_a
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_b

    .line 402
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 404
    :cond_b
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 407
    :cond_c
    const-string v0, "charging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 408
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 409
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 410
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_d

    .line 411
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUms:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 413
    :cond_d
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_e

    .line 414
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 416
    :cond_e
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 419
    :cond_f
    const-string v0, "bicr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 420
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 421
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 422
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_10

    .line 423
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUms:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 425
    :cond_10
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_11

    .line 426
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 428
    :cond_11
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 432
    :cond_12
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 433
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 434
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_13

    .line 435
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUms:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 437
    :cond_13
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_14

    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 440
    :cond_14
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 460
    :cond_15
    const-string v0, "UsbSettings"

    const-string v1, "USB Accessory Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 462
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 463
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_16

    .line 464
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUms:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 466
    :cond_16
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_17

    .line 467
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 469
    :cond_17
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_5

    .line 470
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private writeOpLog(Ljava/lang/String;)V
    .locals 5
    .parameter "str"

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->isNeedToRecordLogFile()Z

    move-result v1

    .line 287
    .local v1, isNeedToRecordFlg:Z
    if-eqz v1, :cond_0

    .line 288
    const-string v2, "UsbSettings"

    const-string v3, "isNeedToRecordFlg == true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/projectline.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->newfile:Ljava/io/File;

    .line 290
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->newfile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    const-string v2, "UsbSettings"

    const-string v3, "writeOpLog--->projectline.txt not exisit"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const-string v2, "UsbSettings"

    const-string v3, "writeOpLog--->projectline.txt exisit"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :try_start_0
    const-string v2, "UsbSettings"

    const-string v3, "writeOpLog--->create FileWriter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->newfile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->fw:Ljava/io/FileWriter;

    .line 310
    const-string v2, "UsbSettings"

    const-string v3, "writeOpLog--->create BufferedWriter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v2, Ljava/io/BufferedWriter;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->fw:Ljava/io/FileWriter;

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->bw:Ljava/io/BufferedWriter;

    .line 312
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 314
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    :try_start_1
    const-string v2, "UsbSettings"

    const-string v3, "onStop---->closefile"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->bw:Ljava/io/BufferedWriter;

    if-eqz v2, :cond_2

    .line 323
    const-string v2, "UsbSettings"

    const-string v3, "onStop---->close BufferedWriter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 326
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->fw:Ljava/io/FileWriter;

    if-eqz v2, :cond_0

    .line 327
    const-string v2, "UsbSettings"

    const-string v3, "onStop---->close FileWriter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->fw:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 315
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 316
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_2
    const-string v2, "UsbSettings"

    const-string v3, "writeOpLog---->IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    :try_start_3
    const-string v2, "UsbSettings"

    const-string v3, "onStop---->closefile"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->bw:Ljava/io/BufferedWriter;

    if-eqz v2, :cond_3

    .line 323
    const-string v2, "UsbSettings"

    const-string v3, "onStop---->close BufferedWriter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 326
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->fw:Ljava/io/FileWriter;

    if-eqz v2, :cond_0

    .line 327
    const-string v2, "UsbSettings"

    const-string v3, "onStop---->close FileWriter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->fw:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 330
    :catch_2
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 319
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 321
    :try_start_4
    const-string v3, "UsbSettings"

    const-string v4, "onStop---->closefile"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->bw:Ljava/io/BufferedWriter;

    if-eqz v3, :cond_4

    .line 323
    const-string v3, "UsbSettings"

    const-string v4, "onStop---->close BufferedWriter"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 326
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->fw:Ljava/io/FileWriter;

    if-eqz v3, :cond_5

    .line 327
    const-string v3, "UsbSettings"

    const-string v4, "onStop---->close FileWriter"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->fw:Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 332
    :cond_5
    :goto_1
    throw v2

    .line 330
    :catch_3
    move-exception v0

    .line 331
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 249
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 257
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 342
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 343
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 480
    const-string v2, "UsbSettings"

    const-string v3, "onPreferenceChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    :goto_0
    return v5

    .line 489
    :cond_0
    instance-of v2, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 490
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 491
    .local v1, checkBox:Landroid/preference/CheckBoxPreference;
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 493
    invoke-virtual {v1, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 504
    .end local v1           #checkBox:Landroid/preference/CheckBoxPreference;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    if-ne p1, v2, :cond_3

    .line 506
    const-string v2, "UsbSettings"

    const-string v3, "str_mtp_model selected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    sget-object v2, Lcom/android/settings_ex/deviceinfo/UsbSettings;->str_mtp_model:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->writeOpLog(Ljava/lang/String;)V

    .line 509
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v3, "mtp"

    invoke-virtual {v2, v3, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 510
    const-string v2, "mtp"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 553
    :cond_2
    :goto_1
    iput-boolean v6, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    goto :goto_0

    .line 512
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    if-ne p1, v2, :cond_4

    .line 514
    const-string v2, "UsbSettings"

    const-string v3, "str_ptp_model selected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-object v2, Lcom/android/settings_ex/deviceinfo/UsbSettings;->str_ptp_model:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->writeOpLog(Ljava/lang/String;)V

    .line 517
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v3, "ptp"

    invoke-virtual {v2, v3, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 518
    const-string v2, "ptp"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1

    .line 520
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUms:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    if-ne p1, v2, :cond_5

    .line 522
    const-string v2, "UsbSettings"

    const-string v3, "str_mass_storage_model selected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    sget-object v2, Lcom/android/settings_ex/deviceinfo/UsbSettings;->str_mass_storage_model:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->writeOpLog(Ljava/lang/String;)V

    .line 525
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v3, "mass_storage"

    invoke-virtual {v2, v3, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 527
    const-string v2, "mass_storage"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1

    .line 529
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    if-ne p1, v2, :cond_6

    .line 530
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v3, "charging"

    invoke-virtual {v2, v3, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 532
    const-string v2, "charging"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1

    .line 534
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings_ex/deviceinfo/UsbPreference;

    if-ne p1, v2, :cond_2

    .line 536
    const-string v2, "UsbSettings"

    const-string v3, "str_hisuite_model selected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    sget-object v2, Lcom/android/settings_ex/deviceinfo/UsbSettings;->str_hisuite_model:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->writeOpLog(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 541
    .local v0, ADBEnableStatus:I
    if-nez v0, :cond_7

    .line 542
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 545
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v3, "bicr"

    invoke-virtual {v2, v3, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 546
    const-string v2, "bicr"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 354
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 359
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 362
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 364
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 368
    return-void
.end method
