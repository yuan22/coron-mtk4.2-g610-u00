.class public Lcom/android/settings_ex/wifi/WifiCmccAutoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiCmccAutoReceiver.java"


# static fields
.field static final TAG:Ljava/lang/String; = "WifiCmccAutoReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 40
    const-string v5, "WifiCmccAutoReceiver"

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->getWifiSettingsPlugin(Landroid/content/Context;)Lcom/android/settings_ex/ext/IWifiSettingsExt;

    move-result-object v2

    .line 42
    .local v2, settingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;
    invoke-interface {v2}, Lcom/android/settings_ex/ext/IWifiSettingsExt;->HasCmccAutoSepc()Z

    move-result v5

    if-nez v5, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, cmccAutoService:Landroid/content/Intent;
    const-string v5, "action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 49
    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 51
    .local v3, state:I
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 58
    :pswitch_1
    const-string v5, "WifiCmccAutoReceiver"

    const-string v6, "stop WifiCmccAutoService"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 53
    :pswitch_2
    const-string v5, "WifiCmccAutoReceiver"

    const-string v6, "start WifiCmccAutoService"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 62
    .end local v3           #state:I
    :cond_2
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    new-instance v1, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;

    invoke-direct {v1, p1}, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;-><init>(Landroid/content/Context;)V

    .line 64
    .local v1, settings:Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->SetSystemBootTime(J)V

    .line 65
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 66
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    const-string v5, "WifiCmccAutoReceiver"

    const-string v6, "start WifiCmccAutoService"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
