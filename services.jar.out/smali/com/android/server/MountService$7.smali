.class Lcom/android/server/MountService$7;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$7;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1335
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v4}, Lcom/android/server/MountService;->isUsbMassStorageEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1337
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    iget-object v5, p0, Lcom/android/server/MountService$7;->val$path:Ljava/lang/String;

    const-string v6, "ums"

    const/4 v7, 0x1

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1340
    :cond_1
    const-string v4, "persist.sys.mainstorage"

    const-string v5, "null"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1342
    .local v2, palace:Ljava/lang/String;
    const-string v4, "external"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1344
    .local v0, bSwap:Z
    if-nez v0, :cond_2

    .line 1346
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/MountService;->mMountSwap:Z
    invoke-static {v4, v5}, Lcom/android/server/MountService;->access$3602(Lcom/android/server/MountService;Z)Z

    .line 1349
    :cond_2
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    iget-object v5, p0, Lcom/android/server/MountService$7;->val$path:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v3

    .local v3, rc:I
    if-eqz v3, :cond_3

    .line 1350
    const-string v4, "MountService"

    const-string v5, "Insertion mount failed (%d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_3
    if-eqz v0, :cond_0

    .line 1355
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updateSDExist()Z
    invoke-static {v4}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Z

    .line 1356
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v4}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)V

    .line 1357
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static {v4}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    .line 1358
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->sendSDSwapIntent()V
    invoke-static {v4}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1363
    .end local v0           #bSwap:Z
    .end local v2           #palace:Ljava/lang/String;
    .end local v3           #rc:I
    :catch_0
    move-exception v1

    .line 1364
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "MountService"

    const-string v5, "Failed to mount media on insertion"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
