.class final Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/Notifier$NotifierHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_SPEW:Z = false

.field private static final MSG_BROADCAST:I = 0x2

.field private static final MSG_USER_ACTIVITY:I = 0x1

.field private static final POWER_STATE_ASLEEP:I = 0x2

.field private static final POWER_STATE_AWAKE:I = 0x1

.field private static final POWER_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PowerManagerNotifier"

.field private static final TAG_P:Ljava/lang/String; = "PowerManager_performance_N"


# instance fields
.field private mActualPowerState:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBroadCastTask:Ljava/lang/Runnable;

.field private final mBroadcastQueue:[I

.field private mBroadcastStartTime:J

.field private mBroadcastedPowerState:I

.field private final mContext:Landroid/content/Context;

.field private final mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

.field private final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field private mLastGoToSleepReason:I

.field private final mLock:Ljava/lang/Object;

.field private mPendingGoToSleepBroadcast:Z

.field private mPendingWakeUpBroadcast:Z

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field private final mScreenOffIntent:Landroid/content/Intent;

.field private final mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

.field private mScreenOnBlockerAcquired:Z

.field private final mScreenOnIntent:Landroid/content/Intent;

.field private final mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mUserActivityPending:Z

.field private final mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/power/ScreenOnBlocker;Landroid/view/WindowManagerPolicy;)V
    .locals 3
    .parameter "looper"
    .parameter "context"
    .parameter "batteryStats"
    .parameter "suspendBlocker"
    .parameter "screenOnBlocker"
    .parameter "policy"

    .prologue
    const/high16 v2, 0x5000

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mBroadcastQueue:[I

    .line 261
    new-instance v0, Lcom/android/server/power/Notifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mBroadCastTask:Ljava/lang/Runnable;

    .line 534
    new-instance v0, Lcom/android/server/power/Notifier$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 550
    new-instance v0, Lcom/android/server/power/Notifier$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 599
    new-instance v0, Lcom/android/server/power/Notifier$4;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$4;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 108
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 109
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 110
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 111
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

    .line 112
    iput-object p6, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 114
    new-instance v0, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    return-void

    .line 94
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/power/Notifier;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/Notifier;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBroadcastQueue:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/Notifier;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->onWakeUpStartedInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/Notifier;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->onGoToSleepFinishedInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/Notifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/power/Notifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/power/Notifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/power/Notifier;)Lcom/android/server/power/ScreenOnBlocker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/power/Notifier;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/power/Notifier;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/Notifier;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendUserActivity()V

    return-void
.end method

.method private finishPendingBroadcastLocked()V
    .locals 2

    .prologue
    .line 440
    const-string v0, "PowerManagerNotifier"

    const-string v1, "finishPendingBroadcastLocked."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 445
    return-void
.end method

