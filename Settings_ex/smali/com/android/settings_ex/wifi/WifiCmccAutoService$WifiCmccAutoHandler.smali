.class Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;
.super Landroid/os/Handler;
.source "WifiCmccAutoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiCmccAutoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiCmccAutoHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiCmccAutoService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    .line 569
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 570
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 573
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 575
    :pswitch_0
    const-string v0, "WifiCmccAutoService"

    const-string v1, "initialize cmccauto settings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettings:Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$800(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->isInsertedSIMChanged()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NONE"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mSettings:Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$800(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->getSelectedEapMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #calls: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->initCmccAutoSettings()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$900(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)V

    goto :goto_0

    .line 585
    :pswitch_1
    const-string v0, "WifiCmccAutoService"

    const-string v1, "network state changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    #calls: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->updateConnectionState(Landroid/net/NetworkInfo;)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$1000(Lcom/android/settings_ex/wifi/WifiCmccAutoService;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 589
    :pswitch_2
    const-string v0, "WifiCmccAutoService"

    const-string v1, "supplicant state changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;I)V
    invoke-static {v1, v0, v2}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$1100(Lcom/android/settings_ex/wifi/WifiCmccAutoService;Landroid/net/NetworkInfo$DetailedState;I)V

    goto :goto_0

    .line 593
    :pswitch_3
    const-string v0, "WifiCmccAutoService"

    const-string v1, "configured networks changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$WifiCmccAutoHandler;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #calls: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->filterAuthFailureEvent(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$1200(Lcom/android/settings_ex/wifi/WifiCmccAutoService;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 597
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
