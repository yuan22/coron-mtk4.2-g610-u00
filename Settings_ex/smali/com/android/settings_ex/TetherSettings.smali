.class public Lcom/android/settings_ex/TetherSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_TETHERING:I = 0x2

.field private static final DIALOG_AP_SETTINGS:I = 0x1

.field private static final DIALOG_TETHER_HELP:I = 0x2

.field private static final ENABLE_BLUETOOTH_TETHERING:Ljava/lang/String; = "enable_bluetooth_tethering"

.field private static final HELP_PATH:Ljava/lang/String; = "html/%y%z/tethering_help.html"

.field private static final HELP_URL:Ljava/lang/String; = "file:///android_asset/html/%y%z/tethering_%xhelp.html"

.field private static final INVALID:I = -0x1

.field private static final PROVISION_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TetherSettings"

.field private static final TETHERED_IPV6:Ljava/lang/String; = "tethered_ipv6"

.field private static final TETHERING_HELP:Ljava/lang/String; = "tethering_help"

.field private static final TETHER_APN_SETTING:Ljava/lang/String; = "tether_apn_settings"

.field private static final USB_DATA_STATE:Ljava/lang/String; = "mediatek.intent.action.USB_DATA_STATE"

.field private static final USB_HELP_MODIFIER:Ljava/lang/String; = "usb_"

.field private static final USB_TETHERING:I = 0x1

.field private static final USB_TETHERING_TYPE:Ljava/lang/String; = "usb_tethering_type"

.field private static final USB_TETHER_SETTINGS:Ljava/lang/String; = "usb_tether_settings"

.field private static final WIFI_HELP_MODIFIER:Ljava/lang/String; = "wifi_"

.field private static final WIFI_SWITCH_SETTINGS:Ljava/lang/String; = "wifi_tether_settings"


# instance fields
.field private mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothDun;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/CheckBoxPreference;

.field private mBtErrorIpv4:I

.field private mBtErrorIpv6:I

.field mExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

.field private mIsPcKnowMe:Z

.field private mMassStorageActive:Z

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherApnSetting:Landroid/preference/Preference;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherHelp:Landroid/preference/PreferenceScreen;

.field private mTetherIpv6:Landroid/preference/ListPreference;

.field private mUsbConfigured:Z

.field private mUsbConnected:Z

.field private mUsbHwDisconnected:Z

.field private mUsbInternetSharing:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mUsbTetherCheckEnable:Z

.field private mUsbTetherDone:Z

.field private mUsbTetherFail:Z

.field private mUsbTetherType:Landroid/preference/ListPreference;

.field private mUsbTethering:Z

.field private mUsbUnTetherDone:Z

.field private mView:Landroid/webkit/WebView;

.field private mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