.method private static getBatteryStatsWakeLockMonitorType(I)I
    .locals 1
    .parameter "flags"

    .prologue
    .line 170
    const v0, 0xffff

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_0

    .line 175
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 173
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private onGoToSleepFinishedInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 379
    const-string v0, "PowerManagerNotifier"

    const-string v1, "onGoToSleepFinishedInternal"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_0
    iget v0, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-eq v0, v2, :cond_1

    .line 384
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 386
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 388
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->removeMessages(I)V

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 392
    :cond_1
    monitor-exit v1

    .line 393
    return-void

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onWakeUpStartedInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 311
    const-string v0, "PowerManagerNotifier"

    const-string v1, "onWakeUpStartedInternal"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_0
    iget v0, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-eq v0, v2, :cond_1

    .line 316
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 318
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    .line 320
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

    invoke-interface {v0}, Lcom/android/server/power/ScreenOnBlocker;->acquire()V

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 324
    :cond_1
    monitor-exit v1

    .line 325
    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendBroadCastLocked(Z)V
    .locals 7
    .parameter "on"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBroadcastQueue:[I

    aget v1, v1, v0

    if-eq v1, v5, :cond_0

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mBroadcastQueue:[I

    if-eqz p1, :cond_4

    move v1, v2

    :goto_1
    aput v1, v4, v0

    .line 240
    if-ne v0, v6, :cond_1

    .line 241
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mBroadcastQueue:[I

    if-eqz p1, :cond_5

    move v1, v2

    :goto_2
    aput v1, v4, v3

    .line 242
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBroadcastQueue:[I

    aput v5, v1, v2

    .line 243
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBroadcastQueue:[I

    aput v5, v1, v6

    .line 244
    const/4 v0, 0x0

    .line 247
    :cond_1
    if-ne v0, v2, :cond_2

    if-nez p1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBroadcastQueue:[I

    aput v5, v1, v3

    .line 249
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBroadcastQueue:[I

    aput v5, v1, v2

    .line 250
    const/4 v0, -0x1

    .line 256
    :cond_2
    if-ltz v0, :cond_3

    .line 257
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mBroadCastTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 259
    :cond_3
    return-void

    :cond_4
    move v1, v3

    .line 231
    goto :goto_1

    :cond_5
    move v1, v3

    .line 241
    goto :goto_2
.end method

.method private sendGoToSleepBroadcast(I)V
    .locals 10
    .parameter "reason"

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 564
    const-string v0, "PowerManagerNotifier"

    const-string v1, "Sending go to sleep broadcast."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v9, 0x2

    .line 568
    .local v9, why:I
    packed-switch p1, :pswitch_data_0

    .line 577
    :goto_0
    const/16 v0, 0xaa8

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 579
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, v9}, Landroid/view/WindowManagerPolicy;->screenTurnedOff(I)V

    .line 581
    const-string v0, "PowerManagerNotifier"

    const-string v1, "Sending go to sleep broadcast 1."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->goingToSleep()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :goto_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 597
    :goto_2
    return-void

    .line 570
    :pswitch_0
    const/4 v9, 0x1

    .line 571
    goto :goto_0

    .line 573
    :pswitch_1
    const/4 v9, 0x3

    goto :goto_0

    .line 594
    :cond_0
    const/16 v0, 0xaa7

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 595
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_2

    .line 586
    :catch_0
    move-exception v0

    goto :goto_1

    .line 568
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendNextBroadcast()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 461
    const-string v2, "PowerManagerNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNextBroadcast, mBroadcastedPowerState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mActualPowerState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 463
    :try_start_0
    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    if-nez v2, :cond_1

    .line 465
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 466
    iget v2, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-ne v2, v5, :cond_0

    .line 467
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    .line 493
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 494
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    .line 495
    .local v1, powerState:I
    iget v0, p0, Lcom/android/server/power/Notifier;->mLastGoToSleepReason:I

    .line 496
    .local v0, goToSleepReason:I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    const/16 v2, 0xaa5

    invoke-static {v2, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 500
    if-ne v1, v6, :cond_7

    .line 501
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    .line 505
    .end local v0           #goToSleepReason:I
    .end local v1           #powerState:I
    :goto_1
    return-void

    .line 469
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 471
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    if-ne v2, v6, :cond_4

    .line 473
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-ne v2, v5, :cond_3

    .line 475
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 476
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    goto :goto_0

    .line 478
    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 479
    monitor-exit v3

    goto :goto_1

    .line 483
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-ne v2, v6, :cond_6

    .line 485
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 486
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    goto :goto_0

    .line 488
    :cond_6
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 489
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 503
    .restart local v0       #goToSleepReason:I
    .restart local v1       #powerState:I
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast(I)V

    goto :goto_1
.end method

.method private sendUserActivity()V
    .locals 2

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v0, :cond_0

    .line 450
    monitor-exit v1

    .line 456
    :goto_0
    return-void

    .line 452
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 453
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->userActivity()V

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendWakeUpBroadcast()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 509
    const-string v0, "PowerManagerNotifier"

    const-string v1, "Sending wake up broadcast."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/16 v0, 0xaa8

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 514
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 516
    const-string v0, "PowerManagerNotifier"

    const-string v1, "Sending wake up broadcast 1."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->wakingUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 532
    :goto_1
    return-void

    .line 529
    :cond_0
    const/16 v0, 0xaa7

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 530
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_1

    .line 521
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePendingBroadcastLocked()V
    .locals 3

    .prologue
    .line 425
    iget v1, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    if-eq v1, v2, :cond_1

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 430
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 431
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 432
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 435
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public onGoToSleepFinished()V
    .locals 2

    .prologue
    .line 363
    const-string v0, "PowerManagerNotifier"

    const-string v1, "onGoToSleepFinished"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/power/Notifier;->sendBroadCastLocked(Z)V

    .line 368
    monitor-exit v1

    .line 370
    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onGoToSleepStarted(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 343
    const-string v0, "PowerManagerNotifier"

    const-string v1, "onGoToSleepStarted."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 347
    :try_start_0
    iput p1, p0, Lcom/android/server/power/Notifier;->mLastGoToSleepReason:I

    .line 348
    monitor-exit v1

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onScreenBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteScreenOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onScreenOn()V
    .locals 1

    .prologue
    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onUserActivity(II)V
    .locals 4
    .parameter "event"
    .parameter "uid"

    .prologue
    .line 401
    const-string v1, "PowerManagerNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserActivity: event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 411
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_0

    .line 412
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 413
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 414
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 415
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 417
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    monitor-exit v2

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 406
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onWakeLockAcquired(ILjava/lang/String;IILandroid/os/WorkSource;)V
    .locals 2
    .parameter "flags"
    .parameter "tag"
    .parameter "ownerUid"
    .parameter "ownerPid"
    .parameter "workSource"

    .prologue
    .line 135
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v0

    .line 136
    .local v0, monitorType:I
    if-eqz p5, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p5, p4, p2, v0}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V

    .line 144
    .end local v0           #monitorType:I
    :goto_0
    return-void

    .line 139
    .restart local v0       #monitorType:I
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p3, p4, p2, v0}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v0           #monitorType:I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onWakeLockReleased(ILjava/lang/String;IILandroid/os/WorkSource;)V
    .locals 2
    .parameter "flags"
    .parameter "tag"
    .parameter "ownerUid"
    .parameter "ownerPid"
    .parameter "workSource"

    .prologue
    .line 158
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v0

    .line 159
    .local v0, monitorType:I
    if-eqz p5, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p5, p4, p2, v0}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V

    .line 167
    .end local v0           #monitorType:I
    :goto_0
    return-void

    .line 162
    .restart local v0       #monitorType:I
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p3, p4, p2, v0}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v0           #monitorType:I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onWakeUpFinished()V
    .locals 2

    .prologue
    .line 334
    const-string v0, "PowerManagerNotifier"

    const-string v1, "onWakeUpFinished"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void
.end method

.method public onWakeUpStarted()V
    .locals 2

    .prologue
    .line 295
    const-string v0, "PowerManagerNotifier"

    const-string v1, "onWakeUpStarted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 299
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/power/Notifier;->sendBroadCastLocked(Z)V

    .line 300
    monitor-exit v1

    .line 302
    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
