.class public Lcom/android/settings_ex/deviceinfo/Memory;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "Memory.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment;,
        Lcom/android/settings_ex/deviceinfo/Memory$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DYNAMIC_SD_SWAP:Ljava/lang/String; = "com.mediatek.SD_SWAP"

.field private static final ACTION_SWITCH_EXCEPTION:Ljava/lang/String; = "switch_exception"

.field private static final ACTION_SWITCH_SUCCESS:Ljava/lang/String; = "switch_success"

.field private static final APP_INSTALL_AUTO:I = 0x0

.field private static final APP_INSTALL_AUTO_ID:Ljava/lang/String; = "auto"

.field private static final APP_INSTALL_DEVICE:I = 0x1

.field private static final APP_INSTALL_DEVICE_ID:Ljava/lang/String; = "device"

.field private static final APP_INSTALL_SDCARD:I = 0x2

.field private static final APP_INSTALL_SDCARD_ID:Ljava/lang/String; = "sdcard"

.field private static final DEFAULT_WRITE_CATEGORY_KEY:Ljava/lang/String; = "memory_select"

.field private static final DLG_CONFIRM_MOUNT:I = 0x3

.field private static final DLG_CONFIRM_UNMOUNT:I = 0x1

.field private static final DLG_ERROR_UNMOUNT:I = 0x2

.field private static final EXTERNAL_STORAGE_PATH:Ljava/lang/String; = "/storage/sdcard1"

.field public static final H_UNMOUNT_ERROR:I = 0xb

.field private static final KEY_APK_INSTALLER:Ljava/lang/String; = "apk_installer"

.field private static final KEY_APP_INSTALL_LOCATION:Ljava/lang/String; = "app_install_location"

.field private static final MAIN_STORAGE_PATH:Ljava/lang/String; = "/storage/sdcard0"

.field private static final MESSAGE_DELAY_TIME:I = 0xc8

.field private static final SD_EXIST:Ljava/lang/String; = "SD_EXIST"

.field private static final SD_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MemorySettings"

.field private static final TAG_CONFIRM_CLEAR_CACHE:Ljava/lang/String; = "confirmClearCache"

.field private static final USB_STORAGE_PATH:Ljava/lang/String; = "/mnt/usbotg"

.field private static sClickedMountPoint:Ljava/lang/String;

.field private static sLastClickedMountToggle:Landroid/preference/Preference;


# instance fields
.field private mApkInstallePref:Landroid/preference/Preference;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mDeafultWritePathPref:Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

.field private mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

.field private mDefaultWritePath:Ljava/lang/String;

