.class Lcom/android/server/wm/WindowManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 325
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 327
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    #getter for: Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;
    invoke-static {v8}, Lcom/android/server/wm/WindowManagerService;->access$000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/KeyguardDisableHandler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/server/wm/KeyguardDisableHandler;->sendEmptyMessage(I)Z

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    const-string v8, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 332
    const-string v8, "bootanim.finished"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, bootanimFinshed:Ljava/lang/String;
    const-string v8, "bootanim.loop"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, bootanimLoop:Ljava/lang/String;
    const-string v8, "sys.boot.reason"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, bootReason:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v8, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v4, 0x1

    .line 338
    .local v4, retFin:Z
    :goto_1
    if-eqz v3, :cond_4

    const-string v8, "1"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v5, 0x1

    .line 339
    .local v5, retLoop:Z
    :goto_2
    if-eqz v1, :cond_5

    const-string v8, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v6, 0x1

    .line 340
    .local v6, retRtc:Z
    :goto_3
    if-nez v6, :cond_2

    if-nez v4, :cond_2

    if-eqz v5, :cond_6

    :cond_2
    const/4 v7, 0x1

    .line 342
    .local v7, screenOn:Z
    :goto_4
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "retFin,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "retLoop,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "and screenOn"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_5
    if-eqz v7, :cond_7

    .line 347
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 350
    const-string v8, "service.bootanim.exit"

    const-string v9, "1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v8, "WindowManager"

    const-string v9, "set \'service.bootanim.exit\' = 1"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->isAlarmBoot()Z

    move-result v9

    #setter for: Lcom/android/server/wm/WindowManagerService;->mIsAlarmBooting:Z
    invoke-static {v8, v9}, Lcom/android/server/wm/WindowManagerService;->access$102(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 368
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    #getter for: Lcom/android/server/wm/WindowManagerService;->mIsAlarmBooting:Z
    invoke-static {v8}, Lcom/android/server/wm/WindowManagerService;->access$100(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 369
    const-string v8, "WindowManager"

    const-string v9, "Alarm boot is running"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    goto/16 :goto_0

    .line 337
    .end local v4           #retFin:Z
    .end local v5           #retLoop:Z
    .end local v6           #retRtc:Z
    .end local v7           #screenOn:Z
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 338
    .restart local v4       #retFin:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 339
    .restart local v5       #retLoop:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 340
    .restart local v6       #retRtc:Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 355
    .restart local v7       #screenOn:Z
    :cond_7
    const-string v8, "bootanim.finished"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    const-string v8, "bootanim.loop"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    if-eqz v2, :cond_9

    const-string v8, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v4, 0x1

    .line 359
    :goto_6
    if-eqz v3, :cond_a

    const-string v8, "1"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v5, 0x1

    .line 361
    :goto_7
    if-nez v4, :cond_8

    if-eqz v5, :cond_b

    :cond_8
    const/4 v7, 0x1

    .line 362
    :goto_8
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "retFin,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "retLoop,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "and screenOn"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 358
    :cond_9
    const/4 v4, 0x0

    goto :goto_6

    .line 359
    :cond_a
    const/4 v5, 0x0

    goto :goto_7

    .line 361
    :cond_b
    const/4 v7, 0x0

    goto :goto_8

    .line 372
    :cond_c
    const-string v8, "WindowManager"

    const-string v9, "Alarm boot is not running"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 377
    .end local v1           #bootReason:Ljava/lang/String;
    .end local v2           #bootanimFinshed:Ljava/lang/String;
    .end local v3           #bootanimLoop:Ljava/lang/String;
    .end local v4           #retFin:Z
    .end local v5           #retLoop:Z
    .end local v6           #retRtc:Z
    .end local v7           #screenOn:Z
    :cond_d
    const-string v8, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v8, v8, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-eqz v8, :cond_e

    .line 378
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v10, 0x24

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 382
    :cond_e
    const-string v8, "android.intent.action.normal.boot.done"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 384
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/wm/WindowManagerService;->mIsAlarmBooting:Z
    invoke-static {v8, v9}, Lcom/android/server/wm/WindowManagerService;->access$102(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 385
    const-string v8, "WindowManager"

    const-string v9, "Alarm boot is done"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 387
    :cond_f
    const-string v8, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 389
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/server/wm/WindowManagerService;->mHasReceiveIPO:Z

    goto/16 :goto_0

    .line 390
    :cond_10
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 391
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowManagerService;->mHasReceiveIPO:Z

    if-eqz v8, :cond_0

    .line 392
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x0

    iput v9, v8, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 393
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v9, v9, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v8, v9}, Landroid/view/WindowManagerPolicy;->setRotationLw(I)V

    .line 394
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Re-initialize the rotation value to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v10, v10, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/wm/WindowManagerService;->mHasReceiveIPO:Z

    goto/16 :goto_0
.end method
