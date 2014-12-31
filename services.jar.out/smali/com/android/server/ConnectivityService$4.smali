.class Lcom/android/server/ConnectivityService$4;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 4817
    iput-object p1, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4820
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4821
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4822
    iget-object v7, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 4824
    :try_start_0
    const-string v7, "receive screen on intent! and stop powersaving action!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 4826
    iget-object v7, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->cancelPowerSaving()V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;)V

    .line 4828
    monitor-exit v8

    .line 4873
    :cond_0
    :goto_0
    return-void

    .line 4828
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 4829
    :cond_1
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4830
    iget-object v7, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 4832
    :try_start_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "gprs_connection_setting"

    const/4 v11, -0x4

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    iput v9, v7, Lcom/android/server/ConnectivityService;->DATA_SLOT:I

    .line 4833
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive screen off intent! DATA_SLOT = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget v9, v9, Lcom/android/server/ConnectivityService;->DATA_SLOT:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 4835
    const/4 v3, 0x0

    .line 4837
    .local v3, isDataConnected:Z
    iget-object v7, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    .local v1, arr$:[Landroid/net/NetworkStateTracker;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v6, v1, v2

    .line 4838
    .local v6, nt:Landroid/net/NetworkStateTracker;
    if-nez v6, :cond_3

    .line 4837
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4841
    :cond_3
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 4842
    .local v5, netType:I
    iget-object v7, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v7, v7, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v7, v7, v5

    iget v7, v7, Landroid/net/NetworkConfig;->radio:I

    if-nez v7, :cond_2

    .line 4843
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4844
    const/4 v3, 0x1

    .line 4845
    const-string v7, "mobile data connected!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 4851
    .end local v5           #netType:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    :cond_4
    iget-object v7, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v7}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->getPowerSavingState()Z
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4852
    if-eqz v3, :cond_5

    sget-boolean v7, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-nez v7, :cond_5

    .line 4853
    const-string v7, "start powersaving action!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 4854
    iget-object v7, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->tryPowerSaving()V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;)V

    .line 4860
    :cond_5
    monitor-exit v8

    goto/16 :goto_0

    .end local v1           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v2           #i$:I
    .end local v3           #isDataConnected:Z
    .end local v4           #len$:I
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v7

    .line 4861
    :cond_6
    const-string v7, "android.telephony.turnoff_DC"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4862
    iget-object v7, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 4864
    :try_start_2
    const-string v7, "ConnectivityService"

    const-string v9, "turn off Data Connection!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 4868
    iget-object v7, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->turnoffDC()V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;)V

    .line 4871
    monitor-exit v8

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v7
.end method