.field private mWifiRegexs:[Ljava/lang/String;

.field private mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    .line 120
    iput-boolean v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTethering:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherCheckEnable:Z

    .line 124
    iput-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mUsbUnTetherDone:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherDone:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherFail:Z

    .line 129
    iput-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mIsPcKnowMe:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbInternetSharing:Z

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mMountService:Landroid/os/storage/IMountService;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 280
    new-instance v0, Lcom/android/settings_ex/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/TetherSettings$1;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 340
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbUnTetherDone:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mIsPcKnowMe:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbUnTetherDone:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbInternetSharing:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateIpv6Preference()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherDone:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherDone:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherFail:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherFail:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConfigured:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConfigured:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbHwDisconnected:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbHwDisconnected:Z

    return p1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 1031
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 1032
    .local v4, iface:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 1033
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1038
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 1032
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1031
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 1038
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 1047
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 1048
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1049
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 1050
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mMountService:Landroid/os/storage/IMountService;

    .line 1055
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1052
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "TetherSettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1047
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isUMSEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1059
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mMountService:Landroid/os/storage/IMountService;

    if-nez v2, :cond_0

    .line 1060
    const-string v2, "TetherSettings"

    const-string v3, " mMountService is null, return"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :goto_0
    return v1

    .line 1064
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2}, Landroid/os/storage/IMountService;->isUsbMassStorageEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Util:RemoteException when isUsbMassStorageEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 925
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 928
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 930
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b05e5

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 934
    :goto_0
    return-void

    .line 933
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter "choice"

    .prologue
    const/4 v4, 0x0

    .line 852
    iput p1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 853
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 855
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    invoke-virtual {p0, v0, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 860
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 858
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 886
    iget v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    packed-switch v4, :pswitch_data_0

    .line 922
    :goto_0
    return-void

    .line 889
    :pswitch_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 890
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 891
    iput-boolean v6, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    .line 892
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 893
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0b02ea

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 894
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 896
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    .line 897
    .local v2, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    if-eqz v2, :cond_1

    .line 898
    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 901
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDun;

    .line 902
    .local v1, bluetoothDun:Landroid/bluetooth/BluetoothDun;
    if-eqz v1, :cond_2

    .line 903
    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothDun;->setBluetoothTethering(Z)V

    .line 905
    :cond_2
    const v4, 0x7f0b05e7

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 907
    .local v3, summary:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/TetherSettings;->mBtErrorIpv4:I

    iget v7, p0, Lcom/android/settings_ex/TetherSettings;->mBtErrorIpv6:I

    invoke-virtual {p0, v6, v7}, Lcom/android/settings_ex/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 916
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #bluetoothDun:Landroid/bluetooth/BluetoothDun;
    .end local v2           #bluetoothPan:Landroid/bluetooth/BluetoothPan;
    .end local v3           #summary:Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/android/settings_ex/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 886
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 23
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 702
    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 706
    .local v11, cm:Landroid/net/ConnectivityManager;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/TetherSettings;->mBtErrorIpv4:I

    .line 707
    const/16 v19, 0x10

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/TetherSettings;->mBtErrorIpv6:I

    .line 708
    move-object/from16 v4, p1

    .local v4, arr$:[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    move v13, v12

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .local v13, i$:I
    :goto_0
    if-ge v13, v14, :cond_3

    aget-object v17, v4, v13

    .line 709
    .local v17, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v5, arr$:[Ljava/lang/String;
    array-length v15, v5

    .local v15, len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    :goto_1
    if-ge v12, v15, :cond_2

    aget-object v16, v5, v12

    .line 710
    .local v16, regex:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    if-eqz v11, :cond_1

    .line 711
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/TetherSettings;->mBtErrorIpv4:I

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 712
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v19

    and-int/lit8 v19, v19, 0xf

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/TetherSettings;->mBtErrorIpv4:I

    .line 714
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/TetherSettings;->mBtErrorIpv6:I

    move/from16 v19, v0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 715
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/TetherSettings;->mBtErrorIpv6:I

    .line 709
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 708
    .end local v16           #regex:Ljava/lang/String;
    :cond_2
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_0

    .line 723
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v15           #len$:I
    .end local v17           #s:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    .line 724
    .local v7, bluetoothErrored:Z
    move-object/from16 v4, p3

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v14, v4

    .restart local v14       #len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    move v13, v12

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .restart local v13       #i$:I
    :goto_2
    if-ge v13, v14, :cond_6

    aget-object v17, v4, v13

    .line 725
    .restart local v17       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v15, v5

    .restart local v15       #len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    :goto_3
    if-ge v12, v15, :cond_5

    aget-object v16, v5, v12

    .line 726
    .restart local v16       #regex:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 727
    const/4 v7, 0x1

    .line 725
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 724
    .end local v16           #regex:Ljava/lang/String;
    :cond_5
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_2

    .line 732
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v15           #len$:I
    .end local v17           #s:Ljava/lang/String;
    :cond_6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 733
    .local v3, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_7

    .line 798
    :goto_4
    return-void

    .line 736
    :cond_7
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v10

    .line 737
    .local v10, btState:I
    const-string v19, "TetherSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "btState = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/16 v19, 0xd

    move/from16 v0, v19

    if-ne v10, v0, :cond_8

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0b02eb

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4

    .line 741
    :cond_8
    const/16 v19, 0xb

    move/from16 v0, v19

    if-ne v10, v0, :cond_9

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0b02ea

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4

    .line 745
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothPan;

    .line 746
    .local v8, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDun;

    .line 747
    .local v6, bluetoothDun:Landroid/bluetooth/BluetoothDun;
    const/16 v19, 0xc

    move/from16 v0, v19

    if-ne v10, v0, :cond_11

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v19

    if-nez v19, :cond_b

    :cond_a
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDun;->isTetheringOn()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 750
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 752
    const/4 v9, 0x0

    .line 753
    .local v9, bluetoothTethered:I
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 754
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v9

    .line 755
    const-string v19, "TetherSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "bluetooth Tethered PAN devices = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDun;->isTetheringOn()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 758
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDun;->getConnectedDevices()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->size()I

    move-result v19

    add-int v9, v9, v19

    .line 759
    const-string v19, "TetherSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "bluetooth tethered total devices = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_d
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v9, v0, :cond_e

    .line 763
    const v19, 0x7f0b05e9

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 767
    .local v18, summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/TetherSettings;->mBtErrorIpv4:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/TetherSettings;->mBtErrorIpv6:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 771
    .end local v18           #summary:Ljava/lang/String;
    :cond_e
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_f

    .line 773
    const v19, 0x7f0b05e8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 775
    .restart local v18       #summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/TetherSettings;->mBtErrorIpv4:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/TetherSettings;->mBtErrorIpv6:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 780
    .end local v18           #summary:Ljava/lang/String;
    :cond_f
    if-eqz v7, :cond_10

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0b05eb

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_4

    .line 784
    :cond_10
    const v19, 0x7f0b05e7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 786
    .restart local v18       #summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/TetherSettings;->mBtErrorIpv4:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/TetherSettings;->mBtErrorIpv6:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 793
    .end local v9           #bluetoothTethered:I
    .end local v18           #summary:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0b05ea

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_4
.end method

.method private updateIpv6Preference()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 245
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 246
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 249
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 251
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheringIpv6Enable()Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v3

    .line 253
    .local v1, ipv6Value:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 254
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 258
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #ipv6Value:I
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 246
    goto :goto_0

    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    :cond_2
    move v1, v4

    .line 252
    goto :goto_1
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 503
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 506
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings_ex/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 515
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbInternetSharing:Z

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 517
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 518
    const-string v0, "TetherSettings"

    const-string v1, "usb internet is connected, return"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :goto_0
    return-void

    .line 522
    :cond_0
    const-string v0, "TetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=======> updateState - mUsbConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbConfigured:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbHwDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mUsbHwDisconnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbUnTetherDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mUsbUnTetherDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbTetherDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tetherfail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherFail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsPcKnowMe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mIsPcKnowMe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 531
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConfigured:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbHwDisconnected:Z

    if-nez v0, :cond_3

    .line 532
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherFail:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherDone:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mIsPcKnowMe:Z

    if-nez v0, :cond_2

    .line 533
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherCheckEnable:Z

    .line 548
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 549
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 552
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateIpv6Preference()V

    goto/16 :goto_0

    .line 536
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherCheckEnable:Z

    goto :goto_1

    .line 539
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbHwDisconnected:Z

    if-nez v0, :cond_6

    .line 540
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbUnTetherDone:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherFail:Z

    if-eqz v0, :cond_2

    .line 541
    :cond_5
    iput-boolean v4, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherCheckEnable:Z

    goto :goto_1

    .line 544
    :cond_6
    iput-boolean v3, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherCheckEnable:Z

    goto :goto_1
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 559
    const-string v18, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 561
    .local v4, cm:Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    const/4 v12, 0x1

    .line 563
    .local v12, usbAvailable:Z
    :goto_0
    const/4 v13, 0x0

    .line 568
    .local v13, usbError:I
    const/4 v14, 0x0

    .line 569
    .local v14, usbErrorIpv4:I
    const/16 v15, 0x10

    .line 572
    .local v15, usbErrorIpv6:I
    move-object/from16 v2, p1

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v10, v2, v6

    .line 573
    .local v10, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_2
    if-ge v5, v8, :cond_3

    aget-object v9, v3, v5

    .line 574
    .local v9, regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    if-eqz v4, :cond_1

    .line 577
    if-nez v14, :cond_0

    .line 578
    invoke-virtual {v4, v10}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v18

    and-int/lit8 v14, v18, 0xf

    .line 580
    :cond_0
    const/16 v18, 0x10

    move/from16 v0, v18

    if-ne v15, v0, :cond_1

    .line 581
    invoke-virtual {v4, v10}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v15, v0, 0xf0

    .line 573
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 561
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v8           #len$:I
    .end local v9           #regex:Ljava/lang/String;
    .end local v10           #s:Ljava/lang/String;
    .end local v12           #usbAvailable:Z
    .end local v13           #usbError:I
    .end local v14           #usbErrorIpv4:I
    .end local v15           #usbErrorIpv6:I
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 572
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v8       #len$:I
    .restart local v10       #s:Ljava/lang/String;
    .restart local v12       #usbAvailable:Z
    .restart local v13       #usbError:I
    .restart local v14       #usbErrorIpv4:I
    .restart local v15       #usbErrorIpv6:I
    :cond_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_1

    .line 593
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v10           #s:Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    .line 594
    .local v17, usbTethered:Z
    move-object/from16 v2, p2

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .restart local v6       #i$:I
    :goto_3
    if-ge v6, v7, :cond_7

    aget-object v10, v2, v6

    .line 595
    .restart local v10       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v8, v3

    .restart local v8       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_4
    if-ge v5, v8, :cond_6

    aget-object v9, v3, v5

    .line 596
    .restart local v9       #regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 597
    const/16 v17, 0x1

    .line 599
    if-eqz v4, :cond_5

    .line 600
    const/16 v18, 0x10

    move/from16 v0, v18

    if-ne v15, v0, :cond_5

    .line 601
    invoke-virtual {v4, v10}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v15, v0, 0xf0

    .line 595
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 594
    .end local v9           #regex:Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_3

    .line 609
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v10           #s:Ljava/lang/String;
    :cond_7
    const/16 v16, 0x0

    .line 610
    .local v16, usbErrored:Z
    move-object/from16 v2, p3

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .restart local v6       #i$:I
    :goto_5
    if-ge v6, v7, :cond_a

    aget-object v10, v2, v6

    .line 611
    .restart local v10       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v8, v3

    .restart local v8       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_6
    if-ge v5, v8, :cond_9

    aget-object v9, v3, v5

    .line 612
    .restart local v9       #regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 613
    const/16 v16, 0x1

    .line 611
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 610
    .end local v9           #regex:Ljava/lang/String;
    :cond_9
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_5

    .line 618
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v10           #s:Ljava/lang/String;
    :cond_a
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState - usbTethered : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " usbErrored: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " usbAvailable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    if-eqz v17, :cond_b

    .line 622
    const-string v18, "TetherSettings"

    const-string v19, "updateUsbState: usbTethered ! mUsbTether checkbox setEnabled & checked "

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 626
    const v18, 0x7f0b05e2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 628
    .local v11, summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings_ex/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 632
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/TetherSettings;->mUsbTethering:Z

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 634
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState - usbTethered - mUsbTetherCheckEnable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherCheckEnable:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    .end local v11           #summary:Ljava/lang/String;
    :goto_7
    return-void

    .line 637
    :cond_b
    if-eqz v12, :cond_f

    .line 640
    if-eqz v14, :cond_c

    const/16 v18, 0x10

    move/from16 v0, v18

    if-ne v14, v0, :cond_e

    .line 642
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b05e1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 654
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherCheckEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 655
    const-string v18, "TetherSettings"

    const-string v19, "updateUsbState - mUsbTetherCheckEnable, mUsbTether checkbox setEnabled, and set unchecked "

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 660
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/TetherSettings;->mUsbTethering:Z

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 663
    :cond_d
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState - usbAvailable - mUsbConfigured:  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbConfigured:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mUsbTethering: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTethering:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mUsbTetherCheckEnable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherCheckEnable:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 644
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b05e5

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_8

    .line 666
    :cond_f
    if-eqz v16, :cond_10

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b05e5

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 671
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/TetherSettings;->mUsbTethering:Z

    goto/16 :goto_7

    .line 672
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b05e3

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 677
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/TetherSettings;->mUsbTethering:Z

    goto/16 :goto_7

    .line 679
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbHwDisconnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbHwDisconnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbConfigured:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    .line 680
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b05e4

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 683
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/TetherSettings;->mUsbTethering:Z

    .line 695
    :goto_9
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState- usbAvailable- mUsbHwDisconnected:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbHwDisconnected:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 686
    :cond_13
    const-string v18, "TetherSettings"

    const-string v19, "updateUsbState - else, mUsbTether checkbox setEnabled, and set unchecked "

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b05e1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 691
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/TetherSettings;->mUsbTethering:Z

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_9
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 1043
    const v0, 0x7f0b094f

    return v0
.end method

.method public getIPV6String(II)Ljava/lang/String;
    .locals 5
    .parameter "errorIpv4"
    .parameter "errorIpv6"

    .prologue
    const/16 v4, 0x20

    .line 803
    const-string v0, ""

    .line 804
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    const-string v1, "1"

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    const-string v1, "TetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[errorIpv4 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "];"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[errorIpv6 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "];"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    if-nez p1, :cond_1

    if-ne p2, v4, :cond_1

    .line 808
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 815
    :cond_0
    :goto_0
    return-object v0

    .line 809
    :cond_1
    if-nez p1, :cond_2

    .line 810
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 811
    :cond_2
    if-ne p2, v4, :cond_0

    .line 812
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 845
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 848
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 863
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 864
    if-nez p1, :cond_0

    .line 865
    if-ne p2, v1, :cond_1

    .line 866
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->startTethering()V

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 880
    :goto_1
    iput v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 872
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 875
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 870
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 153
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const v8, 0x7f05003f

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 157
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings_ex/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/android/settings_ex/ext/ISettingsMiscExt;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

    .line 159
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 160
    .local v0, activity:Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 161
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v12, 0x5

    invoke-virtual {v1, v8, v11, v12}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 166
    :cond_0
    const-string v8, "wifi_tether_settings"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    .line 167
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v8, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 171
    const-string v8, "tethering_help"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    .line 173
    const-string v8, "usb_tether_settings"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 174
    const-string v8, "enable_bluetooth_tethering"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    .line 176
    const-string v8, "tether_apn_settings"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mTetherApnSetting:Landroid/preference/Preference;

    .line 177
    const-string v8, "tethered_ipv6"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    .line 178
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 182
    .local v3, cm:Landroid/net/ConnectivityManager;
    const-string v8, "usb_tethering_type"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    .line 184
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 189
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 190
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 192
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_4

    move v6, v9

    .line 193
    .local v6, usbAvailable:Z
    :goto_0
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_5

    move v7, v9

    .line 194
    .local v7, wifiAvailable:Z
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_6

    move v2, v9

    .line 196
    .local v2, bluetoothAvailable:Z
    :goto_2
    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 197
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    :cond_2
    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_7

    .line 202
    new-instance v8, Lcom/android/settings_ex/wifi/WifiApEnabler;

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-direct {v8, v0, v11}, Lcom/android/settings_ex/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;)V

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    .line 203
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v8, p0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setTetherSettings(Lcom/android/settings_ex/TetherSettings;)V

    .line 208
    :goto_3
    if-nez v2, :cond_8

    .line 209
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    :goto_4
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mTetherApnSetting:Landroid/preference/Preference;

    invoke-interface {v8, v9, v10}, Lcom/android/settings_ex/ext/ISettingsMiscExt;->removeTetherApnSettings(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    .line 224
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 227
    new-instance v8, Landroid/webkit/WebView;

    invoke-direct {v8, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    .line 231
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    if-eqz v8, :cond_3

    .line 232
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 237
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->getMountService()Landroid/os/storage/IMountService;

    .line 239
    return-void

    .end local v2           #bluetoothAvailable:Z
    .end local v6           #usbAvailable:Z
    .end local v7           #wifiAvailable:Z
    :cond_4
    move v6, v10

    .line 192
    goto :goto_0

    .restart local v6       #usbAvailable:Z
    :cond_5
    move v7, v10

    .line 193
    goto :goto_1

    .restart local v7       #wifiAvailable:Z
    :cond_6
    move v2, v10

    .line 194
    goto :goto_2

    .line 205
    .restart local v2       #bluetoothAvailable:Z
    :cond_7
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 211
    :cond_8
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothPan;

    .line 212
    .local v5, pan:Landroid/bluetooth/BluetoothPan;
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDun;

    .line 213
    .local v4, dun:Landroid/bluetooth/BluetoothDun;
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v8

    if-nez v8, :cond_a

    :cond_9
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDun;->isTetheringOn()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 215
    :cond_a
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_4

    .line 217
    :cond_b
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const/16 v11, 0x5f

    .line 293
    const/4 v8, 0x2

    if-ne p1, v8, :cond_6

    .line 294
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 297
    .local v3, locale:Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 298
    .local v0, am:Landroid/content/res/AssetManager;
    const-string v8, "html/%y%z/tethering_help.html"

    const-string v9, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, path:Ljava/lang/String;
    const-string v8, "%z"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 300
    const/4 v7, 0x1

    .line 301
    .local v7, useCountry:Z
    const/4 v2, 0x0

    .line 303
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 307
    if-eqz v2, :cond_0

    .line 309
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 313
    :cond_0
    :goto_0
    const-string v8, "file:///android_asset/html/%y%z/tethering_%xhelp.html"

    const-string v9, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 314
    .local v6, url:Ljava/lang/String;
    const-string v9, "%z"

    if-eqz v7, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 315
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-nez v8, :cond_4

    .line 316
    const-string v8, "%x"

    const-string v9, "usb_"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 325
    :goto_2
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v8, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 327
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 328
    .local v4, parent:Landroid/view/ViewParent;
    if-eqz v4, :cond_1

    instance-of v8, v4, Landroid/view/ViewGroup;

    if-eqz v8, :cond_1

    .line 329
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #parent:Landroid/view/ViewParent;
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 331
    :cond_1
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0b05ee

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 337
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #locale:Ljava/util/Locale;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    .end local v7           #useCountry:Z
    :goto_3
    return-object v8

    .line 304
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #locale:Ljava/util/Locale;
    .restart local v5       #path:Ljava/lang/String;
    .restart local v7       #useCountry:Z
    :catch_0
    move-exception v1

    .line 305
    .local v1, ignored:Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 307
    if-eqz v2, :cond_0

    .line 309
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 310
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .line 307
    .end local v1           #ignored:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_2

    .line 309
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 310
    :cond_2
    :goto_4
    throw v8

    .line 314
    .restart local v6       #url:Ljava/lang/String;
    :cond_3
    const-string v8, ""

    goto :goto_1

    .line 317
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-nez v8, :cond_5

    .line 318
    const-string v8, "%x"

    const-string v9, "wifi_"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 322
    :cond_5
    const-string v8, "%x"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 337
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #locale:Ljava/util/Locale;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    .end local v7           #useCountry:Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 310
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #locale:Ljava/util/Locale;
    .restart local v5       #path:Ljava/lang/String;
    .restart local v7       #useCountry:Z
    :catch_2
    move-exception v8

    goto/16 :goto_0

    :catch_3
    move-exception v9

    goto :goto_4
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->pause()V

    .line 278
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 819
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 820
    .local v3, key:Ljava/lang/String;
    const-string v4, "TetherSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string v4, "tethered_ipv6"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 823
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 825
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 826
    .local v2, ipv6Value:I
    if-eqz v0, :cond_0

    .line 827
    if-ne v2, v5, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setTetheringIpv6Enable(Z)V

    .line 829
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 830
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070088

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 841
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #ipv6Value:I
    .end local p2
    :cond_1
    :goto_1
    return v5

    .line 827
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v2       #ipv6Value:I
    .restart local p2
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 833
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #ipv6Value:I
    :cond_3
    const-string v4, "usb_tethering_type"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 834
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 835
    .local v1, index:I
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "usb_tethering_type"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 836
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07008a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 839
    const-string v4, "TetherSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange USB_TETHERING_TYPE value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 938
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 941
    .local v4, cm:Landroid/net/ConnectivityManager;
    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_4

    .line 942
    iget-boolean v10, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTethering:Z

    if-nez v10, :cond_1

    .line 943
    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    .line 946
    .local v7, newState:Z
    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 947
    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 948
    iput-boolean v9, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTethering:Z

    .line 949
    iput-boolean v11, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherCheckEnable:Z

    .line 950
    if-eqz v7, :cond_2

    .line 951
    iput-boolean v11, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherDone:Z

    .line 955
    :goto_0
    iput-boolean v11, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherFail:Z

    .line 957
    const-string v10, "TetherSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPreferenceTreeClick - setusbTethering("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") mUsbTethering:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTethering:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    if-eqz v7, :cond_3

    .line 962
    invoke-direct {p0, v9}, Lcom/android/settings_ex/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 1027
    .end local v7           #newState:Z
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    :cond_1
    :goto_2
    return v9

    .line 953
    .restart local v7       #newState:Z
    :cond_2
    iput-boolean v11, p0, Lcom/android/settings_ex/TetherSettings;->mUsbUnTetherDone:Z

    goto :goto_0

    .line 964
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/settings_ex/TetherSettings;->setUsbTethering(Z)V

    goto :goto_1

    .line 969
    .end local v7           #newState:Z
    :cond_4
    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_a

    .line 970
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    .line 972
    .local v3, bluetoothTetherState:Z
    if-eqz v3, :cond_5

    .line 973
    invoke-direct {p0, v12}, Lcom/android/settings_ex/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 1002
    :goto_3
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateIpv6Preference()V

    goto :goto_1

    .line 975
    :cond_5
    const/4 v5, 0x0

    .line 977
    .local v5, errored:Z
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v8

    .line 978
    .local v8, tethered:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/settings_ex/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 979
    .local v1, bluetoothIface:Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-virtual {v4, v1}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_6

    .line 981
    const/4 v5, 0x1

    .line 984
    :cond_6
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    .line 985
    .local v2, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    if-eqz v2, :cond_7

    .line 986
    invoke-virtual {v2, v11}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 989
    :cond_7
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDun;

    .line 990
    .local v0, bluetoothDun:Landroid/bluetooth/BluetoothDun;
    if-eqz v0, :cond_8

    .line 991
    invoke-virtual {v0, v11}, Landroid/bluetooth/BluetoothDun;->setBluetoothTethering(Z)V

    .line 994
    :cond_8
    if-eqz v5, :cond_9

    .line 995
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0b05eb

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 997
    :cond_9
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0b05ea

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 1005
    .end local v0           #bluetoothDun:Landroid/bluetooth/BluetoothDun;
    .end local v1           #bluetoothIface:Ljava/lang/String;
    .end local v2           #bluetoothPan:Landroid/bluetooth/BluetoothPan;
    .end local v3           #bluetoothTetherState:Z
    .end local v5           #errored:Z
    .end local v8           #tethered:[Ljava/lang/String;
    :cond_a
    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mTetherApnSetting:Landroid/preference/Preference;

    if-ne p2, v10, :cond_b

    .line 1008
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1009
    .local v6, intent:Landroid/content/Intent;
    const-string v9, "com.android.phone"

    const-string v10, "com.mediatek.settings.MultipleSimActivity"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1011
    const-string v9, "TARGET_CLASS"

    const-string v10, "com.android.settings_ex.TetherApnSettings"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1012
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1022
    .end local v6           #intent:Landroid/content/Intent;
    :cond_b
    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    if-ne p2, v10, :cond_0

    .line 1023
    invoke-virtual {p0, v12}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 263
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiApEnabler;->resume()V

    .line 267
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 445
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 447
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 450
    .local v0, activity:Landroid/app/Activity;
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->isUMSEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    .line 451
    const-string v4, "TetherSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMassStorageActive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v4, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings_ex/TetherSettings;Lcom/android/settings_ex/TetherSettings$1;)V

    iput-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 453
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 454
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 456
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 457
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 460
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 461
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    const-string v4, "file"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 464
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 466
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 467
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 470
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 471
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v4, "mediatek.intent.action.USB_DATA_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 475
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 476
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string v4, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 481
    if-eqz v2, :cond_0

    .line 482
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 484
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    if-eqz v4, :cond_1

    .line 485
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 486
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb_tethering_type"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 488
    .local v3, value:I
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 489
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07008a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 492
    .end local v3           #value:I
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateState()V

    .line 493
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 497
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 498
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 500
    return-void
.end method
