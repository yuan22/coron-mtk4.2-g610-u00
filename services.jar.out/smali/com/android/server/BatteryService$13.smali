.class Lcom/android/server/BatteryService$13;
.super Landroid/os/UEventObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/server/BatteryService$13;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 821
    const-string v1, "1"

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 822
    .local v0, invalidCharger:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/BatteryService$13;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 823
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$13;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mInvalidCharger:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 824
    iget-object v1, p0, Lcom/android/server/BatteryService$13;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->mInvalidCharger:I
    invoke-static {v1, v0}, Lcom/android/server/BatteryService;->access$1202(Lcom/android/server/BatteryService;I)I

    .line 825
    iget-object v1, p0, Lcom/android/server/BatteryService$13;->this$0:Lcom/android/server/BatteryService;

    #calls: Lcom/android/server/BatteryService;->updateLocked()V
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)V

    .line 827
    :cond_0
    monitor-exit v2

    .line 828
    return-void

    .line 821
    .end local v0           #invalidCharger:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 827
    .restart local v0       #invalidCharger:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method