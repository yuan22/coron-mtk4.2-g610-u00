.class Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiCmccAutoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiCmccAutoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v11, -0x1

    .line 137
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSystemBooted:Z
    invoke-static {v7}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$000(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 143
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mInitialized:Z
    invoke-static {v7}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$100(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 144
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$200(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 146
    .local v5, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v5, :cond_0

    .line 147
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 148
    .local v4, result:Landroid/net/wifi/ScanResult;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$300(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Lcom/android/settings_ex/ext/IWifiSettingsExt;

    move-result-object v7

    iget-object v8, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v9

    invoke-interface {v7, v8, v9}, Lcom/android/settings_ex/ext/IWifiSettingsExt;->isCmccAuto(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 150
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mHandler:Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$400(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 151
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #setter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mInitialized:Z
    invoke-static {v7, v10}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$102(Lcom/android/settings_ex/wifi/WifiCmccAutoService;Z)Z

    goto :goto_0

    .line 157
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #result:Landroid/net/wifi/ScanResult;
    .end local v5           #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 159
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 162
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mHandler:Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$400(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mHandler:Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$400(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;

    move-result-object v8

    invoke-static {v8, v10, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 165
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 168
    const-string v7, "newState"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/SupplicantState;

    .line 170
    .local v6, state:Landroid/net/wifi/SupplicantState;
    const-string v7, "networkId"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 173
    .local v2, networkId:I
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$500(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_0

    .line 174
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mHandler:Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$400(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mHandler:Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$400(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v6}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    invoke-static {v8, v9, v2, v11, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 178
    .end local v2           #networkId:I
    .end local v6           #state:Landroid/net/wifi/SupplicantState;
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 180
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$200(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v8

    #setter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mWifiConfigurations:Ljava/util/List;
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$602(Lcom/android/settings_ex/wifi/WifiCmccAutoService;Ljava/util/List;)Ljava/util/List;

    .line 182
    const-string v7, "wifiConfiguration"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 185
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mHandler:Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$400(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$1;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mHandler:Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$400(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v8, v9, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