.field private mDefaultWritePathAdded:[Z

.field mDynSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mInstallLocation:Landroid/preference/ListPreference;

.field private mIsApkInstallerExist:Z

.field private mIsRemovableVolume:Z

.field private mIsUnmountingUsb:Z

.field private mManulSwaping:Z

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mResources:Landroid/content/res/Resources;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

.field private mSwapDialog:Landroid/app/Dialog;

.field private mUiHandler:Landroid/os/Handler;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mVolumePrefCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 99
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mIsUnmountingUsb:Z

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mHandler:Landroid/os/Handler;

    .line 110
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    .line 148
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mManulSwaping:Z

    .line 155
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Memory$1;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    .line 224
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mIsApkInstallerExist:Z

    .line 501
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Memory$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Memory$4;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 654
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Memory$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Memory$5;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 992
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Memory$13;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Memory$13;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/Memory;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/deviceinfo/Memory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mIsApkInstallerExist:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->doMount()V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/settings_ex/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->onCacheCleared()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/deviceinfo/Memory;)Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings_ex/deviceinfo/Memory;Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;)Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/deviceinfo/Memory;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/Memory;->manuleSwitch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->dynamicShowDefaultWriteCategory()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/Memory;)[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/Memory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mManulSwaping:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/deviceinfo/Memory;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mManulSwaping:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/deviceinfo/Memory;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/deviceinfo/Memory;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/Memory;->showDialogInner(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mSwapDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mSwapDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private addCategory(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 371
    invoke-virtual {p1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 372
    return-void
.end method

.method private doMount()V
    .locals 2

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 807
    .local v0, mountService:Landroid/os/storage/IMountService;
    new-instance v1, Lcom/android/settings_ex/deviceinfo/Memory$9;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/deviceinfo/Memory$9;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/os/storage/IMountService;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 824
    return-void
.end method

.method private doUnmount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 718
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v1, :cond_0

    .line 719
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0011

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 725
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 727
    .local v0, mountService:Landroid/os/storage/IMountService;
    sget-object v1, Lcom/android/settings_ex/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 728
    sget-object v1, Lcom/android/settings_ex/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b058b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 730
    sget-object v1, Lcom/android/settings_ex/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b058c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 733
    new-instance v1, Lcom/android/settings_ex/deviceinfo/Memory$8;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/deviceinfo/Memory$8;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/os/storage/IMountService;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 746
    return-void

    .line 722
    .end local v0           #mountService:Landroid/os/storage/IMountService;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b058a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private dynamicShowDefaultWriteCategory()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 999
    const-string v3, "MemorySettings"

    const-string v4, "dynamicShowDefaultWriteCategory"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1002
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1003
    .local v2, writePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1004
    .local v1, volumeState:Ljava/lang/String;
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " volume state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const-string v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1007
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    .line 1008
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1010
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aput-boolean v7, v3, v0

    .line 1001
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 1014
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 1015
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1017
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aput-boolean v6, v3, v0

    goto :goto_1

    .line 1022
    .end local v1           #volumeState:Ljava/lang/String;
    .end local v2           #writePath:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/os/storage/StorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    .line 1023
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get default path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 1025
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1026
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3, v7}, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 1027
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    .line 1024
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1029
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    goto :goto_3

    .line 1032
    :cond_4
    return-void
.end method

.method private dynamicUpdateUnmountDlg()V
    .locals 6

    .prologue
    .line 414
    const-string v3, "MemorySettings"

    const-string v4, "dynamicUpdateUnmountDlg"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 417
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, writePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, volumeState:Ljava/lang/String;
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " volume state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v3, "shared"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    const-string v3, "MemorySettings"

    const-string v4, "current status is UMS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 427
    .end local v1           #volumeState:Ljava/lang/String;
    .end local v2           #writePath:Ljava/lang/String;
    :goto_1
    return-void

    .line 416
    .restart local v1       #volumeState:Ljava/lang/String;
    .restart local v2       #writePath:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    .end local v1           #volumeState:Ljava/lang/String;
    .end local v2           #writePath:Ljava/lang/String;
    :cond_1
    const-string v3, "MemorySettings"

    const-string v4, "current status is MTP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1075
    .local v0, selectedLocation:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1076
    const-string v1, "device"

    .line 1083
    :goto_0
    return-object v1

    .line 1077
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1078
    const-string v1, "sdcard"

    goto :goto_0

    .line 1079
    :cond_1
    if-nez v0, :cond_2

    .line 1080
    const-string v1, "auto"

    goto :goto_0

    .line 1083
    :cond_2
    const-string v1, "auto"

    goto :goto_0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 599
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 600
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 601
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 602
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 607
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 604
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 599
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 754
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 755
    .local v0, mountService:Landroid/os/storage/IMountService;
    sget-object v2, Lcom/android/settings_ex/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    .line 756
    .local v1, stUsers:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 770
    :cond_0
    return v3
.end method

.method private static isExSdcardInserted()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 462
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 463
    .local v2, service:Landroid/os/IBinder;
    const-string v4, "MemorySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Util:service is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-eqz v2, :cond_0

    .line 465
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 467
    .local v1, mountService:Landroid/os/storage/IMountService;
    const-string v4, "MemorySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Util:mountService is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    if-nez v1, :cond_1

    .line 478
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    return v3

    .line 472
    .restart local v1       #mountService:Landroid/os/storage/IMountService;
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/os/storage/IMountService;->isSDExist()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MemorySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Util:RemoteException when isSDExist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMassStorageEnabled()Z
    .locals 3

    .prologue
    .line 376
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 377
    .local v1, volumes:[Landroid/os/storage/StorageVolume;
    invoke-static {v1}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 378
    .local v0, primary:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPkgInstalled(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 1036
    if-eqz p1, :cond_0

    .line 1037
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1039
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    const/4 v2, 0x1

    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 1040
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 1041
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1045
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    const-string v3, "MemorySettings"

    const-string v4, "the package name cannot be null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private manuleSwitch(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 894
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 895
    .local v0, mountService:Landroid/os/storage/IMountService;
    iput-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mManulSwaping:Z

    .line 896
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 897
    const-string v1, "MemorySettings"

    const-string v2, "mProgressDialog is not null!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 899
    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 901
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b097e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 903
    new-instance v1, Lcom/android/settings_ex/deviceinfo/Memory$10;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings_ex/deviceinfo/Memory$10;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/os/storage/IMountService;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 934
    return-void
.end method

.method private mount()V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->doMount()V

    .line 803
    return-void
.end method

.method private onCacheCleared()V
    .locals 3

    .prologue
    .line 827
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 828
    .local v0, category:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onCacheCleared()V

    goto :goto_0

    .line 830
    .end local v0           #category:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 749
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 750
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 751
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 776
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/Memory;->showDialogInner(I)V

    .line 787
    :goto_0
    return-void

    .line 780
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 784
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method


# virtual methods
.method public dynamicShowAPKInstaller()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 488
    const/4 v0, 0x1

    .line 489
    .local v0, flag:Z
    const-string v6, "MemorySettings"

    const-string v7, "dynamicShowAPKInstaller"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 491
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, writePath:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, volumeState:Ljava/lang/String;
    const-string v6, "MemorySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " volume state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    if-eqz v0, :cond_0

    const-string v6, "mounted"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v4

    .line 490
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    .line 495
    goto :goto_1

    .line 498
    .end local v2           #volumeState:Ljava/lang/String;
    .end local v3           #writePath:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mApkInstallePref:Landroid/preference/Preference;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 499
    return-void

    :cond_2
    move v4, v5

    .line 498
    goto :goto_2
.end method

.method public dynamicShowInstallLocation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 433
    const-string v3, "MemorySettings"

    const-string v4, "dynamicShowInstallLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 436
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, writePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, volumeState:Ljava/lang/String;
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " volume state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v3, "shared"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 441
    const-string v3, "MemorySettings"

    const-string v4, "current status is UMS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 458
    .end local v1           #volumeState:Ljava/lang/String;
    .end local v2           #writePath:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 435
    .restart local v1       #volumeState:Ljava/lang/String;
    .restart local v2       #writePath:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    .end local v1           #volumeState:Ljava/lang/String;
    .end local v2           #writePath:Ljava/lang/String;
    :cond_2
    const-string v3, "MemorySettings"

    const-string v4, "current status is not UMS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 452
    invoke-static {}, Lcom/android/settings_ex/deviceinfo/Memory;->isExSdcardInserted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 453
    const-string v3, "MemorySettings"

    const-string v4, "2SDCARD_SWAP feature , the external sd card is not mounted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected handleUpdateAppInstallLocation(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 1053
    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1069
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1070
    return-void

    .line 1057
    :cond_0
    const-string v0, "sdcard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1058
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1061
    :cond_1
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1062
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1066
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "icicle"

    .prologue
    .line 229
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 233
    .local v2, context:Landroid/content/Context;
    const-string v16, "usb"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/usb/UsbManager;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 235
    invoke-static {v2}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 238
    const v16, 0x7f050010

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 240
    new-instance v16, Landroid/os/Handler;

    invoke-direct/range {v16 .. v16}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;

    .line 242
    const-string v16, "memory_select"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    .line 243
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v9

    .line 253
    .local v9, mPathList:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v14

    .line 258
    .local v14, volumes:[Landroid/os/storage/StorageVolume;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v10, mVolumePathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v11, storageVolumes:Ljava/util/List;,"Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    array-length v6, v9

    .line 262
    .local v6, len:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 263
    const-string v16, "MemorySettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Volume: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v14, v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ,state is: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v18, v0

    aget-object v19, v9, v4

    invoke-virtual/range {v18 .. v19}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ,emulated is: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v14, v4

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", path is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v14, v4

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v16, "not_present"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v17, v0

    aget-object v18, v9, v4

    invoke-virtual/range {v17 .. v18}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 267
    aget-object v16, v9, v4

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    aget-object v16, v14, v4

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 272
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    .line 273
    .local v7, length:I
    const-string v16, "MemorySettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "default path group length = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-array v0, v7, [Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    .line 276
    new-array v0, v7, [Z

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    .line 278
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v4, v0, :cond_2

    .line 279
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    .line 280
    .local v13, volume:Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    aput-object v17, v16, v4

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    move-object/from16 v16, v0

    aget-object v17, v16, v4

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    move-object/from16 v16, v0

    aget-object v17, v16, v4

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;->setPath(Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 288
    const-string v16, "MemorySettings"

    const-string v17, "share + swap, add emulated category"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-static {v2, v13}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/Memory;->addCategory(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 278
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 298
    .end local v13           #volume:Landroid/os/storage/StorageVolume;
    :cond_2
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 300
    const-string v16, "apk_installer"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/Memory;->mApkInstallePref:Landroid/preference/Preference;

    .line 301
    const-string v16, "com.mediatek.apkinstaller"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/Memory;->isPkgInstalled(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/deviceinfo/Memory;->mIsApkInstallerExist:Z

    .line 302
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mIsApkInstallerExist:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 303
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 304
    .local v5, intent:Landroid/content/Intent;
    const-string v16, "com.mediatek.apkinstaller"

    const-string v17, "com.mediatek.apkinstaller.APKInstaller"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const/high16 v16, 0x80

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mApkInstallePref:Landroid/preference/Preference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 313
    .end local v5           #intent:Landroid/content/Intent;
    :goto_2
    const-string v16, "app_install_location"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/ListPreference;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    .line 314
    const-string v15, ""

    .line 315
    .local v15, whereStr:Ljava/lang/String;
    const/4 v4, 0x0

    :goto_3
    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_3

    .line 316
    aget-object v16, v14, v4

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 318
    aget-object v16, v14, v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 322
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 323
    .local v3, entries:[Ljava/lang/CharSequence;
    const/16 v16, 0x1

    aput-object v15, v3, v16

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "set_install_location"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    if-eqz v16, :cond_6

    const/4 v12, 0x1

    .line 328
    .local v12, userSetInstLocation:Z
    :goto_4
    if-nez v12, :cond_7

    .line 329
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 344
    :goto_5
    new-instance v16, Lcom/android/settings_ex/deviceinfo/Memory$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/Memory$3;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/Memory;->mHandler:Landroid/os/Handler;

    .line 358
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 359
    .local v8, mFilter:Landroid/content/IntentFilter;
    const-string v16, "com.mediatek.SD_SWAP"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string v16, "switch_success"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v16, "switch_exception"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 366
    return-void

    .line 309
    .end local v3           #entries:[Ljava/lang/CharSequence;
    .end local v8           #mFilter:Landroid/content/IntentFilter;
    .end local v12           #userSetInstLocation:Z
    .end local v15           #whereStr:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mApkInstallePref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 315
    .restart local v15       #whereStr:Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 326
    .restart local v3       #entries:[Ljava/lang/CharSequence;
    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 331
    .restart local v12       #userSetInstLocation:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/settings_ex/deviceinfo/Memory$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/Memory$2;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x7f0b034c

    const v3, 0x7f0b0686

    const/4 v1, 0x0

    .line 674
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 714
    :goto_0
    return-object v0

    .line 676
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b000d

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings_ex/deviceinfo/Memory$6;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/deviceinfo/Memory$6;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0b000e

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0586

    goto :goto_1

    :cond_1
    const v0, 0x7f0b0587

    goto :goto_2

    .line 693
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0b000f

    :goto_3
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0b0010

    :goto_4
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0b0588

    goto :goto_3

    :cond_3
    const v0, 0x7f0b0589

    goto :goto_4

    .line 702
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0151

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings_ex/deviceinfo/Memory$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/deviceinfo/Memory$7;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0152

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 674
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 571
    const v0, 0x7f100003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 572
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 559
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 564
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 566
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 567
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 582
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 595
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 584
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0590

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 593
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 591
    :cond_0
    const-class v0, Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x7f080288
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 538
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 539
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 541
    const-string v2, "MemorySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause mManulSwaping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mManulSwaping:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mManulSwaping:Z

    if-eqz v2, :cond_1

    .line 543
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 544
    const-string v2, "MemorySettings"

    const-string v3, "onPause mProgressDialog dismiss"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 546
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 548
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mManulSwaping:Z

    .line 551
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 552
    .local v0, category:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    goto :goto_0

    .line 554
    .end local v0           #category:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x0

    .line 939
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    if-eqz v1, :cond_1

    .line 940
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 941
    move-object v0, p1

    .line 942
    .local v0, defPreference:Landroid/preference/Preference;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mSwapDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mSwapDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 943
    :cond_0
    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mSwapDialog:Landroid/app/Dialog;

    .line 944
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b097f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0686

    new-instance v3, Lcom/android/settings_ex/deviceinfo/Memory$12;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/deviceinfo/Memory$12;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/preference/Preference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b034c

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/deviceinfo/Memory$11;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/deviceinfo/Memory$11;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0980

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mSwapDialog:Landroid/app/Dialog;

    .line 984
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mSwapDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 985
    const/4 v1, 0x1

    .line 989
    .end local v0           #defPreference:Landroid/preference/Preference;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 613
    const-string v8, "cache"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 614
    invoke-static {p0}, Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Lcom/android/settings_ex/deviceinfo/Memory;)V

    .line 651
    :cond_0
    :goto_0
    return v6

    .line 618
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 619
    .local v0, category:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v3

    .line 621
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 623
    :try_start_0
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_0

    .line 624
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 628
    :catch_0
    move-exception v1

    .line 629
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b000c

    invoke-static {v8, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 633
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 634
    .local v5, volume:Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_2

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 635
    sput-object p2, Lcom/android/settings_ex/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    .line 636
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mIsRemovableVolume:Z

    .line 637
    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreferenceTreeClick, mIsRemovableVolume is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mIsRemovableVolume:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings_ex/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    .line 639
    sget-object v7, Lcom/android/settings_ex/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const-string v8, "/mnt/usbotg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mIsUnmountingUsb:Z

    .line 640
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 641
    .local v4, state:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 643
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->unmount()V

    goto/16 :goto_0

    .line 645
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->mount()V

    goto/16 :goto_0

    .end local v0           #category:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #state:Ljava/lang/String;
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :cond_6
    move v6, v7

    .line 651
    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 576
    const v1, 0x7f080288

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 577
    .local v0, usb:Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->isMassStorageEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 578
    return-void

    .line 577
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 383
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 384
    const-string v3, "MemorySettings"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 386
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 390
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 391
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->dynamicUpdateUnmountDlg()V

    .line 397
    const-string v3, "MemorySettings"

    const-string v4, "dynamicShowInstallLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->dynamicShowInstallLocation()V

    .line 401
    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mIsApkInstallerExist:Z

    if-eqz v3, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->dynamicShowAPKInstaller()V

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->dynamicShowDefaultWriteCategory()V

    .line 407
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 408
    .local v0, category:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    goto :goto_0

    .line 411
    .end local v0           #category:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    :cond_1
    return-void
.end method
