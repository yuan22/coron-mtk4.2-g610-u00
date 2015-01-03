.class public Lcom/android/settings_ex/wifi/WifiCmccAutoService;
.super Landroid/app/Service;
.source "WifiCmccAutoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;
    }
.end annotation


# static fields
.field private static final CMCC_AUTO:Ljava/lang/String; = "CMCC-AUTO"

.field private static final CONFIGURED_NETWORKS_CHANGED:I = 0x3

.field private static final EVENT_EXIT:I = 0x4

.field static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final INITIALIZE_CMCCAUTO_SETTINGS:I = 0x0

.field private static final NETWORK_STATE_CHANGED:I = 0x1

.field private static final SUPPLICANT_STATE_CHANGED:I = 0x2

.field static final TAG:Ljava/lang/String; = "WifiCmccAutoService"


# instance fields
.field private mCmccAutoConnecttingByPEAP:Z

.field private mCmccAutoConnecttingBySIM:Z

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;

.field private mInitialized:Z

.field private mLastNetworkId:I

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSettings:Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;

.field private mSettingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;

.field private mSystemBooted:Z

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mToast:Landroid/widget/Toast;

.field private mUiHandler:Landroid/os/Handler;

.field private mWifiConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 78
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mInitialized:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSystemBooted:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingBySIM:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingByPEAP:Z

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    new-instance v0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;-><init>(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 191
    new-instance v0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService$2;-><init>(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 566
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSystemBooted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mInitialized:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wifi/WifiCmccAutoService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->updateConnectionState(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/wifi/WifiCmccAutoService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mInitialized:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/wifi/WifiCmccAutoService;Landroid/net/NetworkInfo$DetailedState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/wifi/WifiCmccAutoService;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->filterAuthFailureEvent(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings_ex/wifi/WifiCmccAutoService;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Lcom/android/settings_ex/ext/IWifiSettingsExt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mHandler:Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/wifi/WifiCmccAutoService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiConfigurations:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/WifiCmccAutoService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->showTextToast(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettings:Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->initCmccAutoSettings()V

    return-void
.end method

.method private checkConnectionStateForPEAP(Landroid/net/NetworkInfo$DetailedState;Z)V
    .locals 3
    .parameter "state"
    .parameter "isCmccAuto"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingByPEAP:Z

    if-eqz v2, :cond_1

    .line 245
    const-string v0, "WifiCmccAutoService"

    const-string v2, "EAP-PEAP Connect Success"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingByPEAP:Z

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettings:Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->isEapMethodPEAP()Z

    move-result v2

    if-eqz v2, :cond_2

    move p2, v0

    .line 252
    :goto_1
    if-nez p2, :cond_3

    .line 253
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingByPEAP:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->failOverToSIM()V

    .line 255
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingByPEAP:Z

    goto :goto_0

    :cond_2
    move p2, v1

    .line 250
    goto :goto_1

    .line 261
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingByPEAP:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->isConnectingOrConnected(Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingByPEAP:Z

    goto :goto_0
.end method

.method private checkConnectionStateForSIM(Landroid/net/NetworkInfo$DetailedState;Z)V
    .locals 3
    .parameter "state"
    .parameter "isCmccAuto"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingBySIM:Z

    if-eqz v2, :cond_1

    .line 213
    const-string v0, "WifiCmccAutoService"

    const-string v2, "EAP-SIM Connect Success"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingBySIM:Z

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettings:Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->isEapMethodSIM()Z

    move-result v2

    if-eqz v2, :cond_2

    move p2, v0

    .line 220
    :goto_1
    if-nez p2, :cond_3

    .line 221
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingBySIM:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->failOvertoPEAP()V

    .line 223
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingBySIM:Z

    goto :goto_0

    :cond_2
    move p2, v1

    .line 218
    goto :goto_1

    .line 229
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingBySIM:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->isConnectingOrConnected(Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingBySIM:Z

    goto :goto_0
.end method

.method private failOverToSIM()V
    .locals 2

    .prologue
    .line 416
    const-string v0, "WifiCmccAutoService"

    const-string v1, "fail Over to SIM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const v0, 0x7f0b097d

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->showTextToast(I)V

    .line 420
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/ext/IWifiSettingsExt;->hasCmccCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->setCmccAutoSettingsBySIM()Ljava/lang/String;

    .line 423
    :cond_0
    return-void
.end method

.method private failOvertoPEAP()V
    .locals 2

    .prologue
    .line 405
    const-string v0, "WifiCmccAutoService"

    const-string v1, "fail Over to PEAP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->setCmccAutoSettingsByPEAP()V

    .line 408
    const v0, 0x7f0b097c

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->showTextToast(I)V

    .line 410
    return-void
.end method

.method private filterAuthFailureEvent(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .parameter "config"

    .prologue
    const/4 v5, 0x0

    .line 524
    if-eqz p1, :cond_2

    .line 525
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 526
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiConfigurations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 527
    .local v0, cfg:Landroid/net/wifi/WifiConfiguration;
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, v3, :cond_0

    .line 528
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 533
    .end local v0           #cfg:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v2, "WifiCmccAutoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filterAuthFailureEvent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/settings_ex/ext/IWifiSettingsExt;->isCmccAuto(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 540
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 541
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 542
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingBySIM:Z

    if-eqz v2, :cond_3

    .line 543
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->failOvertoPEAP()V

    .line 544
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingBySIM:Z

    .line 560
    :cond_2
    :goto_1
    return-void

    .line 545
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingByPEAP:Z

    if-eqz v2, :cond_2

    .line 546
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->failOverToSIM()V

    .line 547
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingByPEAP:Z

    goto :goto_1

    .line 550
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingBySIM:Z

    if-eqz v2, :cond_5

    .line 551
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingBySIM:Z

    goto :goto_1

    .line 552
    :cond_5
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingByPEAP:Z

    if-eqz v2, :cond_2

    .line 553
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mCmccAutoConnecttingByPEAP:Z

    goto :goto_1
.end method

.method private initCmccAutoSettings()V
    .locals 3

    .prologue
    .line 387
    const-string v1, "WifiCmccAutoService"

    const-string v2, "initCmccAutoSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;

    invoke-interface {v1, p0}, Lcom/android/settings_ex/ext/IWifiSettingsExt;->hasCmccCard(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->setCmccAutoSettingsByPEAP()V

    .line 391
    const v1, 0x7f0b097b

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->showTextToast(I)V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->setCmccAutoSettingsBySIM()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 395
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->showTextToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isConnectingOrConnected(Landroid/net/NetworkInfo$DetailedState;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 351
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p0, v0, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p0, v0, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p0, v0, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCmccAutoSettingsByPEAP()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 489
    const-string v3, "WifiCmccAutoService"

    const-string v4, "setCmccAutoSettingsByPEAP"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, cmccAuto:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiConfigurations:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 492
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiConfigurations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 493
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/settings_ex/ext/IWifiSettingsExt;->isCmccAuto(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    move-object v0, v1

    goto :goto_0

    .line 501
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz v0, :cond_2

    .line 502
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettings:Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;

    const-string v4, "PEAP"

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->setSelectedEapMethod(Ljava/lang/String;)V

    .line 503
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettings:Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->setSelectSimSlot(I)V

    .line 505
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v4, "PEAP"

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 506
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v4, "auth=MSCHAPV2"

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 507
    const-string v3, "none"

    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    .line 508
    const-string v3, "none"

    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->PCSC:Ljava/lang/String;

    .line 509
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SIMSLOT:Ljava/lang/String;

    .line 511
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 513
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v0, v4}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 515
    :cond_2
    return-void
.end method

.method private setCmccAutoSettingsBySIM()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 434
    const-string v6, "WifiCmccAutoService"

    const-string v7, "setCmccAutoSettingsBySIM"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, cmccAuto:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiConfigurations:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 437
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiConfigurations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 438
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    invoke-interface {v6, v7, v8}, Lcom/android/settings_ex/ext/IWifiSettingsExt;->isCmccAuto(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 441
    move-object v0, v2

    goto :goto_0

    .line 446
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz v0, :cond_2

    .line 447
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;

    invoke-interface {v6, p0}, Lcom/android/settings_ex/ext/IWifiSettingsExt;->getInsertedCmccSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 450
    .local v1, cmccSimInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/Telephony$SIMInfo;

    iget v5, v6, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 452
    .local v5, simSlot:I
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettings:Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;

    invoke-interface {v7, p0, v5}, Lcom/android/settings_ex/ext/IWifiSettingsExt;->getEapMethodbySIM(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->setSelectedEapMethod(Ljava/lang/String;)V

    .line 454
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettings:Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;

    invoke-virtual {v6, v5}, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->setSelectSimSlot(I)V

    .line 456
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;

    invoke-interface {v7, p0, v5}, Lcom/android/settings_ex/ext/IWifiSettingsExt;->getEapMethodbySIM(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 458
    const-string v6, "rild"

    invoke-static {v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->PCSC:Ljava/lang/String;

    .line 459
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v6, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings_ex/wifi/WifiConfigController;->makeNAI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    .line 462
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SIMSLOT:Ljava/lang/String;

    .line 465
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 467
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v0, v7}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 469
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v10, :cond_2

    .line 470
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b097a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/Telephony$SIMInfo;

    iget-object v6, v6, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 477
    .end local v1           #cmccSimInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    .end local v5           #simSlot:I
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private showTextToast(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 606
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->showTextToast(Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method private showTextToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 610
    const-string v0, "WifiCmccAutoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showTextToast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ex/wifi/WifiCmccAutoService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/wifi/WifiCmccAutoService$3;-><init>(Lcom/android/settings_ex/wifi/WifiCmccAutoService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 626
    return-void
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;I)V
    .locals 7
    .parameter "state"
    .parameter "networkId"

    .prologue
    const/4 v3, 0x0

    .line 310
    const/4 v2, 0x0

    .line 311
    .local v2, isCmccAuto:Z
    const-string v4, "WifiCmccAutoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectionState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 342
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiConfigurations:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 318
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiConfigurations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 319
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p2, v4, :cond_1

    .line 320
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/android/settings_ex/ext/IWifiSettingsExt;->isCmccAuto(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 323
    const/4 v2, 0x1

    .line 330
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    if-nez v2, :cond_4

    .line 331
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 332
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 340
    :cond_3
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->checkConnectionStateForSIM(Landroid/net/NetworkInfo$DetailedState;Z)V

    .line 341
    invoke-direct {p0, p1, v2}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->checkConnectionStateForPEAP(Landroid/net/NetworkInfo$DetailedState;Z)V

    goto :goto_0

    .line 335
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, p1, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 336
    iput p2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mLastNetworkId:I

    .line 337
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_1
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo;)V
    .locals 7
    .parameter "networkInfo"

    .prologue
    const/4 v3, 0x0

    .line 273
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 274
    .local v2, state:Landroid/net/NetworkInfo$DetailedState;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, ssid:Ljava/lang/String;
    const-string v4, "WifiCmccAutoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectionState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "<unknown ssid>"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "0x"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const-string v4, "CMCC-AUTO"

    invoke-static {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 288
    .local v0, isCmccAuto:Z
    if-nez v0, :cond_3

    .line 289
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 290
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 298
    :cond_2
    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->checkConnectionStateForSIM(Landroid/net/NetworkInfo$DetailedState;Z)V

    .line 299
    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->checkConnectionStateForPEAP(Landroid/net/NetworkInfo$DetailedState;Z)V

    goto :goto_0

    .line 293
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    if-ne v5, v6, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 295
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 105
    const-string v1, "WifiCmccAutoService"

    const-string v2, "OnCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    new-instance v1, Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;-><init>(Lcom/android/settings_ex/wifi/WifiCmccAutoService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mHandler:Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;

    .line 110
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 111
    new-instance v1, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettings:Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;

    .line 112
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getWifiSettingsPlugin(Landroid/content/Context;)Lcom/android/settings_ex/ext/IWifiSettingsExt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;

    .line 113
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiConfigurations:Ljava/util/List;

    .line 114
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 116
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mUiHandler:Landroid/os/Handler;

    .line 118
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mFilter:Landroid/content/IntentFilter;

    .line 119
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 125
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "WifiCmccAutoService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mHandler:Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 133
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x1

    .line 361
    if-eqz p1, :cond_2

    .line 362
    const-string v3, "action"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettings:Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;

    if-eqz v3, :cond_0

    .line 365
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettings:Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->GetSystemBootTime()J

    move-result-wide v1

    .line 366
    .local v1, bootTime:J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    .line 367
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSystemBooted:Z

    .line 374
    .end local v1           #bootTime:J
    :cond_0
    :goto_0
    const-string v3, "WifiCmccAutoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCommand "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSystemBooted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    .line 378
    .end local v0           #action:Ljava/lang/String;
    :goto_1
    return v3

    .line 370
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSystemBooted:Z

    goto :goto_0

    .line 378
    .end local v0           #action:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    goto :goto_1
.end method
